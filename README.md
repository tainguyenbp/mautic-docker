1.  *run cmd build images docker:*<br>
    **docker build -t mautic/mautic:2.15.2**<br>
2.  *run docker-compose*<br>
    **docker-compose up -d**<br>
3.  *migrate docker-compose:*<br>
    **docker exec -it mautic /bin/bash**<br>
4.  *migrate docker-compose:*<br>
    **docker exec -it mautic /bin/bash -c "chown -R www-data:www-data /var/www/html"**<br>
5.  *migrate docker-compose:*<br>
    **docker exec -it mautic /bin/bash -c "ls -la"**<br>
6.  *import database:*<br>
    **docker exec -i mauticdatabase mysql -h127.0.0.1 -umautic -pmautic mautic < ./mautic.sql**<br>
7.  *export database:*<br>
    **docker exec -i mauticdatabase mysqldump -umautic -pmautic --databases mautic > ./mautic.sql**<br>