server {
    listen ${LISTEN_PORT};

    location /${SUBDIR}/static {
        alias /vol/static;
    }

    location /${SUBDIR} {
        include                 /etc/nginx/uwsgi_params;
        uwsgi_pass              ${APP_HOST}:${APP_PORT};
        client_max_body_size    10M;
    }
}
