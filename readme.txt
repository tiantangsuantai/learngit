git is a good thing
git is fucking thing


---


NICE ,,,,,,


but the code can be see by everyday



---
```shell
# 将本地仓库链接到远程库
# 远程仓库名是origin
git remote add origin git@github.com:tiantangsuantai/learngit.git

# 将本地的分支master 提交到 origin
# 由于远程库是空的，我们第一次推送master分支时，加上了-u参数，Git不但会把本地的master分支内容推送的远程新的master分支，还会把本地的master分支和远程的master分支关联起来，在以后的推送或者拉取时就可以简化命令。
git push -u origin master


# 查看远程库的信息
git remote -v

# 删除远程库，当然只是删除一个远程库和本地库的绑定关系
git remote rm origin


```
