FROM centos:7
RUN yum install -y nodejs
RUN mkdir /gitclone
WORKDIR /gitclone
RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/shrichaugule3113/studentapp-ui.git
WORKDIR devops-fullstack-app/frontend
RUN npm install -y
EXPOSE 3000
CMD ["npm","start"]
