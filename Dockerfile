FROM python:3.11-slim

WORKDIR /app

# System dependencies required by many python packages
RUN apt-get update && apt-get install -y \
    git \
    curl \
    build-essential \
    libffi-dev \
    libssl-dev \
    && rm -rf /var/lib/apt/lists/*

# Copy repo
COPY . .

# Upgrade pip
RUN pip install --upgrade pip setuptools wheel

# Install AutoGPT libs from pyproject
RUN pip install ./autogpt_platform/autogpt_libs

# Install root project if needed
RUN pip install -e .

# Default start command
CMD ["python", "-m", "autogpt"]
