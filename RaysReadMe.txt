
Project Repository Url 
https://github.com/adelia-g/lecture-devops-app

Project solution url 
https://gitlab.beuth-hochschule.de/s79753/lecture-devops-app/-/tree/master

Project base url: 
https://github.com/aamirpinger/todo-app-client-server-kubernetes

Project Example: 
https://itnext.io/react-express-node-js-and-mongodb-mern-stack-microservices-based-application-deployment-on-ec4607cec74d

- Prod-Umgebung:
    - docker-compose -f docker-compose.prod.yml build  
    - docker-compose -f docker-compose.prod.yml up -d  
    - docker-compose -f docker-compose.prod.yml down  


Questions/Queries 


1. Building the App 
  1.A Creating Image 
  2. Creating db instance 
2. Pushing image to the docker repository 
3. Enabling Kubernetes cluster on the GCP 
3. Deploying Image on the cluster 
4. Add testing in the github action 
5. Add terraform provisioning 
6. Add prometheus monitoring to the app 

Task List
1. Local Image build [Done]
2. Deployment to the cluster [Done]
3. CI/CD through github actions [Raza]
4. Adding Selenium test in the pipeline [Raza]
5. Provisioning Terraform through github actions [Abbaq]
6. Monitoring cluster through prometheus [Abbaq]


Docker build command: 
docker build . -t devops_app 
Docker run command at local: 
docker run -d -p 3000:3000 --name devops_app --link mongo_prod -e MONGODB_URL='mongodb://mongo_prod:27017/devops_app' -e ENV='prod' --restart always todo_server



docker run -d -p 5000:5000 --name devops_app --link mongo_prod -e CLIENT='localhost:8080' -e MONGODB_URL='mongodb://mongo_prod:27017/devops_app' -e ENV='prod' --restart always todo_server

