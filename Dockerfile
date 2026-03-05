FROM python:3.11-slim

WORKDIR /app

# install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    curl \
    build-essential \
    libffi-dev \
    libssl-dev \
    && rm -rf /var/lib/apt/lists/*

# copy repo
COPY . .

# upgrade pip
RUN pip install --upgrade pip setuptools wheel

# install autogpt libs
RUN pip install ./autogpt_platform/autogpt_libs

# start autogpt
CMD ["python", "-m", "autogpt"]
