# Use an official lightweight base image
FROM alpine:latest

# Install any necessary packages
RUN apk add --no-cache bash

# Copy the script to the Docker image
COPY script.sh /script.sh

# Make the script executable
RUN chmod +x /script.sh

# Run the shell script
ENTRYPOINT ["/script.sh"]
