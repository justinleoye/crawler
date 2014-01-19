
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
	quant-executor start -p ytcj_quotation_crawler crawler.ytcj.kline.m1.daily.stock.debug

test_circulate:
	quant-executor start -p public_portfolio_crawler crawler.public.portfolio.circulate.monthly.debug

test_nbjy:
	quant-executor start -p public_portfolio_crawler crawler.public.portfolio.consult.nbjy.monthly.debug

test_dzjy:
	quant-executor start -p public_portfolio_crawler crawler.public.portfolio.consult.dzjy.monthly.debug

test_xsjj:
	quant-executor start -p public_portfolio_crawler crawler.public.portfolio.consult.xsjj.monthly.debug

test_lsfh:
	quant-executor start -p public_portfolio_crawler crawler.public.portfolio.consult.lsfh.monthly.debug
