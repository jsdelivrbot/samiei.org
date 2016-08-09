all: update

style:
	sass --style compressed --update assets/scss/app.scss:assets/css/app.min.css

watch:
	sass --style compressed --watch assets/scss/app.scss:assets/css/app.min.css

pages:
	php bin/make

update:
	git pull origin master
	composer update --no-dev -o
	make style
	make pages