#!/bin/bash
# 查看共享内存
# ipcs -m

# 查看进程
# ps ax

# terminfo 数据库
# infocmp vt100
# echo $TERM

# 查看bash shell信息
# man bash

# ls查看文件
# ls 
# ls -F
# ls -a
# ls -F -R ..
# ls -l
# ls -sail
# ls -l linux.sh
# ls -l linu?.sh

# 创建文件
# touch test1
# ls -l test1
# touch -t 200812251200 test1
# ls -l test1

# 复制文件
# cp -L test1 test4
# cp -s test1 test5
# ln -s test1 test5
# cp -l test1 test2

# 重命名文件
# mv test1 test2
# ls -il test*

# 删除文件
# rm -i test2

# 目录处理
# 创建文件
# mkdir dir3
# 删除目录
# rmdir dir3
# rm -ir dir3

# 查看整个文件内容
# 查看文件统计数据
# stat linux.sh
# 查看文件类型
# touch testfile
# echo "===========" >> testfile
# file testfile

# 查看整个文件
# cat testfile
# 显示行号
# cat -n testfile

# 显示非空行的行数
# cat -b testfile 
# more命令
# more testfile
# less 命令
# less testfile
# tail 命令显示最后10行
# tail -f testfile
# head 领命显示前10行
# head testfile
# ps -a
# ps -ef > testfile
# ps -l > testfile
# ps l

# 实时进程监控
# top -l
# top -i
# top -f
# top -R

# 4.2.1挂载介质
# mount 命令
# unmount 命令

# 使用df命令
# df
# du /Users/jjbook/Documents/JJ/projects
# 数据排序
# cat testfile
# sort testfile
# sort -n testfile

# sort -t ':' -k 3  -n testfile
# du -sh * | sort -nr

# 搜索数据
# grep t testfile
# grep -v t testfile
# touch testfile2
# for((i=0;i<100;i++)); do
#     echo "你好，这是命令窗口输出" >> testfile2
# done

# 压缩数据
# bzip2 testfile2
# bunzip2 testfile2.bz2
# ls -l testfi*
# bzcat testfile2.bz2

# bunzip2 testfile2.bz2
# gzip testfile2
# gzcat testfile2.gz
# gunzip testfile2.gz

# zip -r azip a
# zip -r t.zip t

# tar -cvf test.tar test1/ test2/
# tar -tf test.tar
# tar -xvf test.tar

# 使用Linux环境变量
# printenv
# set

# echo $PATH
# PATH=$PATH:/Users/jjbook/Documents/JJ/projects/my-apps
# echo $PATH
# myprog

# open -e $HOME/.bash_profile
# open /etc/profile

# 5.7变量数组
# mytest=(one two three four five)
# echo $mytest
# echo ${mytest[2]}
# echo ${mytest[*]}
# mytest[2]=seven
# echo ${mytest[*]}
# unset mytest
# echo ${mytest[*]}

# 5.8 使用命令别名
# alias -p
# alias li='ls -il'
# li
# export http_proxy="http://52.179.231.206:80"
# export https_proxy="https://52.179.231.206:80"
# export all_proxy="https://60.217.247.90:80"
# unset http_proxy
# unset https_proxy
# unset all_proxy
# curl --connect-timeout 10 www.google.com 
# curl --connect-timeout 10 ip.gs

# cat /etc/passwd
# cat /etc/shadow

# file linux.sh
# touch newfile3
# ls -al newfile3
# if [ -f "newfile3" ]; then
#     rm newfile3
# fi

# umask 026
# touch newfile3
# ls -ls newfile3

# 将读取权限添加到任何人
# chmod o+r newfile3

# 删除用户已拥有的执行权限
# chmod u-x newfile3

# 修改所有者
# chown dan newfile3
# ls -l newfile3

# vim newfile3
# emacs newfile3
# date ; who

# date
# who
# set

