# Use the official Jenkins image as the base
FROM jenkins/jenkins:lts

# Switch to root to install dependencies
USER root

# Install Docker inside the Jenkins container so it can build images
RUN apt-get update && \
    apt-get install -y docker.io && \
    rm -rf /var/lib/apt/lists/*

# Switch back to the Jenkins user
USER jenkins


