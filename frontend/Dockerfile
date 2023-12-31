# pull official base image
FROM node:21.5.0

# set work directory
WORKDIR /app

# copy npm packages info
COPY package.json package-lock.json ./

# install dependencies safety
RUN npm ci --silent

COPY . .

# build react app
RUN npm run build