# testing=`date`
# echo $testing
# today=`date +%y%m%d`
# echo $today
# 8.5重定向输入输出
# date > newfile3
# who >> newfile3
# wc << marker
# data
# marker

# wc << EOF
# > test string 1
# > test string 2
# > test string 3
# >EOF

# rpm -qa > rpm.plist

# 8.7数学计算
# expr 1 + 5
# expr 5 \* 2
# var1=10
# var2=20
# var3=`expr $var2 / $var1`
# echo "The result is $var3"
# var1=$[1 + 5]
# echo $var1
# var2=$[$var1 * 2]
# echo $var2

# var1=100
# var2=50
# var3=45
# var4=$[$var1 * ($var2 - $var3)]
# echo "The final result is $var4"

# var1=100
# var2=45
# var3=$[$var1 / $var2]
# echo The final resule is $var3

# bc
# 12 * 5.4
# 64.8
# 3.156 * (3 + 5)
# 25.248

# bc -q

# 在脚本中使用bc
# var1=`echo " scale=4; 3.44 / 5" | bc`
# echo The answer is $var1
# osascript -e 'display notification "结束任务" with title "任务完成"'

# var1=100
# var2=45
# var3=`echo "scale=4; $var1 / $var2" | bc`
# echo The answer for this is $var3

# var1=20
# var2=3.14159
# var3=`echo "scale=4; $var1 * $var2" | bc`
# var4=`echo "scale=4; $var3 * $var2" | bc`
# echo The final result is $var4

# var1=10.46
# var2=43.67
# var3=33.2
# var4=71
# var5=`bc << EOF
# scale = 4
# a1 = ($var1 * $var2)
# b1 = ($var3 * $var4)
# a1+b1
# EOF
# `
# echo The final answer for this mess is $var5

# date
# echo $?

# asdfg
# echo $?

# date %t
# echo $?

# chmod u+x test13
# ./test13
# echo $?

# chmod u+x test14
# ./test14
# echo $?

# if date
# then
#     echo "it worked"
# fi

# if asdfg 
# then
#     echo "it didn't work"
# fi
# echo "we're outside of the if statement"

# testuser=jjbook
# if grep $testuser newfile3
# then
#     echo The bash files for user $testuser are:
#     ls -a /Users/$testuser
# fi

# testuser=abc
# if grep $testuser newfile3 
# then
#     echo The files for user $testuser are:
#     ls -a /Users/$testuser/
# else
#     echo "The user name $testuser doesn't exist on this system"
# fi

# test 命令
# val1=10
# val2=11
# if [ $val1 -gt 5 ]
# then
#     echo "The test value $val1 is greater then 5."
# fi

# if [ $val1 -eq $val2 ]
# then
#     echo "The values are equal"
# else
#     echo "The values are different"
# fi

# val1=`echo "scale=4; 10 / 3" | bc`
# echo "The test value is $val1"
# if [ $val1 -gt 3 ]
# then
#     echo "The result is larger than 3"
# fi

# testuser=jjbook
# if [ $USER = $testuser ]
# then
#     echo "Welcome $testuser"
# fi

# val1=baseball
# val2=hockey
# if [ $val1 \> $val2 ]
# then
#     echo "$val1 is greater than $val2"
# else
#     echo "$val1 is less than $val2"
# fi

# chmod u+x test10
# ./test10

# 9.4.3文件比较
# chmod u+x test11
# ./test11

# chmod u+x test12
# ./test12

# ./test13
# ./test14

# chmod u+x test15
# ./test15

# chmod u+x test16
# ./test16

# chmod u+x test17
# ./test17

# chmod u+x test18
# ./test18

# chmod u+x test19
# ./test19

# chmod u+x test20
# ./test20

# chmod +x test21
# ./test21

# chmod +x test22
# ./test22

# chmod u+x test23
# ./test23

# bc

# chmod u+x test24
# ./test24

