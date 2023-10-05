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

## clone 一个远程库
先创建一个远程库，再连接到本地库
```shell

git clone git@github:tiantangsuantai/gitskills.git

```

## 分支管理
分支就是科幻电影里面的平行宇宙，当你正在电脑前努力学习Git的时候，另一个你正在另一个平行宇宙里努力学习SVN。

如果两个平行宇宙互不干扰，那对现在的你也没啥影响。不过，在某个时间点，两个平行宇宙合并了，结果，你既学会了Git又学会了SVN！

创建一个属于自己的分支进行开发。
### 创建和合并分支
在版本回退里，你已经知道，每次提交，Git都把它们串成一条时间线，这条时间线就是一个分支。截止到目前，只有一条时间线，在Git里，这个分支叫主分支，即master分支。HEAD严格来说不是指向提交，而是指向master，master才是指向提交的，所以，HEAD指向的就是当前分支。

一开始的时候，master分支是一条线，Git用master指向最新的提交，再用HEAD指向master，就能确定当前分支，以及当前分支的提交点：

                                                           HEAD
                                                              │
                                                              │
                                                              ▼
                                                           master
                                                              │
                                                              │
                                                              ▼
                                          ┌───┐    ┌───┐    ┌───┐
                                          │   │───▶│   │───▶│   │
                                          └───┘    └───┘    └───┘

每次提交，master分支都会向前移动一步，这样，随着你不断提交，master分支的线也越来越长。

当我们创建新的分支，例如dev时，Git新建了一个指针叫dev，指向master相同的提交，再把HEAD指向dev，就表示当前分支在dev上：


                                                           master
                                                              │
                                                              │
                                                              ▼
                                          ┌───┐    ┌───┐    ┌───┐
                                          │   │───▶│   │───▶│   │
                                          └───┘    └───┘    └───┘
                                                              ▲
                                                              │
                                                              │
                                                             dev
                                                              ▲
                                                              │
                                                              │
                                                            HEAD

假如我们在dev上的工作完成了，就可以把dev合并到master上。Git怎么合并呢？最简单的方法，就是直接把master指向dev的当前提交，就完成了合并：
                                                 HEAD
                                                   │
                                                   │
                                                   ▼
                                                master
                                                   │
                                                   │
                                                   ▼
                      ┌───┐    ┌───┐    ┌───┐    ┌───┐
                      │   │───▶│   │───▶│   │───▶│   │
                      └───┘    └───┘    └───┘    └───┘


```shell

# 创建一个分支, 并切换到dev分支
# -b 创建并切换
git checkout -b dev

# 相当于：
git branch dev
git checkout dev


```

