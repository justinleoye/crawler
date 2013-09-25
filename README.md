# a group of git repos using git submodule

# quick start

**check this first**

http://git.agutong.com:3007/Agutong/dev-guide/wikis/python-dev-setup-guide

** run as normal user, not root**

```sh
#create a new virtualenv
cd
virtualenv pyenv.xxxx
source pyenv.xxxx/bin/activate

#install scipy for numpy
sudo yum install scipy

#clone git repo and sub repos
git clone xxxx-group.git
cd xxxx-group
make setup

# install python package dependecies
pip install -r requirements.txt
```


## git refs

http://git.agutong.com:3007/Agutong/dev-guide/wikis/git-submodule-usage
http://git-scm.com/book/en/Git-Tools-Submodules
http://git.agutong.com/Agutong/dev-guide/wikis/GitUsage