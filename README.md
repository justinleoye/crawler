# a group of git repos using git submodule

# quick start

**check this first**

http://git.agutong.com:3007/Agutong/dev-guide/wikis/python-dev-setup-guide

```
user=$USER        #your current user name
su                #run as root
cd /opt
wget ftp://192.168.1.152/public/pyenv.crawler.fedora.tgz
tar -xzf pyenv.crawler.fedora.tgz
chown -R $user:$user pyenv.crawler
exit
```

**run as normal user**

setup

```sh
git clone ssh://git@git.agutong.com:5678/financial-data-crawler/public-portfolio-crawler-group.git
cd public-portfolio-crawler-group

# clone git submodules
make setup

# install python package dependecies
pip install -r requirements.txt
```

run test command

```
. env.sh
make test
```



## git refs

http://git.agutong.com:3007/Agutong/dev-guide/wikis/git-submodule-usage
http://git-scm.com/book/en/Git-Tools-Submodules
http://git.agutong.com:3007/Agutong/dev-guide/wikis/git-usage