# vscode test25
# vscode
# if [ "${BASH-no}" != "no" ]; then
#     cd ~
#     [ -r ~/.zshrc ] && . ~/.zshrc
# fi

# chmod u+x test25
# ./test25

# chmod u+x test26
# ./test26

# chmod u+x test1
# ./test1

# str=$(cat $1)
# echo $str| grep -E '<mov name'
# echo $str2
# chmod u+x test4
# ./test4

# chmod u+x test5
# ./test5

# chmod u+x test6
# ./test6

# chmod u+x test7
# ./test7

# chmod u+x test8
# ./test8

# chmod u+x test9
# ./test9

# ./test10
# ./test11
# ./test13
# ./test14
# ./test15
# chmod u+x test16
# ./test16
# ./test17 -c 123 -a 11111

# str=$(cat $1)
# str2=`echo $str | grep "function"`
# echo $str2

# 新增
# sed -e '4a\
# newLine' testfile

# 删除行
# sed '4d' testfile

# 插入
# sed '2i\
# drink tea' testfile

# 插入2行
# sed '2a\
# Drink tea or ......\
# drink beer?\
# ' testfile

# 替换行
# sed '2c\
# No 2-5 number\
# ' testfile

# 以行为单位显示
# sed -n '1,2p' testfile

# 数据的搜寻并显示
# sed -n '/test/p' testfile

# 数据的搜寻并删除
# sed '/test/d' testfile

# 数据的搜寻并执行命令
# nl testfile | sed -n '/test/p' | sed 's/is/are/g'
# sed -n '/root/{s/bash/blueshell/;p;q}' testfile

# 数据的搜寻并替换
# ip=`cat testfile | grep 'inet addr' | sed 's/^.*addr://g' | sed 's/Bcast.*$//g'`
# echo $ip
# sed -e 's/\.$/\!/g' testfile

# sed -i "" 's/-//g' testfile

# chapter10

# ./test1

# 处理用户输入
# factorial=1
# for (( i = 1; i <= $1; i++ )); do
# 	factorial=$[ $factorial * $i ]
# done

# echo The factorial of $1 is $factorial

# total=$[ $1 * $2 ]
# echo The fiest paremerer is $1
# echo The second parameter is $2
# echo The total value is $total

# count=1
# while [[ -n "$1" ]]; do
# 	echo "parameter #$count = $1"
# 	count=$[ $count + 1 ]
# 	shift
# done

# echo "The original parameter: $*"
# shift 3
# echo "Here's the new first parameter: $1"

# while [[ -n "$1" ]]; do
# 	case "$1" in
# 		-a) echo "Found the -a option" ;;
# 		-b) echo "Found the -b option" ;;
# 		-c) echo "Found the -c option" ;;
# 		*) echo "$1 is not an option" ;;
# 	esac
# 	shift
# done

# while [[ -n "$1" ]]; do
# 	case "$1" in
# 		-a) echo "Found the -a option" ;;
# 		-b) echo "Found the -b option" ;;
# 		-c) echo "Found the -c option" ;;
# 		--) shift
# 			break;;
# 		*) echo "$1 is not an option";;
# 	esac
# 	shift
# done

# count=1
# for param in "$@"
# do
# 	echo "parameter #$count: $param"
# 	count=$[ $count + 1 ]
# done

# while [[ -n "$1" ]]; do
# 	case "$1" in
# 		-a) echo "Found the -a option" ;;
# 		-b) param=$2
# 			echo "Found the -b option, with parameter value $param"
# 			shift 2 ;;
# 		-c) echo "Found the -c option" ;;
# 		--) shift
# 			break ;;
# 		*) echo "$1 is not an option" ;;
# 	esac
# 	shift
# done

# count=1
# for param in $@; do
# 	echo "parameter #$count: $param"
# 	count=$[ $count + 1 ]
# done


