FROM python:3.11-slim

WORKDIR /app

COPY . .

RUN pip install poetry

RUN poetry install

CMD ["poetry", "run", "python", "-m", "autogpt_platform"]
