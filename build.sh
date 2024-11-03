#!/bin/bash

root_dir="Experiment2_1"

categories=("A" "B" "C" "D")

if [ ! -d "$root_dir" ];then
	
	echo "Start building ⚙️  "
	mkdir -p "$root_dir"
	touch $root_dir/{README.txt,CMakeLists.txt}

	for category in "${categories[@]}";
	do
		mkdir -p "$root_dir/exercise_$category"/{bin,include,result,src} && touch "$root_dir/exercise_$category/CMakeLists.txt"
		echo "-------------------------------"
		echo "exercise_$category has been created ✅"
	done
	echo "-------------------------------"
	echo "All tasks have been finished 🚀"
else
	echo "The project already exists; the process has been shut down."
fi

sleep 0.5

tree

sleep 0.5
echo -e "\033[38;2;255;69;0m
      _   _   _   ____    _____     ____     ___      ___   _____ 
     | | | | | | / ___|  |_   _|   |  _ \   / _ \    |_ _| |_   _|
  _  | | | | | | \___ \    | |     | | | | | | | |    | |    | |  
 | |_| | | |_| |  ___) |   | |     | |_| | | |_| |    | |    | |  
  \___/   \___/  |____/    |_|     |____/   \___/    |___|   |_|   
\033[0m"

sleep 0.5
echo -e "\033[38;2;238;118;0m===============HELP=================\033[0m"
sleep 0.5
echo -e "\033[38;2;238;130;0m文件写入操作查看浙大版C语言教材P298\033[0m"
sleep 0.5
echo -e "\033[38;2;238;118;0m===============HELP=================\033[0m"
