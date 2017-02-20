FROM conetix/wordpress-with-wp-cli
MAINTAINER Stephen Lovell <hello@stephencreates.com>

COPY _dockerfiles/wp_bootstrap /bin/
RUN chmod +x /bin/wp_bootstrap
COPY _dockerfiles/ms_htaccess.txt /user/bin
