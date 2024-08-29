# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Install Ansible
RUN pip install --no-cache-dir ansible

# Copy the Ansible playbook and any other necessary files to the container
COPY . /app

# Set the default command to run when the container starts
CMD ["ansible-playbook", "--version"]
