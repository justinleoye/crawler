# a group of git repos using git submodule

# quick start

## clone and fetch submodules

```sh
#Cloning a Project with Submodules
git clone git://parent.git

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

# refs
http://git-scm.com/book/en/Git-Tools-Submodules
http://git.agutong.com/Agutong/dev-guide/wikis/GitUsage