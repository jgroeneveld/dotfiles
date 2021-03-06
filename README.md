dotfiles
========
my dotfiles

./linker.rb with ruby installed

everything in ./home will be linked as $HOME/.file
other links are defined at the bottom of linker.rb


# ctags
contains the ctags git hooks by tpope `http://stackoverflow.com/questions/16363460/set-up-a-default-directory-structure-on-git-init`
`git ctags` generates the tags
each repo should have hooks that update the ctags on commit, merge, checkout

# also install
## before vimbundleinstall

./other_files
brew
brew install zsh z fasd fzf # https://github.com/clvv/fasd (fuzzy commands)| https://github.com/junegunn/fzf (c-r)
brew install git-extras jq
brew install rbenv ruby-build
brew install go
  add /usr/local/bin/zsh to /etc/shells
  chsh -s /usr/local/bin/zsh

macvim with lua
  brew install macvim --with-cscope --with-lua

brew install ag

( https://github.com/rupa/z )

node / jsonlint

## after vimbundleinstall
~/.vim/bundle/ctrlp-cmatcher/install_linux.sh
~/.vim/bundle/YouCompleteMe/install.sh
~/.vim/bundle/vimproc (make) - for unite async
vim-go binaries

## whenever
brew install
  - tree
	- tmux
	- reattach-to-user-namespace
			( https://github.com/ChrisJohnsen/tmux-MacOSX-pasteboard )
  - brew install gnu-sed
  -   ( allows usage of gnu-sed via gsed -- replace all occurences of old-address in all html files:  gsed -i 's/old-address/new-address/g' *.html)

  - ngrok
  -   ( forward local ports  to the web, useful for webhook and api testing )
  - glances
  -   ( load / system monitoring https://github.com/nicolargo/glances )
go get
  - goimports
  - nsf/gocode
  - godef
  - jiq https://github.com/fiatjaf/jiq

brew install httpie (http cli - curl replacement)
	https://github.com/jakubroztocil/httpie/blob/master/README.rst

https://github.com/junegunn/fzf
  (C-r, kill -9 <TAB>, ssh **<TAB>)



# great stuff

http://www.apptivateapp.com/
launchRocket
dash
nvalt
alfred
moom
http://couleursapp.com/
Byword (markdown)
markdown quicklook: Markdown Run "brew cask install qlmarkdown"
https://yhatt.github.io/marp/ markdown presentations
Karabiner Elements for mapping Capslock to Escape
