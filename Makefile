default: deploy

hugo_build:
	hugo --gc --minify

docker_build:
	docker build -t hugo-site-ei .

docker_deploy:
	docker run -d -p 80:80 hugo-site-ei

deploy: hugo_build docker_build docker_deploy
