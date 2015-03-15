# Collection of shell scripts for installing Linux software

## Installation

You can install a command like the following software by running

```
curl -s https://raw.githubusercontent.com/chaosmail/sh-install/master/python.sh | bash /dev/stdin
```

Please check the *dist/* folder which packages and version are available!

## Development

Requirements:
* python2.7
* fabric
* python-fs

To generate the *dist/* files, please run ```fab make```