1. Napisz Dockerfile oraz zbuduj obraz bazujący na Debian Slim.
    - Zainstaluj w nim vim, curl, wget. (RUN apt-get ..)
    - Jako komendę uruchomieniową ustal curl -v https://example.com (ENTRYPOINT [“...“, “...“])