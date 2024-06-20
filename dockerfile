ARG VERSION=18-alpine3.17 
FROM node:${VERSION}

WORKDIR /src 

ENV PORT 7000

COPY package.json package-lock.json ./ 
RUN npm install 

COPY . .

CMD [ "npm", "start" ] 
