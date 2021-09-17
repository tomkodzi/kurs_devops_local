Dodaj do serwisu nginx endpoint `/status`, który zwróci kod 200 oraz utworzoną przez Ciebie informację, np "Status: OK". 
Zweryfikuj działanie.

docker run -p 80:80 --name nginx-zadanie1 -d nginx1:1.0.0


docker build -t nginx1:1.0.0 .
docker run -p 80:80 -v nginx1:/usr/share/nginx/html --name nginx-zadanie1 -d nginx1:1.0.0 
docker run -p 80:80 --name nginx-zadanie1 -d nginx1:1.0.0 