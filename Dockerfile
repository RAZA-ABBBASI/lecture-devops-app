FROM node:12
ENV ENV $ENV
WORKDIR /lecture-devops-app
COPY . .
WORKDIR /lecture-devops-app/app/client
RUN npm install
RUN npm run build
RUN mv build /lecture-devops-app/app/server/src/public
WORKDIR /lecture-devops-app/app/server
RUN npm install
EXPOSE 3000

RUN npm install env-cmd

CMD [ "/bin/sh", "-c" , "npm run ${ENV}-start" ]
