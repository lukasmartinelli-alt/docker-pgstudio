FROM tomcat:7.0.59-jre7
MAINTAINER Lukas Martinelli <me@lukasmartinelli.ch>

WORKDIR $CATALINA_HOME/webapps/
RUN rm -r ROOT
RUN wget http://www.postgresqlstudio.org/?ddownload=47438 -O pgstudio_1.2.zip
RUN unzip pgstudio_1.2.zip && mv pgstudio.war ROOT.war && rm pgstudio_1.2.zip
WORKDIR $CATALINA_HOME
