FROM bytemark/webdav:2.4 AS ezstats-webdav

#=== Set custom entrypoint ===
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

#=== Configuration dav.conf ===
COPY dav.conf /usr/local/apache2/conf/conf-available/dav.conf
