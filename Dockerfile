# Use a minimal base image, such as Alpine Linux
FROM alpine:latest

# Install Python and necessary packages
RUN apk add --no-cache python3

# Set working directory
WORKDIR /home/data

# Copy the Python script and input files into the container
COPY IF.txt Limerick-1.txt main_docker.py /home/data
RUN mkdir /home/output

# Run the Python script
CMD ["python3", "main_docker.py"]