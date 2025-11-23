# Use a lightweight Nginx image
FROM nginx:alpine

# Remove default Nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy our website files to Nginx web root
COPY . /usr/share/nginx/html

# Expose port 80 (default Nginx port)
EXPOSE 80

# Nginx default command will run automatically
