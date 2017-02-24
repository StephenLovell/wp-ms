WARNING: This is just for local development, please do not put this on a production server.

## Basic Info

This comes bundled with the latest version of WordPress(localhost), the wp-cli tool, and Adminer(localhost:82). 

It will by default run with WordPress installed in the 'wordpress' dir and the db in the 'db' directory. These are the only two folders that will survive changes between sessions. 

If you intend to use git to track changes in docker as a whole I urge you to be careful. It can get weird, especially if you do anything while docker is up. 


If at any point you want to start back at ground zero you can delete the contents of 'wordpress' or 'db' or both and then when you do docker-compose up they'll rebuild fresh from scratch. 

Default reds for things are in the docker-compose.yaml file. It's local so keeping them simple is best. 


## Getting Started

Before you get going make sure you edit the _dockerfiles/wp_bootstrap file to include your own email you want to use for your local wp install.

### Starting your dev environment

1. Open Terminal
2. cd to wp-ms DIR
3. Run the following command to setup your Dev environment

```
docker-compose up
```

3.5 Wait for docker to boot the image. You'll know it's finished when the last line ends with 'INFO success: php5-fpm entered RUNNING state'

You're good. Leave this tab running or server will crash

You can now access your site at localhost

### To stop your dev environment

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

Then you can do:

```
base
```

And it will install a base install of WP. By default it just spins things up and installs the Advanced Custom Fields plugin that I use with everything. You can reference the wp-cli  

http://wp-cli.org/

You can put in whatever commands you want instead before setting everything up.



If after base setup, you would like a multisite you can run: 

```
ms
```

This will change out the .htaccess file with the correct config and do all the magic of making your site into a multisite. I prefer a MS when working locally because I can spin up site after site since a lot of my dev only involves just themes or plugins per site and there's no hacking to core.


Alternatively as long as you don't run both environments at once you can have two copies of this folder, one setup as an MS and one as a single install. In fact you can have hundreds of copies, just don't run them all at once without changing out the port configs in the docker-compose.yaml file or you'll run into conflicts.
