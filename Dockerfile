FROM tomcat
RUN mkdir /usr/local/tomcat/webapps/root
RUN mkdir /home/avinash
RUN apt-get update -y && apt-get install git -y

WORKDIR /home/avinash
RUN git init
RUN git config --global user.name "avinashbamne"
RUN git config --global user.email "avinashbamne41@gmail.com"
RUN git checkout -b avinash
RUN echo "<h1>hello world </h1>" > index.html
RUN git add . && git commit -m "added index.html"

WORKDIR /usr/local/tomcat/webapps/root
RUN cp /home/avinash/index.html .
EXPOSE 8080
ENTRYPOINT  ["/usr/local/tomcat/bin/catalina.sh","run"]
