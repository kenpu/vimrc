all:
	@echo == make vimrc ==
	@echo == remove existing vimrc ==

~/.vim:
	mkdir -p ~/.vim/bundle

~/.vim/bundle/Vundle.vim: ~/.vim
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

install: ~/.vim/bundle/Vundle.vim
	cp ./vimrc ~/.vimrc
	cp -R ./vim/ ~/.vim
