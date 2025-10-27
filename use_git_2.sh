#远程操作，实现代码共享
git clone "仓库链接，https即可”
#密码是token，在备忘录里面

#增改删操作,步骤见use_git_1
git config --global http.version HTTP/1.1
#我们不用http2.2的网，可能跟VPN有关
git push 

5)（可选）恢复默认 HTTP/2
若以后网络环境正常想恢复：
git config --global --unset http.version

git config --global user.name ''
git config --global user.email ''
git config --list

