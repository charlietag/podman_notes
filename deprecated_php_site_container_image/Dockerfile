FROM centos:centos7.9.2009
RUN rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && \
    rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm && \
    yum install -y mariadb-devel mariadb-server && \
    yum install -y net-tools && \
    yum install -y mod_php70w php70w-bcmath php70w-cli php70w-common php70w-dba php70w-devel php70w-embedded php70w-enchant php70w-fpm php70w-gd php70w-imap php70w-interbase php70w-intl php70w-ldap php70w-mbstring php70w-mysqlnd php70w-odbc php70w-opcache php70w-pdo php70w-pdo_dblib php70w-pear php70w-pecl-apcu php70w-pecl-mongodb php70w-pecl-redis php70w-pgsql php70w-phpdbg php70w-process php70w-pspell php70w-recode php70w-snmp php70w-soap php70w-sodium php70w-tidy php70w-xml php70w-xmlrpc php70w-mcrypt php70w
COPY php_site_folder /var/www/html
COPY start_php.sh /var/www/html
WORKDIR /var/www/html
CMD [ "bash" ]

# No need to init db, because of mounting an empty db folder
# RUN rm -fr /var/lib/mysql/* && \
#      /usr/libexec/mariadb-prepare-db-dir
