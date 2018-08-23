FROM nginx:stable-alpine

# Install curl
RUN apk add --no-cache curl

# Make sure folder exists
RUN mkdir /usr/local/sbin

# Step 1
RUN wget https://raw.githubusercontent.com/mitchellkrogza/nginx-ultimate-bad-bot-blocker/master/install-ngxblocker -O /usr/local/sbin/install-ngxblocker
RUN chmod +x /usr/local/sbin/install-ngxblocker

# Step 2 - Skipped since it's a DRY run

# Step 3
RUN /usr/local/sbin/install-ngxblocker -x
RUN chmod +x /usr/local/sbin/setup-ngxblocker
RUN chmod +x /usr/local/sbin/update-ngxblocker

# Step 4 - Skipped since it's a DRY run

# Step 5
RUN /usr/local/sbin/setup-ngxblocker -x


COPY ./_docker/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf