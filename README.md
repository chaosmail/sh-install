# Collection of shell scripts for installing Linux software

I provide an easy in comprehensive way to install software packages on linux. I was tired of checking websites, adding custom ppas or compiling stuff again and again. Thus, in this repo you can find one liner to install the latest version of Python, etc..; just look into the *dist/* folder for your specific software.

If you just spent some hours to install a new software, why don't you create an installation script here? Just create a PR and save others' time!

## Installation

You can install software from the *dist/* folder by running following command.

```
curl -s https://raw.githubusercontent.com/chaosmail/sh-install/master/dist/python.sh | bash
```

The files without version numbers always refer to the latest stable versions. Other versions can be installed by specifying the version number in the filename. Please check the *dist/* folder which packages and version are available!

## Development

Requirements:
* python2.7
* fabric
* python-fs

To generate the *dist/* files, please run ```fab make```

## License

This software is provided under the MIT License.