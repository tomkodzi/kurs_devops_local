FROM node:14-buster as npm

WORKDIR /app/frontend
EXPOSE 80
COPY . .

RUN npm install 
#-g npm@latest
RUN npm run build 

FROM nginx:1.20

COPY --from=npm /app/frontend/build/. /usr/share/nginx/html
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/default.conf

#RUN service nginx restart
CMD ["nginx", "-g", "daemon off;"]
