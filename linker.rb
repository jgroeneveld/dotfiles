#!/usr/bin/env ruby


# create folders
system 'mkdir -p ~/.vim/_temp'
system 'mkdir -p ~/.vim/_backup'
system 'mkdir -p ~/.vim/bundle'

# get vundle if not there
unless File.exists?(File.expand_path('~/.vim/bundle/vundle'))
  puts "Cloning Vundle"
  system 'git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle'
end



class Linker
  def initialize(simulate=false)
    @replace_all = false
    @simulate = simulate
  end

  def link_all_files_in_dir(from, to, prefix='')
    files = Dir["#{from}/*"]

    files.each do |source_file|
      target_file_name = "#{prefix}#{File.basename(source_file)}"
      target_file = "#{to}/#{target_file_name}"

      link_file(source_file, target_file)
    end
  end

  def link_file(source_file, target_file)
    source_file = File.expand_path(source_file)
    target_file = File.expand_path(target_file)

    puts target_file
    if File.exist?(target_file) || File.symlink?(target_file)
      replace_file_with_symlink(source_file, target_file) if may_replace?(target_file)
    else
      symlink(source_file, target_file)
    end
  end

  def link_hash(source_target_hash)
    source_target_hash.each do |source_file, target_file|
      link_file(source_file, target_file)
    end
  end

  def may_replace?(file)
    return true if @replace_all

    print "overwrite #{file}? [ynaq] "
    case $stdin.gets.chomp
    when 'a'
      @replace_all = true
      true
    when 'y'
      true
    when 'q'
      exit
    else
      puts "skipping #{file}"
    end
  end

  private

  def replace_file_with_symlink(file, target)
    command = %Q{rm -rf "#{target}"}

    if @simulate
      puts command
    else
      system command
    end

    symlink(file, target)
  end

  def symlink(file, target)
    puts "linking #{file}"
    command = %Q{ln -s "#{file}" "#{target}"}

    if @simulate
      puts command
    else
      system command
    end
  end
end

linker = Linker.new(ENV['SIMULATE'])

linker.link_all_files_in_dir("home", "~", ".")

linker.link_hash({
  "vim/colors" => "~/.vim/colors/",
  "vim/UltiSnips" => "~/.vim/UltiSnips/",
  "vim/bundle.vim" => "~/.vim/bundle.vim",
  "vim/vimrc" => "~/.vimrc",
  "vim/gvimrc" => "~/.gvimrc"
})


puts "\n\nDone. Now execute :BundleInstall in vim"

