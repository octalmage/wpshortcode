# WP Shortcode Example

## Usage

1. Clone locally:

	```
	git clone https://github.com/octalmage/wpshortcode
	```

1. Change to the wpshortcode directory:

	```
	cd wpshortcode
	```

1. Start the container:

	```
	make start
	```

1. Init the container to install WordPress:

	```
	make init
	```

1. Access WordPress:

	http://127.0.0.1:8081/

**Notes:**

The default username is `wordpress` and the password is `pressword`.


## Instructions for Windows Home Edition:

Install docker toolbox for Windows.

Open the command prompt as administrator then cd to c:\Program Files\Docker Toolbox and run start.sh

Once that’s done you should end up in a bash shell, cd to the directory of the plugin and run:

```
docker-compose up -d
```

Then:

```
./init-old.sh
```

You should be able to access WordPress at:

https://192.168.99.101:8081
