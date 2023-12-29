## Jupyter Notebook

### Setup

* setup your password, create from your terminal.

	```
	jupyter notebook password

	cat ~/.jupyter/jupyter_server_config.json
	````

* input your password and verify.
* copy encrypt password. for example:
	```
	argon2:$argon2id$v=19$m=10240,t=10,p=8$iiN1LXvFZiejPW/KVAQGpQ$yT0auNcsbTcX6HH6Z0BgCdbTlMt9inSvdpYwgCi6bEw
	```
* replace your password to `services/jupyter/default.nix` in this variable.
	```
  password = "'....'";
	```

* rebuild your nixos system `doas nixos-rebuild switch --upgrade`.

### Run via browser

* open http://localhost:8888/ via browser.
* login with password.
