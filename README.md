# Docker image for nginx with bot protection
Based on `mitchellkrogza/nginx-ultimate-bad-bot-blocker` to provide the bot protection nginx configs and wrapped into a Docker image

For full details on bot protection and config options, see:
[mitchellkrogza/nginx-ultimate-bad-bot-blocker](https://github.com/mitchellkrogza/nginx-ultimate-bad-bot-blocker "mitchellkrogza/nginx-ultimate-bad-bot-blocker on github")

### Features not yet implemented
- nginx includes automatically added to `vhost` or `conf` files (includes must be manually added, see example `_docker/nginx/conf.d/default.conf` file)
- Support for `cron` to update bot blacklist