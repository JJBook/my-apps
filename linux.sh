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
# export http_proxy="http://223.199.28.144:9999"
# export https_proxy="http://223.199.28.144:9999"
# export all_proxy="socks5://223.199.28.144:9999"
# unset http_proxy
# unset https_proxy
# unset all_proxy
# curl --connect-timeout 10 https://www.google.com
# curl --connect-timeout 10 https://ip.cn
# curl --connect-timeout 10 ip.gs








































































































































