# Podman Notes

~Some of my tested files~

* Running container, and remove the container after exit, not just stop container (`--rm`)

  ```bash
  podman run --rm -p 127.0.0.1:9000:9000 -it -v /host/mysql_database:/var/lib/mysql --name myname image:image
  ```

* escape from container without stopping container

  ```bash
  Ctrl-p Ctrl-q
  ```
