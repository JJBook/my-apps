#!/bin/zsh

# # 项目路径
# PROJECT_PATH=""
# # 包名
# PACKAGE_NAME=""
# # 项目名称
# PRO_NAME=""

# while 
#     getopts 'p:d:n:' opt 
# do
#     case $opt in
#         d)
#             PROJECT_PATH=$OPTARG
#         ;;
#         p)
#             PACKAGE_NAME=$OPTARG
#         ;;
#         n)
#             PRO_NAME=$OPTARG
#         ;;
#         *)
#             echo "参数错误!"
#         ;;
#     esac
# done

# if [ -z "$PROJECT_PATH" ] || [ ! -d "$PROJECT_PATH" ]; then
#     echo "路径为空或者文件夹不存在"
#     return
# fi

# cd "$PROJECT_PATH"
# if [ ! -d $PACKAGE_NAME ]; then
#     # 新建产品项目
#     mkdir $PACKAGE_NAME
# fi
# cd $PACKAGE_NAME
# git init
# echo ${PRO_NAME}
# echo "===================== ${PRO_NAME}"
# echo "# ${PRO_NAME}" > README.md
# git add .
# git commit -m "创建《$PRO_NAME》项目"
# git remote add origin http://xptest@10.1.0.103:3000/xptest/$PACKAGE_NAME.git
# git push -u origin master



# _csrf	"Nl3oVQ21HrXfo3EaXbEaaYMj4ws6MTU4NTc5NzM0MjY2ODgwOTU0MQ=="
# uid	"92"
# repo_name	"com.sinyee.babybus.test111"
# description	""
# gitignores	""
# license	""
# readme	"Default"
# license	""
# data='_csrf=t_FP1Hsj1UbeaAh2snbCdcBIuh46MTU4NTgxMTM2MTkxMDc1NDYwOA%3D%3D&user_name=xptest&password=xp123'

curl -c b.txt http://10.1.0.103:3000/user/login -X POST -d data
csrf=`curl http://10.1.0.103:3000/user/login | grep '<input type="hidden"' | awk -F '"' '{print $6}'`
data=$(curl -d "_csrf=${csrf}&user_name=xptest&password=xp123" -X POST http://10.1.0.103:3000/user/login)
# echo $data

# echo $csrf
# data="_csrf=${csrf}&uid=92&repo_name=com.sinyee.babybus.test111&description=&gitignores=&license=&readme=Default"
# curl -A "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:74.0) Gecko/20100101 Firefox/74.0" -H "Content-type:application/x-www-form-urlencoded" -X POST -d data http://10.1.0.103:3000/repo/create























