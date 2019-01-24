


using goocle cloud build: 
https://cloud.google.com/cloud-build/
go to console.






Tutorial to deploy application:
https://cloud.google.com/kubernetes-engine/docs/tutorials/hello-app




# STEPS
Create project like single deployment node + react
Create Github repository "rsd-dk-2"

Create Project on GoogleCloud: burgerMenu / IAM & admin / Manage resources / Create new project
Add  Cloud-Build: burgerMenu / Cloud Build
In cloud build  -->  click [Enable Cloud Build API]
Create a triger: Trigers / "GitHub" / continue / select-Repo / {add setings} / click "Create Trigger" / optional-- "run trigger"

Create Kubernetes-Cluster: burgerMenu / Kubernetes Engine {waite} / Create-Cluster/ {add setings} / click "Create" and wait / click-project / 



===============================================================
    EXAMPLE USED ON C-INN 
===============================================================
FROM node:8

LABEL maintainer="orrin@webaholics.co"

COPY . /worspace/src

WORKDIR /worspace/src

RUN npm install

RUN make

EXPOSE 3000

EXPOSE 3001

ENTRYPOINT ["make", "run"]
===============================================================