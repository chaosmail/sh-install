from __future__ import print_function

from fabric.api import task, local
from jinja2 import Environment, FileSystemLoader

import fs

ROOT_DIR = fs.cwd()
SRC_DIR = fs.join(ROOT_DIR, 'src')
DIST_DIR = fs.join(ROOT_DIR, 'dist')

env = Environment()
env.loader = FileSystemLoader(SRC_DIR)

@task
def clean():
	"""Clean the dist/ directory"""
	if (fs.isdir(DIST_DIR)):
		fs.truncate(DIST_DIR)

@task
def make():
	"""Generate the current shell scripts from the templates"""
	clean()

	for _file in fs.find(SRC_DIR, '*.sh'):
		tplname = _file.replace(SRC_DIR + '/', "")
		dest = fs.join(DIST_DIR, fs.filename(tplname))
		tpl = env.get_template(tplname)
		fs.content(dest, tpl.render())
		print("Writing template %s" % tplname)