# txt=(`sed -n "/^function M:isWelcomeScene()/,/^end/p" /Users/jjbook/Documents/JJ/babybus/git/com.sinyee.babybus.food/src/app/gameplay/scene/GameplayScene.lua`)
# echo ${txt[3]}

# ./test1 -a -b test1 -d test1 test2 test3
# echo -n "Enter your name:"
# read name
# echo "Hello $name, welcome to my program."

# read -p "Please enter your age:" age

# read -p "Enter a number:"
# factorial=1
# for (( i = 1; i <= $REPLY; i++ )); do
# 	factorial=$[ $factorial * $i ]
# done
# echo "The factorial of $REPLY is $factorial"

# if read -t 5 -p "Please enter your name: " name
# then
# 	echo "Hello $name, welcome to my script"
# else
# 	echo 
# 	echo "Sorry, to slow!"
# fi

# read -n1 -p "Do you want to continue [Y/N]?" answer
# case $answer in
# Y | y) echo
# 		echo "fine, continue ..." ;;
# N | n) echo
# 		echo OK, goodbye
# 		exit;;
# esac
# echo "This is the end of the script"


# days=$[ $age * 365 ]
# echo "That makes you over $days days old!"

# read -s -p "Enter your passwd: " pass
# echo
# echo "Is your password really $pass?"

# cat testfile

# count=1
# cat testfile | while read line
# do
# 	echo "Line $count: $line"
# 	count=$[ $count + 1 ]
# done
# echo "Finished processing the file"

# cat
# cat < testfile

# ls -l > testfile5
# cat testfile5

# who >> testfile5
# cat testfile5

# ls -al testfile5 > testfile6
# cat testfile6

# ls -al testfile100 2> testfile100
# cat testfile100

# ls -al test test1 test2 2> testfile6 
# ls -al test100 test111 test112 test1 &> testfile6

# echo "This is an error " >&2
# echo "this is normal output"

# exec 1>testfile6

# echo "This is a test of redirecting all output"
# echo "from a script to another file."
# echo "without having to redirect evety individual line"

# exec 2>testfile6

# echo "This is the start of the script"
# echo "now redirecting all output to another location"

# exec 1>testfile7
# echo "The output should go to the testout file"
# echo "but this should go to the testerror file" >&2

# exec 0< testfile
# count=1
# while read line
# do
# 	echo "Line #$count: $line"
# 	count=$[ $count + 1 ]
# done

# exec 3> testfile7

# echo "This should display on the monitor"
# echo "and this should be stored in the file" >&3
# echo "Then this should be back on the monitor"

# exec 3>&1
# exec 1>testfile7

# echo "This should store in the output file"
# echo "along with this line."

# exec 1>&3

# echo "Now things should be back to normal"

# exec 6<&0

# exec 0<testfile

# count=1
# while read line
# do
# 	echo "Line #$count: $line"
# 	count=$[ $count + 1 ]
# done 
# exec 0<&6

# read -p "Are you done now?" answer
# case $answer in
# 	Y|y) echo "Goodbye";;
# 	N|n) echo "Sorry, this is the end.";;
# esac

# exec 3<> testfile
# read line <&3
# echo "Read: $line"
# echo "This is a test line " >&3

# exec 3> testfile7
# echo "This is a test line of data" >&3
# exec 3>&-
# echo "This won't work" >&3

# exec 3> testfile7
# echo "This is a test line of data" >&3
# exec 3>&-

# cat testfile7
# echo "This'll be bad" >&3

# /usr/sbin/lsof -a -p $$ -d 0,1,2

# exec 3> testfile8
# exec 6> testfile9
# exec 7< testfile

# /usr/sbin/lsof -a -p $$ -d 0,1,2,3,6,7

# 禁止命令输出
# ls -al > /dev/null
# cat /dev/null

# mktemp testing.XXXXXX

# tempfile=`mktemp test19.XXXXXX`
# exec 3>$tempfile

# echo "This script writes to temp file $tempfile"

