Utwórz Dockerfile bazujący na konfiguracji nginx. Zapewnij, aby serwis nginx był osiągalny z hosta.

docker build -t nginx1:1.0.0 .
docker run -p 80:80 --name nginx-zadanie1 -d nginx1:1.0.0