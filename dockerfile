# Use the official Ubuntu 20.04 as a base image
FROM ubuntu:20.04

# Set environment variables to avoid interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Update package lists and install basic utilities
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    vim \
    git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /app

# Default command to run when the container starts
CMD ["bash"]