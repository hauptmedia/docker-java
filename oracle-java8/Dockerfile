FROM debian:jessie
MAINTAINER Julian Haupt <julian.haupt@hauptmedia.de>

ENV	DEBIAN_FRONTEND noninteractive

RUN	echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu precise main" | tee /etc/apt/sources.list.d/webupd8team-java.list && \
	echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu precise main" | tee -a /etc/apt/sources.list.d/webupd8team-java.list && \
	apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886 && \
	apt-get update -qq && \
	echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
	apt-get install oracle-java8-installer libxext-dev libxrender-dev libxtst-dev -y --no-install-recommends && \
	apt-get clean autoclean && \
	apt-get autoremove --yes && \
	rm -rf /var/lib/{apt,dpkg,cache,log}/ && \
 	rm -rf /var/cache/oracle-jdk8-installer

# integrate Unlimited Strength Jurisdiction Policy Files
ADD	local_policy.jar /usr/lib/jvm/java-8-oracle/jre/lib/security/local_policy.jar
ADD	US_export_policy.jar /usr/lib/jvm/java-8-oracle/jre/lib/security/US_export_policy.jar

ENV	JAVA_HOME /usr/lib/jvm/java-8-oracle

CMD ["bash"]
