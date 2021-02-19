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



## ssh密钥操作：(应该是对的)

**创建密钥**：```ssh-keygen -t rsa -C "eric008@xxxhi.cc"```

**检查当前用户**：```ssh -T git@github.com```

**删除密钥**：```ssh-add -d .ssh/id_rsa```

**添加密钥**：```ssh-add .ssh/id_rsa_eric```

