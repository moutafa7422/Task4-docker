# Use an official Nginx base image
FROM nginx

# Copy the HTML file to the default Nginx public directory
COPY index.html .

# Copy the new configuration file to listen on port 9999 instead of 80
COPY nginx.conf .

# Open port 9999 in the container
EXPOSE 9999

# Add environment variable CONTAINER with value "docker"
ENV CONTAINER=docker

# Add startup command to echo the variable
CMD echo $CONTAINER

# Use HTTPS by default
ENV HTTPS_ENABLED=true
