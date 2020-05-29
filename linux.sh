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
curl --connect-timeout 10 www.google.com 
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























































































































































