FROM node:10

# Setting working directory. All the path will be relative to WORKDIR
WORKDIR /usr/src/app

# Installing dependencies
COPY package*.json ./
RUN yarn

# Copying source files
COPY . .

# Building app
# RUN yarn build

# Running the app
CMD [ "yarn", "deploy:prod" ]

EXPOSE 3000