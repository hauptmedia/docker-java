oracle-java7:
	docker build -t="hauptmedia/java:oracle-java7" oracle-java7/

oracle-java8:
	docker build -t="hauptmedia/java:oracle-java8" oracle-java8/

.PHONY: oracle-java7 oracle-java8