# echo "This is the first line" >&3
# echo "This is the second line." >&3
# echo "This is the last line." >&3
# exec 3>&-

# echo "Done creating temp file. The contents are:"
# cat $tempfile
# rm -r $tempfile 2> /dev/null

# tempfile=`mktemp -t tmp.XXXXXX`
# echo "This is a test file." > $tempfile
# echo "This is the second line of the test." >> $tempfile

# echo "The temp is located at: $tempfile"
# cat $tempfile
# rm -f $tempfile

# date | tee testfile2
# cat testfile2

# who | tee testfile2
# cat testfile2

# date | tee -a testfile2
# cat testfile2

# tempfile=test22file
# echo "This is the start of the test" | tee $tempfile
# echo "This is the second line of the test" | tee -a $tempfile
# echo "This is the end of the test" | tee -a $tempfile

# ps au

# trap "echo Haha" SIGINT SIGTERM
# echo "This is a test program"
# count=1
# while [[ $count -le 10 ]]; do
# 	echo "Loop #$count"
# 	sleep 10
# 	count=$[ $count + 1 ]
# done
# echo "This is the end of the test program"

# trap "echo byebye" EXIT
# count=1
# while [[ $count -le 5 ]]; do
# 	echo "Loop #$count"
# 	sleep 3
# 	count=$[ $count + 1 ]
# done

# trap "echo byebye" EXIT
# count=1
# while [[ $count -le 5 ]]; do
# 	echo  "Loop #$count"
# 	sleep 3
# 	count=$[ $count + 1 ]
# done
# trap - EXIT
# echo "I just removed the trap"

# ./test1 &
# ./test1 &

# nohup ./test1 &

# echo "This is a test program $$"
# count=1

# while [[ $count -le 10000 ]]; do
# 	echo "Loop #$count"
# 	sleep 10
# 	count=$[ $count + 1 ]
# done

# echo "This is the end of the test program"

# nice -n -10 ./test1 > testfile3 &

# ./test1 > testfile3 &

# time=`date +%T`
# echo "This script ran at $time"
# echo "This is end of the script"

# function func1 {
# 	echo "This is an example of a function"
# }

# count=1
# while [[ $count -le 5 ]]; do
# 	func1
# 	count=$[ $count + 1 ]
# done
# echo "This is the end of the loop"
# func1
# echo "Now this is the end of the script"

# func2
# echo "Now this is the end of the script"

# function func2 {
# 	echo "This is an example of a function"
# }

# func1

# function func1 {
# 	echo "This is a repeat of the same function"
# }

# func1
# echo "This is end of the script"

# func1() {
# 	echo "trying to display a non-existent file"
# 	ls -l badfile
# }

# echo "testing the function:"
# func1
# echo "The exit status is:$?"

# func1() {
# 	ls -l badfile
# 	echo "This was a test of a bad command"
# }

# echo "testing the function: "
# func1
# echo "this exit status is: $?"

# function db1 {
# 	read -p "Enter a value: " value
# 	echo "double the value"
# 	return $[ $value * 2 ]
# }

# db1
# echo "The new value is $?"

# function db1 {
# 	read -p "Enter a value:" value
# 	echo $[ $value * 2 ]
# }

# result=`db1`
# echo "The new value is $result"

# function addem(){
# 	if [[ $# -eq 0 ]] || [ $# -gt 2 ]; then
# 		echo -1
# 	elif [[ $# -eq 1 ]]; then
# 		echo $[ $1 + $1 ]
# 	else
# 		echo $[ $1 + $2 ]
# 	fi
# }

# echo -n "Add 10 and 15: "
# value=`addem 10 15`
# echo $value
# echo -n "Let's try adding just on number: "
# value=`addem 10`
# echo $value
# echo -n "Now trying adding no numbers: "
# value=`addem`
# echo $value
# echo -n "Finally, try adding three numbers: "
# value=`addem 10 15 20`
# echo $value

