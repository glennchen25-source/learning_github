#以下内容包括：增加，修改，删除文件
#都是本地操作，并不影响GitHub中的内容；
#配置好环境后, 向仓库中添加文件的流程
git status #获取状态，工作区：红色
git add <<file.name>>  #添加到暂存区：绿色
get status #同上
git commit -m “描述” #到仓库，commit后要空格
git status

------##linux 命令行

ls#当前文件夹内的所有文件
pwd #获取当前文件夹路径

mkdir <filefolder_name> && cd <newfilefolder_name> #在当前文件夹创建新文件，并打开该文件夹

git init #在当前文件夹内初始化git仓库

echo "hello" > readme.txt
#把字符串 hello 写入到 readme.txt（没有就创建，有就覆盖）。
#结果：工作区多了一个文件 readme.txt，内容是 hello 加上换行。
#小贴士：这是工作区的改动，Git 还没记录；> 是覆盖，想追加用 >>。

touch a1.php #当前目录创建

git add .
#把当前目录的改动（这里就是新建的 readme.txt）加入暂存区（stage）。
#结果：readme.txt 进入待提交状态。
#小贴士：. 表示所有变化；只加单个文件可用 git add readme.txt。

git commit -m "first commit"
#把暂存区的内容生成一个提交（commit），并附上一句提交说明。
#结果：历史里出现第一个快照；HEAD 指向这个提交。
#首次提交如果没配置用户名/邮箱，Git 会提示你设置：

vi <file.name>#打开文件，修改
看到了你在 INSERT 模式里（屏幕底部有 -- INSERT --）。在 vi/vim 里，保存/退出要先退出输入模式：
保存并退出
  按 Esc（让底部不再显示 -- INSERT --）
  输入 :wq
  回车
只保存不退出
  Esc → :w → 回车
不保存退出
  Esc → :q! → 回车
保存到新文件名
  Esc → :w 新文件名 → 回车

cat <file.name>#显示内容

#你卡在 quote> 提示符里是因为引号不匹配（用了中文的右引号 ”，或少了左引号）。zsh/终端在发现没配对的引号时会一直等你补全，所以才出现 quote>。

#按 Ctrl + C（取消这条还没完成的命令，回到正常提示符）。

----删除
rm -rf <file.name> #从文件夹内删除
git rm <file.name> #从git中删除
git commit -m "描述"
