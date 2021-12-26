#!/bin/bash

add(){
clear
read -p "Name of the author: " author
read -p "Title of the work: " title
read -p "Number of pages: " pages
read -p "Year of release: " year


echo "Name of the author: $author
Title of the work: $title
Number of pages: $pages 
Year of release: $year
----------------------------------" >>Books.txt
}

author(){
clear
echo -e "\e[1;36m Authors Menu \e[0m"
awk '/author/{print}' Books.txt
}

title(){
clear
echo -e "\e[1;36m Titles Menu \e[0m"
awk '/work/{print}' Books.txt
}

delete(){
rm -i Books.txt
}

function menu(){
echo -ne "\e[1;36m
Bibliography Menu
1) Add to bibliography
2) Search authors
3) Search titles
4) Delete file
5) Exit
Choose an option: \e[0m"
    read a
    case $a in 
    1) add; menu;;
    2) author; menu;;
    3) title; menu;;
    4) delete; menu;;
    5) exit 0 ;;
    *) echo -e "\e[1;31m Wrong input. Try again! \e[0m"; menu;;
    esac
}
menu

