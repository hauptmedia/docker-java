all: oracle-java8

oracle-java8:
	docker build -t="hauptmedia/java:oracle-java8" oracle-java8/

.PHONY: oracle-java8 all
