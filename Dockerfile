FROM python:3.11-slim

WORKDIR autogpt_platform/autogpt_libs

COPY . .

RUN pip install poetry

RUN poetry install --no-interaction --no-ansi

CMD ["poetry", "run", "python", "-m", "autogpt_platform"]
