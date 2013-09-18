# a group of git repos using git submodule

# quick start

check this first

http://git.agutong.com:3007/Agutong/dev-guide/wikis/python-dev-setup-guide


```sh
#create a new virtualenv
cd
virtualenv pyenv.portfolio
source pyenv.portfolio/bin/activate

#install scipy for numpy
sudo yum install scipy

#clone git repo and sub repos
git clone xxxx-group.git
cd xxxx-group
make setup

# install python package dependecies
pip install -r requirements.txt
```


# git submodule howto

## clone and fetch submodules

```sh
#Cloning a Project with Submodules
git clone git://GIT_REPO_PATH.git  
#eg. git clone ssh://git@git.agutong.com:5678/TemplateProject/repo-group.git

cd GIT_REPO_NAME
#eg: cd repo-group

#add submodule url to .git/config
git submodule init

#pull submodule content
git submodule update

#option:
#don't forget to  checkout master if you want to dev sub repos
git submodule foreach git checkout master
```

## work on submodules

```sh
cd submod
git pull
git checkout -b feature-xxx
#working
git add -A
git commit -am'msg'

cd ..
git status
#modified:   submod

#commit submodule change to main repo
git add submod
git commit -am'update submod'
```

## git refs
http://git-scm.com/book/en/Git-Tools-Submodules
http://git.agutong.com/Agutong/dev-guide/wikis/GitUsage

