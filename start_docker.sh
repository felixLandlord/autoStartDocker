#!/bin/bash

# Check if Docker is running
if ! docker info > /dev/null 2>&1; then
    echo "Docker is not running. Starting Docker Desktop..."
    
    # Open Docker Desktop application
    open --background -a Docker

    # Wait until Docker daemon is running
    while ! docker info > /dev/null 2>&1; do
        echo "Waiting for Docker to start..."
        sleep 2
    done

    echo "Docker is now running!"
else
    echo "Docker is already running."
fi
