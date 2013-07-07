
sync:
	git submodule foreach git pull
	git submodule foreach git push

pull:
	git submodule foreach git pull

push:
	git submodule foreach git push

setup:
	git submodule init
	git submodule update
	git submodule foreach git checkout master

master:
	git submodule foreach git checkout master

tmpci:
	git submodule foreach git add -A
	git submodule foreach "git commit  -m'tmp ci' || true"

