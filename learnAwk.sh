#!/bin/bash

# 输出1，4列
# awk '{print $1,$4}' log.txt

# 格式化输出
# awk '{printf "%-10s %-12s\n",$1,$4}' log.txt

# 使用,分割
# awk -F, '{print $1,$2}' log.txt
# awk 'BEGIN{FS=","} {print $1,$2}' log.txt

# 使用多个分隔符。先使用空格分割，然后对分割结果在使用，分割
# awk -F '[ ,]' '{print $1,$2,$5}' log.txt

# -v设置变量
# awk -va=1 '{print $1,$1+a}' log.txt

# awk -va=1 -vb=s '{print $1,$1+a,$1b}' log.txt

# 第一列大于2的行
# awk '$1>2' log.txt

# 第一列等于2的行
# awk '$1==2 {print $1,$3}' log.txt

# 第一列大于2且第二列等于are的行
# awk '$1>2 && $2=="Are" {print $1,$2,$3}' log.txt

# 内建变量
# awk 'BEGIN{
# 	printf "%4s %4s %4s %4s %4s %4s %4s %4s %4s\n", "FILENAME", "ARGC", "FNR", "FS", "NF", "NR", "OFS", "ORS", "RS";
# 	printf "------------------------------------------------\n"
# }
# {
# 	printf "%4s %4s %4s %4s %4s %4s %4s %4s %4s", FILENAME, ARGC, FNR, FS, NF, NR, OFS, ORS, RS
# }' log.txt

# awk -F\' 'BEGIN{
# 	printf "%4s %4s %4s %4s %4s %4s %4s %4s %4s\n", "FILENAME", "ARGC", "FNR", "FS", "NF", "NR", "OS", "ORS", "RS";
# 	printf "---------------------------------------------\n"
# }
# {
# 	printf "%4s %4s %4s %4s %4s %4s %4s %4s %4s\n", FILENAME, ARGC, FNR, FS, NF, NR, OS, ORS, RS
# }
# ' log.txt

# 输出顺序号 NR, 匹配文本行号
# awk '{print NR, FNR, $1,$2, $3}' log.txt

# 制定输出分隔符
# awk '{print $1, $2, $5}' OFS=" $ " log.txt

# 使用正则，字符串匹配
# awk '$2 ~ /th/ {print $2, $4}' log.txt

# ~ 标示模式开始。//中是模式
# awk '$2 ~ /re/' log.txt

# 忽略大小写
# awk 'BEGIN{IGNORECASE=1} /this/' log.txt

# 模式取反
# awk '$2 !~ /th/ {print $2,$4}' log.txt
# awk '!/th/ {print $2,$4}' log.txt

# awk '
# BEGIN{
# 	math = 0
# 	english = 0
# 	computer = 0
# 	printf "NAME    NO.   MATH  ENGLISH  COMPUTER   TOTAL\n"
# 	printf "---------------------------------------------\n"
# }
# {
# 	math += $3
# 	english += $4
# 	computer += $5
# 	printf "%-6s %-6s %4d %8d %8d %8d\n", $1, $2, $3,$4,$5, $3+$4+$5
# }
# END{
# 	printf "---------------------------------------------\n"
# 	printf "  TOTAL:%10d %8d %8d \n", math, english, computer
# 	printf "AVERAGE:%10.2f %8.2f %8.2f\n", math/NR, english/NR, computer/NR
# }
# ' score.txt

# ls -l *.txt | awk '{sum+=$5} END{print sum}'
# awk 'length > 20' log.txt

seq 9 | sed 'H;g' | awk -v RS='' '{for(i=1;i<=NF;i++)printf("%dx%d=%d%s", i, NR, NR*i, i==NR?"\n":"\t")}'

# awk 'BEGIN{printf "序号\t名字\t课程\t分数\n"}{print}' marks.txt

# gsub、sub 使用
# awk 'BEGIN{info="this is a test2012test";gsub(/[0-9]+/, "||", info); print info}'

# awk 'BEGIN{
# 	PI = 3.14159265
# 	x = -10
# 	y = 10
# 	result = atan2(y,x) * 180 / PI;
# 	printf "The arc tangent for (x = %f, y = %f) is %f degrees\n", x, y, result
# }'

# awk 'BEGIN{
# 	  PI = 3.14159265
# 	  param = 60
# 	  result = cos(param * PI / 180)

# 	  printf "The cosine of %f degrees is %f.\n", param, result
# }'

# awk 'BEGIN{
# 	PI = 3.14159265
# 	param = 30.0
# 	result = sin(param * PI / 180)

# 	printf "The sine of %f degrees is %f.\n", param, result
# }'

# awk 'BEGIN{
# 	param = 5
# 	result = exp(param)
# 	printf "The exponential value of %f is %f.\n", param, result
# }'

# awk 'BEGIN{
# 	param = 5.5
# 	result = log(param)
# 	printf "log(%f) = %f\n", param, result
# }'

# awk 'BEGIN{
# 	param = 1024.0
# 	result = sqrt(param)

# 	printf "sqrt(%f) = %f\n", param, result
# }'

# awk 'BEGIN{
# 	param = 5.12345
# 	result = int(param)

# 	print "Truncated value = ", result
# }'

