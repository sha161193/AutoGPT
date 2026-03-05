FROM python:3.11-slim

WORKDIR /app

# install git
RUN apt-get update && apt-get install -y git

# copy repo
COPY . .

# move into classic agent
WORKDIR /app/classic

# install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# run the agent
CMD ["python", "-m", "autogpt"]
