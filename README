http://help.github.com/linux-set-up-git/
$ sudo apt-get install git-core git-gui git-doc
We use SSH keys to establish a secure connection between your computer and GitHub. 


	
Global setup:
 Download and install Git
  git config --global user.name "Your Name"
  git config --global user.email tong.xm520@gmail.com
        
Next steps:
  mkdir ruby-code
  cd ruby-code
  git init
  touch README
  git add README
  git commit -am 'first commit'
  git remote add origin git@github.com:tongxm520/ruby-code.git
  git push origin master
      
Existing Git Repo?
  cd existing_git_repo
  git remote add origin git@github.com:tongxm520/ruby-code.git
  git push origin master

------------------------------------------------------
You asked me to pull without telling me which branch you
want to merge with, and 'branch.master.merge' in
your configuration file does not tell me, either. Please
specify which branch you want to use on the command line and
try again (e.g. 'git pull <repository> <refspec>').
See git-pull(1) for details.
--------------------------------------------------------------------
mkdir wonder
cd wonder
git init

git pull git@github.com:tongxm520/wonder.git
git add .
git commit -a -m "wonder"
git push git@github.com:tongxm520/wonder.git
------------------------------------------------------------


$ git push origin master
Permission denied (publickey).
fatal: The remote end hung up unexpectedly

fix fatal:
cd ~/.ssh
ls -al
# Lists the files in your .ssh directory

ssh-keygen -t rsa -C "your_email@example.com"
# Creates a new ssh key, using the provided email as a label

#Then add your new key to the ssh-agent:
ssh-add ~/.ssh/id_rsa

sudo apt-get install xclip
xclip -sel clip < ~/.ssh/id_rsa.pub
# Copies the contents of the id_rsa.pub file to your clipboard

account settings => add ssh-key

cd /home/simon/code
git clone git@github.com:tongxm520/ruby-code.git


test:
ssh git@github.com



git命令： 
man git

例如：工作目录下有个zh目录，如果不想把它加入到Git管理中，则执行： 
echo "zh" &gt; .gitignore 
git add . 
有关gitignore 文件的诸多细节知识可阅读其使用手册：man gitignore

git pull：从其他的版本库（既可以是远程的也可以是本地的）将代码更新到本地，例如：'git pull origin master'就是将origin这个版本库的代码更新到本地的master主枝，该功能类似于SVN的update

git add：是 将当前更改或者新增的文件加入到Git的索引中，加入到Git的索引中就表示记入了版本历史中，这也是提交之前所需要执行的一步，例如'git add app/model/user.rb'就会增加app/model/user.rb文件到Git的索引中，该功能类似于SVN的add

git rm：从当前的工作空间中和索引中删除文件，例如'git rm app/model/user.rb'，该功能类似于SVN的rm、del

git commit：提交当前工作空间的修改内容，类似于SVN的commit命令，例如'git commit -m story #3, add user model'，提交的时候必须用-m来输入一条提交信息，该功能类似于SVN的commit

git push：将本地commit的代码更新到远程版本库中，例如'git push origin'就会将本地的代码更新到名为orgin的远程版本库中

git log：查看历史日志，该功能类似于SVN的log

git revert：还原一个版本的修改，必须提供一个具体的Git版本号，例如'git revert bbaf6fb5060b4875b18ff9ff637ce118256d6f20'，Git的版本号都是生成的一个哈希值

上面的命令几乎都是每个版本控制工具所公有的，下面就开始尝试一下Git独有的一些命令：

git branch：对分支的增、删、查等操作，例如'git branch new_branch'会从当前的工作版本创建一个叫做new_branch的新分支，'git branch -D new_branch'就会强制删除叫做new_branch的分支，'git branch'就会列出本地所有的分支

git checkout：Git的checkout有两个作用，其一是在不同的branch之间进行切换，例如'git checkout new_branch'就会切换到new_branch的分支上去；另一个功能是还原代码的作用，例如'git checkout app/model/user.rb'就会将user.rb文件从上一个已提交的版本中更新回来，未提交的内容全部会回滚

git rebase：用下面两幅图解释会比较清楚一些，rebase命令执行后，实际上是将分支点从C移到了G，这样分支也就具有了从C到G的功能

git reset：将当前的工作目录完全回滚到指定的版本号，假设如下图，我们有A-G五次提交的版本，其中C的版本号是 bbaf6fb5060b4875b18ff9ff637ce118256d6f20，我们执行了'git reset bbaf6fb5060b4875b18ff9ff637ce118256d6f20'那么结果就只剩下了A-C三个提交的版本

git stash：将当前未提交的工作存入Git工作栈中，时机成熟的时候再应用回来，这里暂时提一下这个命令的用法，后面在技巧篇会重点讲解

git config：利用这个命令可以新增、更改Git的各种设置，例如'git config branch.master.remote origin'就将master的远程版本库设置为别名叫做origin版本库，后面在技巧篇会利用这个命令个性化设置你的Git，为你打造独一无二的 Git

git tag：可以将某个具体的版本打上一个标签，这样你就不需要记忆复杂的版本号哈希值了，例如你可以使用'git tag revert_version bbaf6fb5060b4875b18ff9ff637ce118256d6f20'来标记这个被你还原的版本，那么以后你想查看该版本时，就可以使用 revert_version标签名，而不是哈希值了

Fork it
Create your feature branch (`git checkout -b my-new-feature`)
Commit your changes (`git commit -am 'Added some feature'`)
Push to the branch (`git push origin my-new-feature`)




