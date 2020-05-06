FROM node:alpine
WORKDIR /var/www/html/api
RUN yarn global add pm2
RUN yarn global add laravel-echo-server
ENV NODE_ENV=production
ENV HOST 0.0.0.0
# RUN yarn && yarn build
CMD [ "laravel-echo-server", "start", "--force"]