# awk 'BEGIN{
# 	print "Random num1 = ", rand()
# 	print "Random num2 = ", rand()
# 	print "Random num3 = ", rand()
# }'

# awk 'BEGIN{
# 	param = 10

# 	printf "srand() = %d\n", srand()
# 	printf "srand(%d) = %d\n", param, srand(param)
# }'

# awk 'BEGIN{
# 	str = "Hello, World"
# 	print "String before replacement = ", str
# 	gsub("World", "Jerry", str)
# 	print "String after replacement = ", str 
# }'

# awk 'BEGIN{
# 	 str = "Hello, World"
# 	 print "String before replacement = ", str
# 	 sub("World", "jack", str)
# 	 print "String after replacement = ", str
# }'

# awk 'BEGIN{
# 	str = "Hello, World"
# 	subs = substr(str, 1, 5)
# 	print "Substring = ", subs
# }'

# awk 'BEGIN {
# 	str = "One Two Three"
# 	subs = "Two"
# 	ret = index(str, subs)
# 	printf "Substring \"%s\" found at %d location.\n", subs, ret
# }'

# awk 'BEGIN{
# 	str = "Hello, World"
# 	subs = substr(str, 1, 5)
# 	print "Substring = ", subs
# }'

# awk 'BEGIN{
# 	str = "One Two Three"
# 	subs = "Two"
# 	ret = match(str, subs)
# 	printf "Substring \"%s\" found at %d location.\n", subs, ret
# }'

# awk 'BEGIN{
# 	str = "One,Two,Three,Four"
# 	split(str, arr, ",")
# 	print "Array contains following values"

# 	for (i in arr){
# 		print arr[i]
# 	}
# }'

# awk 'BEGIN{
# 	str = "HELLO, WORLD"
# 	print "lowercase string = ", tolower(str)
# }'

# awk 'BEGIN{
# 	str = "hwllo, world !!!"

# 	print "Uppercase string = ", toupper(str)
# }'

# awk 'BEGIN{
# 	str = sprintf("%s", "Hello, World!!!")
# 	print str
# }'

# awk 'BEGIN{
# 	print "Decimal num = ", strtonum("123")
# 	print "Octal num = ", strtonum("0123")
# 	print "Hexadecimal num = " strtonum("0x123")
# }'

# awk 'BEGIN{
# 	info = "this is a test2012test!"
# 	gsub(/[0-9]+/, "||", info)
# 	print info
# }'

# awk 'BEGIN{
# 	info = "this is a test2012test!"
# 	print index(info, "11111")?"ok":"no found"
# }'

# awk 'BEGIN{
# 	info = "this is a test2012test!"
# 	print index(info, "is")?"ok":"no found"
# }'

# awk 'BEGIN{
# 	info = "this is a test2012test!"
# 	print index(info, "test")?"ok":"no found"
# }'

# awk 'BEGIN{
# 	info="this is test2012test!"
# 	print match(info, /[0-9]*/) ? "ok" : "no found"
# }'

# awk 'BEGIN{
# 	info = "this is a test2012test!"
# 	print substr(info, 4, 10)
# }'

# awk 'BEGIN{
# 	info = "this is a test";
# 	split(info, tA, " ")
# 	print length(tA)
# 	for ( k in tA )
# 		print k, tA[k]
# }'

# awk 'BEGIN{
# 	n1 = 124.113
# 	n2 = -1.224
# 	n3 = 1.2345
# 	printf("%.2f,%.2u,%.2g,%X,%o\n", n1,n2,n3,n1,n1)
# }'

# awk 'BEGIN{
# 	n1=124.113;
# 	n2=-1.224;
# 	n3=1.2645;
# 	printf("%.2f,%.2u,%.2g,%X,%o\n",n1,n2,n3,n1,n1);
# }'

# awk 'BEGIN{
# 	print "number of seconds since the Epoch = " mktime("2014 12 14 30 20 10")
# }'

# awk 'BEGIN {
#     print strftime("Time = %m/%d/%Y %H:%M:%S", systime())
# }'

# awk 'BEGIN{now=systime();print now}'

# awk 'BEGIN {
#     num1 = 10
#     num2 = 6

#     printf "(%d AND %d) = %d\n", num1, num2, and(num1, num2)
# }'

# awk 'BEGIN {
#     cmd = "tr [a-z] [A-Z]"
#     print "hello, world !!!" |& cmd
#     close(cmd, "to")
#     cmd |& getline out
#     print out;
#     close(cmd);
# }'


# awk 'BEGIN {
#     arr[0] = "One"
#     arr[1] = "Two"
#     arr[2] = "Three"
#     arr[3] = "Four"

#     print "Array elements before delete operation:"
#     for (i in arr) {
#         print arr[i]
#     }

#     delete arr[0]
#     delete arr[1]

#     print "Array elements after delete operation:"
#     for (i in arr) {
#         print arr[i]
#     }
# }'

# awk 'BEGIN {
#     print "Hello, World !!!"

#     exit 10

#     print "AWK never executes this statement."
# }'

# awk '{getline; print $0}' marks.txt 

# awk '{if ($0 ~/Shyam/) next; print $0}' marks.txt

# awk '{ if ($0 ~ /file1:str2/) nextfile; print $0 }' marks.txt score.txt

# awk 'BEGIN { ret = system("date"); print "Return value = " ret }'





















































































































