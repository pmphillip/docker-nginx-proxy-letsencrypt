FROM jwilder/nginx-proxy

MAINTAINER David Parrish <daveparrish@tutanota.com>
MAINTAINER Yves Blusseau <90z7oey02@sneakemail.com>
MAINTAINER Hadrien Mary <hadrien.mary@gmail.com>

COPY /install_letsencrypt.sh /app/

# Install simp_le program
RUN chmod +rx /app/install_letsencrypt.sh && /app/install_letsencrypt.sh && rm -f /app/install_letsencrypt.sh

COPY . /app/
