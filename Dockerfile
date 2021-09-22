FROM node:latest
RUN mkdir -p /opt/app
WORKDIR /opt/app
RUN adduser --system app
COPY addressbook/ .
RUN npm install
RUN chown -R app /opt/app
USER app
EXPOSE 3000
CMD [ "npm", "run", "pm2" ]