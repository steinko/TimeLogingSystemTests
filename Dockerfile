FROM node:9-slim
FROM cypress/browsers:chrome67-ff57
MAINTAINER Stein Korsveien <steinkor@gmail.com>
USER root
COPY . ./systemtests
WORKDIR ./systemtests
RUN npm i cypress ls -s
CMD ["npm", "start"]

