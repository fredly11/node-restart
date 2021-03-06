FROM node:alpine
LABEL name="node-restart" \
      version="3.0"
COPY package.json package.json
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm","start"]