FROM python:3.11-slim

WORKDIR /app

RUN apt-get update && apt-get install -y git

# Copy dependency files first
COPY autogpt_platform/autogpt_libs/pyproject.toml ./pyproject.toml

RUN pip install --upgrade pip
RUN pip install .

# Copy the rest of the project
COPY . .

EXPOSE 8000

CMD ["python", "-m", "autogpt"]
