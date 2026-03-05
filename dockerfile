FROM python:3.11

WORKDIR /app

RUN apt-get update && apt-get install -y git

RUN git clone https://github.com/Significant-Gravitas/AutoGPT.git .

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD ["python", "-m", "autogpt"]
