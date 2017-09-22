#!/usr/bin/env bash

echo "Adding pre-commit check hook - it's going to run rubocop / coffeelint / eslint / stylelint / flow"
echo "You can edit this file here: ./.git/hooks/pre-commit"
echo "This is going to overwrite your file! Are you sure? (y/n)"
read answer

if [[ $answer != "y" ]]
then
  echo "Cancelling"
  exit
fi

cat > ./.git/hooks/pre-commit <<EOF
#!/usr/bin/env ruby
filenames = \`git diff --cached --name-only --diff-filter=ACM\`.split("\n")

[{
  filetype: '.rb',
  command: 'bundle exec rubocop -DR',
  dir: nil
}, {
  filetype: '.coffee',
  command: 'coffeelint -f .coffeelint.json',
  dir: nil
}, {
  filetype: 'client(.*)\.css',
  command: 'yarn run stylelint',
  dir: 'client'
}, {
  filetype: 'client(.*)\.js',
  command: 'yarn run eslint',
  dir: 'client'
}, {
  filetype: 'client(.*)\.js',
  command: 'yarn run flow',
  dir: 'client'
}].each do |o|
  files = filenames.select { |f| f.match("#{o[:filetype]}$") }
  next if !files || files.empty?

  command = "#{o[:command]} #{files.join(' ')}"

  if o[:dir]
    command = "cd #{o[:dir]}; #{command}; cd .."
  end

  result = system(command)

  unless result
    puts "Please fix offenses for #{o[:filetype]} files"
    puts command
  end
end
EOF

echo "Added"
