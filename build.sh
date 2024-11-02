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
