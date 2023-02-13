# rootless container:
#  cannot connect to each other, because only root user can assign IP
# So I build my own image
# Ctrl-p-q to detach
podman run --rm -p 127.0.0.1:9000:9000 -it -v /home/podmanuser/podman_workzone/php_sites/mysql_database:/var/lib/mysql --name centos7 charlie_centos7
