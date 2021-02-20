# 简单 Git Bash 操作说明：

**创建ssh**：```ssh-keygen -t rsa -C "20192005041@m.scnu.edu.cn"```

**以下以 GitHub 已经有了仓库了为例：**

**远程仓库clone到本地**：```git clone git@github.com:TommyBei/PWT.git```

**本地创造了一个新文件，必须先add**：```git add xxx```

**commit**:```git commit -m "This is a commit"```

**push**:```git push```

**pull**:```git pull```

**版本回退**：```git reset --hard 4cba896```

**回退后强行同步**：（注：这也是先有本地库再有远程库的操作）

```git push origin HEAD --force```

## git add 命令：

**提交所有变化**: ```git add -A```

**只提提交修改、删除的变化，不提交新文件变化**: ```git add -u```

**只提交修改、新文件变化，不提交删除变化**: ```git add .```

**取消所有add**: ```git reset HEAD```

## 分支操作：

**查看当前分支**: ```git branch```

**查看所有分支**: ```git branch -a```

**查看所有分支**: ```git branch -r```

**切换分支**: ```git checkout```

## ssh密钥操作：(应该是对的)

**创建密钥**：```ssh-keygen -t rsa -C "eric008@xxxhi.cc"```

**检查当前用户**：```ssh -T git@github.com```

**删除密钥**：```ssh-add -d .ssh/id_rsa```

**添加密钥**：```ssh-add .ssh/id_rsa_eric```

## Could not open a connection to your authentication agent.

但是实际操作里面这个顺序会报错，我在CSDN找到了一个办法：

1. ```ssh-agent bash```
2. ```ssh-add .ssh/id_rsa_eric```
3. 这个时候就能检查用户了，提示已经切换
4. 然鹅下一次的时候又要重做，就离谱
5. 也许我应该直接把密钥文件给替换了！

重装都不行，最后我是根据https://blog.csdn.net/yuanlaijike/article/details/95650625，清除并设置了所有配置，：

```
git config --global --unset user.name
git config --global --unset user.email
git config --global user.name "AuthorEric008"
git config --global user.email "eric008@xxxhi.cc"
```

并且在某个时候尝试过这样的组合：

```
eval   `ssh-agent -s`
ssh-agent bash
ssh-add .ssh/id_rsa
ssh-add -l
```

虽然exit后又炸了，但好歹能以AuthorEric008的身份提交了。

