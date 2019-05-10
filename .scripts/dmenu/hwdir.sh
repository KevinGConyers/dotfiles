#!/bin/env zsh

ftype=$(echo -e "Notes\nDev\nHomework" | dmenu -i -b)

if [[ "$ftype" == "Homework" ]]; then
	class=$(ls /home/kevin/Documents/Classes | dmenu -i -b -p "Which Class?")
	cd /home/kevin/Documents/Classes/"$class"/homework
	number=$(ls | wc -l)
	mkdir -p ./"$number"
	cd ./"$number"
	ftype=$(ls /home/kevin/.vim/snippets/ | dmenu -i -b -p "Copy What template?")
	cp -r /home/kevin/dotfiles/.vim/snippets/"$ftype"/. ./
	if [[ $(echo -e "No\nYes" | dmenu -i -b -p "git?") == "Yes" ]]; then
		git init
	fi
fi

if [[ "$ftype" == "Notes" ]]; then
	class=$(ls /home/kevin/Documents/Classes | dmenu -i -b -p "Which Class?")
	cd /home/kevin/Documents/Classes/"$class"/notes
	date=$(date +%d_%m_%Y)
	mkdir ./"Notes from $date"
	cd ./"Notes from $date"
	cp -r /home/kevin/dotfiles/.vim/snippets/latex/. ./
	mv ./Template.tex Notes.tex
fi



if [[ "$type" == "Dev" ]]; then
	notify-send "Not yet developed"
fi

