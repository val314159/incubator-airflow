TAG=uaf # ubuntu airflow

all: rm run

run: buildit
	docker run -it --rm -v`pwd`:`pwd` -w`pwd` \
	--name $(TAG) $(TAG) ./build.sh

buildit:
	docker build --tag $(TAG) .

rm:
	docker rm -f $(TAG) || echo ' ^^^ this is fine ^^^'
