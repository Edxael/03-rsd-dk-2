# Build-Container: docker build -t edxael/oned .
# Run-Container:   docker run -p 8080:8080 edxael/oned

FROM node:alpine 
WORKDIR /usr/app
COPY ./package.json ./
RUN npm install
COPY ./ ./
RUN npm run build
CMD ["npm", "start"]

EXPOSE 8080