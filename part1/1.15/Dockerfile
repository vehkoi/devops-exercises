FROM python:3.10

WORKDIR /mydir

RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/vehkoi/hangman.git .

CMD ["python", "hirsipuu.py"]
