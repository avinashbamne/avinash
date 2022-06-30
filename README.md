as per your instruction i have created Dockerfile.
content of docker file is as follow - 
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

install docker through command = sudo yum install docker -y 
sudo  service docker start
For Building the Dockerfile i use Command = sudo docker build -t imagename .
for creating container from image i use command = sudo docker run -itdp 3111:8080 imagename 
in this command i have run docker container and map port 3111 with it .
content of index.html is <h1> hello world </h1> .
git command i used it in dockerfile 
git init
git config --global user.name "avinashbamne"
git config --global user.email "avinashbamne41@gmail.com"
for creating branch = git checkout -b avinash
screeshot for output you can see in mail attachment ![image](https://user-images.githubusercontent.com/108449703/176693035-a4207860-0b10-44fa-83d9-34ddca2084f3.png)
