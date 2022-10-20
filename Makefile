.PHONY: clean clean-build clean-pyc lib write-lib docker-start docker-stop init terminate reboot fmt-data
.DEFAULT_GOAL := help

clean: clean-build clean-pyc

clean-build: ## remove build artifacts
	rm -fr build/
	rm -fr dist/
	rm -fr .eggs/
	find . -name '*.egg-info' -exec rm -fr {} +
	find . -name '*.egg' -exec rm -f {} +

clean-pyc: ## remove Python file artifacts
	find . -name '*.pyc' -exec rm -f {} +
	find . -name '*.pyo' -exec rm -f {} +
	find . -name '*~' -exec rm -f {} +
	find . -name '__pycache__' -exec rm -fr {} +

lib: ## install required packages in Python
	docker exec yamada_sah-jupyterlab-1 python -m pip install -r ./tools/requirements_py.txt

write-lib: ## export reqired packages
	docker exec yamada_sah-jupyterlab-1 pip list --format=freeze > ./tools/requirements_py.txt

docker-start: ## start docker container
	docker start yamada_sah-jupyterlab-1
	open http://localhost:8888

docker-stop: ## stop docker container
	docker stop yamada_sah-jupyterlab-1

init:
	sh authorize_id.sh docker-compose.yml
	docker compose up -d
	make lib
	wget "https://drive.google.com/uc?export=download&id=1ci_lIrgNxkRy8SHhkuQ20eKBeDa7n6ck" -O ./data/rawdata.zip
	make docker-start

terminate: ## remove docker container
	docker compose down

reboot: ## remove docker container and create new one
	make terminate
	make init

fmt-data: ## format data matrix
	unzip data/rawdata.zip -d data
	chmod -R 777 data/rawdata
	docker exec yamada_sah-jupyterlab-1 python data/rawdata/fmt.py
	rm data/rawdata.zip
