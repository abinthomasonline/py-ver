#!/bin/bash

# List of Python versions
versions=("3.7.2" "3.7.1" "3.7.0")

# Loop through the versions
for version in "${versions[@]}"
do
    # Modify Dockerfile python version
    # (Made this a python script because `sed -i` doesn't work on Mac and I'm too lazy to figure out the correct syntax for it on Mac.)
    python modify_dockerfile.py --version $version
    
    echo "Building Docker image for Python version $version"
    # # Build the Docker image
    docker buildx build --platform linux/amd64 -t my-python-app . -f Dockerfile

    # # Run the Docker container
    docker run --rm --platform linux/amd64 my-python-app

    # # Clean up the Docker image
    docker rmi my-python-app
done
