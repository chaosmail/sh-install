# Collection of shell scripts for installing Linux software

I provide an easy in comprehensive way to install software packages on linux. I was tired of checking websites, adding custom ppas or compiling stuff again and again. Thus, in this repo you can find one liner to install the latest version of Python, etc..; just look into the *dist/* folder for your specific software.

If you just spent some hours to install a new software, why don't you create an installation script here? Just create a PR and save others' time!

## Installation

You can install software from the *dist/* folder by running following command.

```
curl -sL https://raw.githubusercontent.com/chaosmail/sh-install/master/dist/python.sh | bash -
```

The files without version numbers always refer to the latest stable versions. Other versions can be installed by specifying the version number in the filename. Please check the *dist/* folder which packages and version are available!

## Software

* Ansible: `curl -sL https://raw.githubusercontent.com/chaosmail/sh-install/master/dist/ansible.sh | bash -`
* Python: `curl -sL https://raw.githubusercontent.com/chaosmail/sh-install/master/dist/python.sh | bash -`
* Pip: `curl -sL https://raw.githubusercontent.com/chaosmail/sh-install/master/dist/pip.sh | bash -`
* OpenCV: `curl -sL https://raw.githubusercontent.com/chaosmail/sh-install/master/dist/opencv.sh | bash -`
* OpenGL: `curl -sL https://raw.githubusercontent.com/chaosmail/sh-install/master/dist/opengl.sh | bash -`
* AntTweakBar: `curl -sL https://raw.githubusercontent.com/chaosmail/sh-install/master/dist/atb.sh | bash -`

## Development

Requirements:
* python2.7
* fabric
* pyfs

Install the requirements running `pip install -r requirements.txt`

To generate the *dist/* files, please run `fab make`

The domain [http://get.sh-install.ch](http://get.sh-install.ch) is a shortcut and automatically forwards to [https://raw.githubusercontent.com/chaosmail/sh-install/master/dist/](https://raw.githubusercontent.com/chaosmail/sh-install/master/dist/).

## License

This software is provided under the MIT License.