# function badfunc1 {
# 	echo $[ $1 + $2 ]
# }

# if [[ $# -eq 2 ]]; then
# 	value=`badfunc1`
# 	echo "The result is $value"
# else
# 	echo "Usage: badtest1 a b"
# fi

# function func7 {
# 	echo $[ $1 * $2 ]
# }

# if [[ $# -eq 2 ]]; then
# 	value=`func7 $1 $2`
# 	echo "The result is $value"
# else
# 	echo "Usage: badtest1 a b"
# fi

# function db1 {
# 	value=$[ $value * 2 ]
# }

# read -p "Enter a value: " value
# db1
# echo "The new value is: $value"

# function func1 {
# 	temp=$[ $value + 5 ]
# 	result=$[ $temp * 2 ]
# }

# temp=4
# value=6
# func1
# echo "The result is $result"
# if [[ $temp -gt $value ]]; then
# 	echo "temp is larger"
# else
# 	echo "temp is smaller"
# fi

# function func1 {
# 	local temp=$[ $value + 5 ]
# 	result=$[ $temp * 2 ]
# }

# value=6
# func1
# echo "The result is $result"
# if [[ $temp -gt $value ]]; then
# 	echo "temp is larger"
# else
# 	echo "temp is smaller"
# fi

# function testit {
# 	echo "The paramters are: $@"
# 	thisarray=$1
# 	echo "The received array is ${thisarray[*]}"
# }

# myarray=(1 2 3 4 5)
# echo "The original array is: ${myarray[*]}"
# testit $myarray

# function addarray {
# 	local sum=0
# 	local newarray
# 	newarray=(`echo $@`)
# 	for value in ${newarray[*]}; do
# 		sum=$[ $sum + $value ]
# 	done
# 	echo $sum
# }

# myarray=(1 2 3 4 5)
# echo "The original array is : ${myarray[*]}"
# arg1=`echo ${myarray[*]}`
# result=`addarray $arg1`
# echo "The result is $result"

# function arraydblr {
# 	local origarray
# 	local newarray
# 	local elements
# 	local i
# 	origarray=(`echo "$@"`)
# 	newarray=(`echo "$@"`)
# 	elements=$[ $# - 1 ]
# 	for (( i = 0; i <= $elements; i++ )); do
# 		newarray[$i]=$[ ${origarray[$i]} * 2 ]
# 	done
# 	echo ${newarray[*]}
# }

# myarray=(1 2 3 4 5)
# echo "The original array is: ${myarray[*]}"
# arg1=`echo ${myarray[*]}`
# result=(`arraydblr $arg1`)
# echo "The new array is : ${result[*]}"

# function factorial {
# 	if [[ $1 -eq 1 ]]; then
# 		echo 1
# 	else
# 		local temp=$[ $1 - 1 ]
# 		local result=`factorial $temp`
# 		echo $[ $result * $1 ]
# 	fi
# }

# read -p "Enter value: " value
# result=`factorial $value`
# echo "The factorial of $value is: $result"

# . ./myfuncs

# value1=10
# value2=5

# result1=`addem $value1 $value2` 
# result2=`multem $value1 $value2`
# result3=`divem $value1 $value2`
# echo "The result of adding this item: $result1"
# echo "The result of multiplying the is: $result2"
# echo "The result of divding them is: $result3"

# function divem { echo $[ $1 / $2 ]; }
# divem 100 5

# function doubleit { read -p "Enter value: " value; echo "$value"; }

# doubleit

# clear
# echo
# echo -e "\t\t\tSys Admin Menu\n"
# echo -e "\t1. Display disk space"
# echo -e "\t2. Display logged on users"
# echo -e "\t3. Display memory usage"
# echo -e "\t0. Exit menu\n\n"
# echo -en "\t\tEnter option:"

# function diskspace {
# 	clear
# 	echo "This is where the diskspace commands will go"
# }

