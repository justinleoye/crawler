
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
	git submodule foreach git pull
	git submodule foreach git add -A
	git submodule foreach "git commit  -m'tmp ci' || true"
	git submodule foreach git push

update:
	git pull
	git submodule init
	git submodule update
	git submodule foreach git checkout master
	git submodule foreach git pull

test:
	quant-executor start -p ytcj_quotation_crawler crawler.ytcj.kline.m1.daily.stock

