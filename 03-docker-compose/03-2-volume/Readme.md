2. Utwórz dwa pliki Dockerfile oraz niezbędne skrypty.
	- kontener na podstawie pierwszego Dockerfile powinien w pętli pisać do pliku
	- kontener na podstawie drugiego Dockerfile powinien w pętli czytać z pliku
	- plik powinien być udostępniony za pośrednictwem volume


docker build -t writer:1.0 -f ./writer/Dockerfile
docker run -v writer-reader:/tmp --name writer -d writer:1.0

docker build -t reader:1.0 -f ./reader/Dockerfile
docker run -v writer-reader:/tmp --name reader -d reader:1.0