# function menu {
# 	clear 
# 	echo
# 	echo -e "\t\t\tSys Admin Menu\n"
# 	echo -e "\t1. Display disk space"
# 	echo -e "\t2. Display logged on users"
# 	echo -e "\t3. Display memory usage"
# 	echo -e "\t0. Exit program\n\n"
# 	echo -en "\t\tEnter option: "
# 	read -n 1 option
# }

# menu

# function diskspace {
# 	clear
# 	df -k
# }

# function whoseon {
# 	clear
# 	who
# }

# function menusage {
# 	clear
# 	cat testfile
# }

# function menu {
# 	clear 
# 	echo
# 	echo -e "\t\t\tSys Admin Menu\n"
# 	echo -e "\t1. Display disk space"
# 	echo -e "\t2. Display logged on users"
# 	echo -e "\t3. Display memory usage"
# 	echo -e "\t0. Exit program\n\n"
# 	echo -en "\t\tEnter option: "
# 	read -n 1 option
# }

# while [[ 1 ]]
# do
# 	menu

# 	case $option in
# 	0) break ;;
# 	1) diskspace ;;
# 	2) whoseon ;;
# 	3) menusage  ;;
# 	*)
# 		clear
# 		echo "Sorry, wrong selection" ;;
# 	esac
# 	echo -en "\n\n\t\t\tHit any key to continue"
# 	read -n 1 line
# done

# clear

# function diskspace {
# 	clear
# 	df -k
# }

# function whoseon {
# 	clear
# 	who
# }

# function menusage {
# 	clear 
# 	cat testfile
# } 

# function menu {
# 	clear 
# 	echo
# 	echo -e "\t\t\tSys Admin Menu\n"
# 	echo -e "\t1. Display disk space"
# 	echo -e "\t2. Display logged on users"
# 	echo -e "\t3. Display memory usage"
# 	echo -e "[[1m\t0. Exit program\n\n^[[0m^[[44;33m"
# 	echo -en "\t\tEnter option: "
# 	read -n 1 option
# }

# PS3="Enter option: "
# select option in "Display disk space" "Display logged on users" "Display memory usage" "Exit program"
# do
# 	case $option in
# 		"Exit program")
# 			break ;;
# 		"Display disk space")
# 			diskspace ;;
# 		"Display logged on users")
# 			whoseon ;;
# 		"Display memory usage")
# 			menusage ;;
# 		*)
#  			clear
#  			echo "Sorry, wrong selection" ;;	
# 	esac
# done
# clear

# ehco "^[[44;33m"
# while [ 1 ] 
# do
# 	menu
# 	case $option in
# 		0)
# 			break ;;
# 		1)
# 			diskspace ;;
# 		2)
# 			whoseon ;;
# 		3)
# 			menusage ;;
# 		*)
# 			clear
# 			echo -e "^[[5m\t\t\tSorry, wrong selection^[[0m^[[44;33m" ;;
# 	esac
# 	echo -en "\n\n\t\t\tHit any key to continue"
# 	read -n 1 line
# done

# echo "^[[0m"
# clear

# echo "[0m"

# 1、升级、国际化
# 2、新功能
# 3、产品代码维护
# 4、世界子包修改，管理


# function error() {
#   osascript <<EOT
#     tell app "System Events"
#       display dialog "$1" buttons {"OK","cancle"} default button 1 with icon caution with title "$(basename $0)"
#       return -- Suppress result
#     end tell
# EOT
# }

# error "Not enough cheese!"

# ./test1

# echo "This is a test" | sed 's/test/big test/'

# echo "This is a lazy dog" | sed 's/dog/cat/'

# sed -e 's/taobao/拼夕夕/; s/zhihu/知乎/' testfile

# awk -F ' ' '{print $1}' testfile

# sed '/1/,/3/d' testfile

# sed '3a\
# This is my hourse' testfile

# sed '$a\
# This is a big base' testfile

# sed '3a\
# this is a test' testfile

