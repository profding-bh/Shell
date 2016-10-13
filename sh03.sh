
#1.让用户输入文件名，并取得fileuser这个变量
echo -e "I will use 'touch' command to create 3 files."
read -p "Please input your filename: " fileuser

#2.为了避免用户随意按enter,利用变量功能分析文件名是否有设置。
filename=${fileuser:-"filename"} #开始判断是否配置文件名。

#3.利用date命令来取得所需要得文件名。
date1=$(date --date='2 days ago' +%Y%m%d)
date2=$(date --date='1 days ago' +%Y%m%d)
date3=$(date  +%Y%m%d)


#4.配置文件名
file1=${filename}-${date1}
file2=${filename}-${date2}
file3=${filename}-${date3}

#5.新建文件
touch "$file1"
touch "$file2"
touch "$file3"







