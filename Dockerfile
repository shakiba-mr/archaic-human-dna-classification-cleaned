# Use a stable CUDA 12.1 runtime base image on Ubuntu 22.04
FROM nvidia/cuda:12.1.1-runtime-ubuntu22.04

# Prevent interactive configuration prompts during package updates
ENV DEBIAN_FRONTEND=noninteractive

# Install Python and core compiler utilities needed to compile C extensions (like pysam)
RUN apt-get update && apt-get install -y --no-install-recommends \
    python3 \
    python3-pip \
    python3-dev \
    build-essential \
    zlib1g-dev \
    libbz2-dev \
    liblzma-dev \
    libcurl4-gnutls-dev \
    libssl-dev \
    git \
    && rm -rf /var/lib/apt/lists/*

# Set standard global python alias pointing to python3
RUN ln -s /usr/bin/python3 /usr/bin/python

# Configure internal operating workspace
WORKDIR /app

# Copy dependency definitions first to take advantage of Docker cache layers
COPY requirements.txt .

# Install PyTorch pointing directly to official CUDA 12.1 wheel index mirror
RUN pip install --no-cache-dir torch==2.5.1 torchvision==0.20.1 torchaudio==2.5.1 --extra-index-url https://download.pytorch.org/whl/cu121

# Install remaining baseline python infrastructure requirements
RUN pip install --no-cache-dir -r requirements.txt

# Copy all project contents (datasets, checkpoints, models) into the container
COPY . .

# Ensure line endings are standard and execute permissions are allowed for the script
RUN chmod +x run_tests.sh

# Fallback execution command dropping straight into a terminal
CMD ["/bin/bash"]