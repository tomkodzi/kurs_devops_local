Zapewnij, aby serwis nginx udostępniał plik index.html przygotowany przez Ciebie.
  - napisz prosty plik index.html, dodaj go do obrazu
    - dyrektywą COPY
    - za pośrednictwem volume


docker build -t nginx1:1.0.0 .
docker volume create nginx1
docker run -p 80:80 -v nginx1:/usr/share/nginx/html --name nginx-zadanie1 -d nginx1:1.0.0 
docker run -p 80:80 --name nginx-zadanie1 -d nginx1:1.0.0 