FROM node:10.13.0

ENV NODE_ENV production

WORKDIR /usr/src/app/actual

COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]

RUN npm install

COPY . .

CMD npm run build

