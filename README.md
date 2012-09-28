# PHP Info with Sessions

phpinfo() - Outputs information about PHP's configuration

In this example, we use a persistent filesystem and post-staging 
hooks to define the location to store sessions variables.

	services:
	  ${name}-fs: filesystem
	hooks:
	  post-staging:
	  - mkdir -p "$STACKATO_FILESYSTEM"/sessions
	  - ln -s "$STACKATO_FILESYSTEM"/sessions "$STACKATO_APP_ROOT"/sessions
	  - echo "session.save_path = /app/sessions" > "$STACKATO_APP_ROOT"/apache/php/sessions.ini



## Deploy on Stackato

     stackato push -n

## Details

phpinfo() manual can be found here: http://php.net/manual/en/function.phpinfo.php
