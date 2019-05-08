#!/bin/env zsh

read hwname
read type

mkdir $hwname
cd $hwname
if [[ "$type" == "latex" ]]; then
	sudo ln -sf ~/.vim/snippets/latex/.vimrc ./
	cp ~/.vim/snippets/latex/Notes.tex ./
fi
if [[ "$type" == "assembly" ]]; then
	sudo ln -sf ~/.vim/snippets/latex/.vimrc ./
	cp ~/.vim/snippets/latex/Notes.tex ./"KevinConyersHomework"$hwname".tex"
	mkdir ./code
	cd ./code
	sudo ln -sf ~/.vim/snippets/assembly/.vimrc ./
	touch main.asm
fi
