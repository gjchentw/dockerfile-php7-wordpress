FROM	ghcr.io/gjchentw/php7:7.4

ENV	TZ="Asia/Taipei" \
	APP="/app/wordpress" \
	NGINX_SERVER_TPL="/etc/nginx/conf.d/default.template" \
	PHPFPM_DISABLE_EXT="mongodb intl soap phar ldap imap imap interbase gmp odbc dba tidy snmp pdo_firebird pdo_dblib pdo_odbc readline wddx pdo_firebird calendar bcmath enchant pspell" \
	PHP_ERROR_LOG=syslog \
	PHP_LOG_ERRORS=1 \
	PHP_DISPLAY_ERRORS="" \
	PHP_ERROR_REPORTING=-1 \
	PHP_SHORT_OPEN_TAG=0 \
	PHP_MAX_EXECUTION_TIME=300 \
	PHP_MAX_INPUT_TIME=300 \
	PHP_MEMORY_LIMIT=1024M \
	PHP_CLI_MEMORY_LIMIT=1024M \
	PHP_POST_MAX_SIZE=512M \
	PHP_UPLOAD_MAX_FILESIZE=512M \
	PHP_SESSION_NAME=PHPSESSID \
	PHP_SESSION_SAVE_HANDLER=files \
	PHP_SESSION_SAVE_PATH=/tmp \
	PHPFPM_LISTEN=127.0.0.1:9000 \
	PHPFPM_USER=nobody \
	PHPFPM_GROUP=nogroup \
	PHPFPM_PM=ondemand \
	PHPFPM_PM_MAX_CHILDREN=32 \
	PHPFPM_PM_START_SERVERS=4 \
	PHPFPM_PM_MIN_SPARE_SERVERS=2 \
	PHPFPM_PM_MAX_SPARE_SERVERS=6 \
	PHPFPM_PM_MAX_REQUESTS=16

COPY	nginx /etc/nginx/conf.d/

EXPOSE	80
