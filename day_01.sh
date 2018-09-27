#! /bin/sh
#shell是操作系统提供给我们的一种语言，用来将用户命令输送到内核中执行

#定义变量
#空格敏感，name = 王建飞 会报错
name=王建飞
echo $name
# $*代表所有参数，传给文件的参数
echo "参数：$*"
# $#代表参数的个数
echo "参数个数$#"

#1
#定义shell变量，符号左右不能有空格
# shellname=value
# $shellname

#2 $数字 表示第几个参数 $1第一个
# $# 参数个数  $* 所有参数  $?上一个命令的返回值

#3 shell中执行命令，需要加入`` 键盘上1附近的符号
result=`ls`
echo result=$result

#读取键盘

echo "please enter a"
read a
echo "please enter b"
read b
echo "a=$a, b=$b"

# 第一种if 语句, test 是关键字
if (test "start" = "${1}" ) then
	echo "start"
else
	echo "end"
fi

#第二种if 语句，用来判断文件或者文件夹是否存在

if [ -d "${1}" ]; then
	echo exist
else 
	echo notexist
fi

#while 循环
# 注意左右的空格[],done 代表循环结束
#tmp=0
#while [ "$tmp" != "5" ];
#do 
#	echo "curtmp=$tmp"
#	tmp=$[ "$tmp" + 1 ]
#done
counter=0
while [ $counter -le 5 ]
do
	counter=$(($counter + 1))
	echo $counter
done

# case 分支
case "string" in
wjf)
	echo "wjf"
;;
stringwjf)
	echo "stringwjf"
;;
*)
	echo "not found"
;;
esac

# for 循环
for name in $*;
do 
	echo "$name"
done
#exit 22

#函数
function fun1
{
	echo "第一个参数: $1"
	echo "第二个参数：$2"
	return 100
}
fun1 3 4
echo "函数返回值： $?"

