FROM python:3.6
RUN apt-get update && apt-get -y update

WORKDIR jup/
COPY . .

RUN pip install jupyter -U && pip install jupyterlab
RUN pip3 install -r requirements.txt

WORKDIR /jup/Notebooks
EXPOSE 8888


ENTRYPOINT ["jupyter", "lab","--ip=0.0.0.0","--allow-root"]
