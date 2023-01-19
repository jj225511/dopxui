FROM nginx:latest
LABEL ZYZH
EXPOSE 80
USER root
COPY nginx.conf /etc/nginx/nginx.conf
COPY entrypoint.sh ./
RUN chmod a+x ./entrypoint.sh
ENTRYPOINT [ "./entrypoint.sh" ]
