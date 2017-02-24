Before you get going make sure you edit the _dockerfiles/wp_bootstrap file to include your own email you want to use for your local wp install.

# Starting your dev environment

1. Open Terminal
2. cd to wp-ms DIR
3. Run the following command to setup your Dev environment

```
docker-compose up
```

3.5 Wait for docker to boot the image. You'll know it's finished when the last line ends with 'INFO success: php5-fpm entered RUNNING state'

You're good. Leave this tab running or server will crash

You can now access your site at localhost

# To stop you dev environment

1. Open another tab in Terminal
2. cd to wp-ms DIR
3. Run the following command to stop the Dev environment

```
docker-compose down
```

## WordPress Config

Once your WP site is running, you spin up a shell into your web container

```
$ docker exec -it container_name bash

```

Then you can do 

```
base
```

And it will install a base install of WP. By default it just spin things up and install the Advanced Custom Fields plugin that I use with everything. You can reference the wp-cli  

http://wp-cli.org/

You can put in whatever commands you want instead before setting everything up.

If you would like a multisite you can run 

```
ms
```

This will change out the .htaccess file with the correct config and do all the magic of making your site into a multisite. I prefer a MS when working locally because I can spin up site after site since a lot of my dev only involves just themes or plugins per site and there's no hacking to core.
