You are setting up a developer environment for the front end developers for your company's new shipping website using Docker. Website files have been provided (found at /home/cloud_user/webfiles/html), and you have been instructed to use Nginx as the underlying web server. Create a containered environment that runs the website on port 80. When finished, create an image of the container and ensure it will work as expected by launching a new container and mapping it to port 80 on the localhost.

Note that an nginx site configuration has been supplied at /home/cloud_user/webfiles/default.conf.

1- create the container:
Create a new container using the official Nginx image from the Docker Hub. Make sure the container is running.

2- Configure Nginx:
Using Docker commands, set up the Nginx webserver, ensuring the provided website files can be accessed on port 80.

3- Create an image and Test:
Create an image of the build. Be sure to test it to ensure it's working as intended!

docker run --name web -dt nginx

docker container ls (to check if it was created)

ls webfiles

cat webfiles/default.conf

docker exec web mkdir /var/www

docker cp webfiles/default.conf web:/etc/nginx/conf.d/default.conf

docker cp webfiles/html/ web:/var/www

docker exec web ls /var/www/html

docker exec web chown -R nginx:nginx /var/www/html

docker inspect web | grep IPAddress

curl <ip address>

docker commit web web-image

docker run -dt --name web01 -p 80:80 web-image

curl localhost (checking again but from our localhost)

and you can also check it in ur browser pasting the ip address