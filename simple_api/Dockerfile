FROM python:2.7-stretch
LABEL image.authors="kiki@mailo.fr"
COPY ./student_age.* /simple_api/
COPY ./entrypoint.sh /
RUN apt-get update -y && apt-get install \
	python-dev \
	python3-dev \
	libsasl2-dev \
	python-dev \
	libldap2-dev \
	libssl-dev -y; \
pip install \
	flask==1.1.2 \
	flask_httpauth==4.1.0 \
	flask_simpleldap \
	python-dotenv==0.14.0; \
apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*; \
chmod 700 /entrypoint.sh
WORKDIR /simple_api
EXPOSE 5000
VOLUME /home/vagrant/student-list/data/:/data/
ENTRYPOINT [ "/entrypoint.sh" ]

