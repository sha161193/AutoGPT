FROM python:3.11-slim

WORKDIR /app

COPY . .

RUN apt-get update && apt-get install -y git

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD ["python", "-m", "autogpt"]
