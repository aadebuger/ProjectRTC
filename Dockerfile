FROM dockerfile/nodejs:latest 
MAINTAINER hua zhuang  "zhvxxh@gmail.com"

RUN apt-get update 
RUN apt-get install -y git 
#RUN git clone https://github.com/pchab/ProjectRTC.git ProjectRTC
ADD . /ProjectRTC
WORKDIR /ProjectRTC
RUN npm install
#npm start
#RUN apt-get install -y imagemagick
#ENTRYPOINT ["java", "-jar", "/opt/jenkins.war"]
EXPOSE 3000
#CMD ["npm","start"]
CMD ["node","app.js"]
