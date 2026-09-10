FROM nginx:alpine
# Static shell only. The dynamic /build output (u/) and sitemap.xml are mounted
# in at runtime so the Discord /build pipeline keeps writing to them.
COPY site/ /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