# sed '3c\
# this is sed test' testfile

# sed '2,10c\
# This is sed test' testfile

# sed 's/taobao/淘宝/' testfiles

# sed -n "/taobao/p" testfile

# sed -n "2,3p" testfile

# 打印行号
# sed '=' testfile

# sed -n '/taobao/=' testfile

# sed -n '/1/p' testfile

# sed '2a \
# \\n' testfile

# sed '1,2w test' testfile3


# echo "This is a test" | sed -n '/trial/p'

# echo "This is a test" | awk '/test/{print $0}'

# echo "This is a test" | awk '/trial/{print $0}'

# echo "This is line number 1" | sed -n '/ber 1/p'

# sed -n '/  /p' testfile

# sed -n '/\?/p' testfile3

# echo "3 / 2" | sed -n '/\//p'

# echo "The book store" | sed -n '/^book/p'
# echo "Books are great" | sed -n '/^Book/p'

# sed -n '/^This/p' testfile

# echo "This is a good book" | sed -n '/book$/p'
# echo "There are a lot of good books" | sed -n '/book$/p'
# sed -n '/^This is a test line$/p' testfile

# sed -n '/.his/p' testfile

# echo "Yes" | sed -n '/[Yy]es/p'
# echo "yes" | sed -n '/[Yy]es/p'


# echo "$txt" | awk -F '{print $1}' 

# curl -s https://github.com/jingle1267/TianGou/blob/master/api | grep '<td id="LC1" class="blob-code blob-code-inner js-file-line">' | sed 's/&quot;//g' | awk -F ',' '{print $19}'

# shell三剑客  grep awk sed

# sed '/jjbook/n/d/} testfile

# sed '/^$/d' testfile2 

# sed 's/jjbook/JJBook/' testfile2

# sed 'G' testfile2

# sed "$!G" testfile2

# sed '=' testfile2 | sed 'N; s/\n/ /'

# sed -n '$p' testfile2

# sed '/./,/^$/!d' testfile2

# sed '/./,$!d' testfile2

# echo "This is a test message" | mail -s "Test message" iris

# df | sed -n '/\/$/p'

# df | sed -n '/\/$/p' | awk '{print $5}'

# SPACE=`df | sed -n '/\/$/p' | awk '{print $5}' | sed 's/%//'`
# if [ $SPACE -ge 90 ]
# then
# 	echo "Disk space on root at $SPACE used" | mail -s 'Disk warning'
# else
# 	echo "Disk $SPACE used " | mail -s "success."
# fi

# du -s ./*

# du -s ./* | grep -v lost

# du -s ./* | grep -v lost | sed 's/\.\///'

# du -s ./* | grep -v test | sed 's/\.\///' | sort -g -r 

# TEMP=`mktemp -t temp.XXXXXX`

# du -s ./* | grep -v test | sed 's/\.\///' | sort -g -r > $TEMP


# TOTAL=`du -s ./* | awk '{print $1}'`

# cat $TEMP | awk -v n="$TOTAL" '
# BEGIN {
# 	print "Total Disk Usage by User."
# 	print "User\tSpace\tParcent"
# }

# {
# 	printf "%s\t%d\t%6.2f%\n", $2, $1, ($1/n)*100
# }

# END {
# 	print "-----------------------------------";
# 	printf "Total\t%d\n", n
# }
# '

# rm -f $TEMP

# awk 'GEGIN 
# {
# 	printf "%4s %4s %4s %4s %4s %4s %4s %4s %4s\n","FILENAME","ARGC","FNR","FS","NF","NR","OFS","ORS","RS";
# 	printf "-------------------------------------\n";
# 	printf "%4s %4s %4s %4s %4s %4s %4s %4s %4s\n",FILENAME,ARGC,FNR,FS,NF,NR,OFS,ORS,RS
# }
# ' log.txt

awk -F '\' '
BEGIN{
	printf "%4s %4s "
}
'







 

































































































