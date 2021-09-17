1. Zapewnij połączenie pomiędzy dwoma kontenerami - nginx oraz odpytującego dany endpoint:
	- utwórz sieć „my-network”,
	- dostosuj skrypt odpytujący endpoint tak, aby odpytywał cyklicznie z zadaną częstotliwością (domyślnie 5 sekund)
	- uruchom obydwa utworzone serwisy w tej sieci tak, aby serwis odpytujący dowolny endpoint zapytał serwis nginx
	- z którego parametru skorzystasz - expose, czy port dla serwisu nginx? Dlaczego?

	docker build -t nginx2:1.0 ./writer/Dockerfile
	docker run -p 80:80 --name nginx-service nginx2:1.0

	docker build -t requester:1.0 ./requester/Dockerfile
	docker run --name requester requester:1.0