PY?=python3
PELICAN?=pelican
PELICANOPTS=

BASEDIR=$(CURDIR)
INPUTDIR=$(BASEDIR)/content
OUTPUTDIR=$(BASEDIR)/output
CONFFILE=$(BASEDIR)/pelicanconf.py
PUBLISHCONF=$(BASEDIR)/publishconf.py

FTP_HOST=localhost
FTP_USER=anonymous
FTP_PASSWORD=anonymous@

SSH_HOST=your_host.com
SSH_PORT=22
SSH_USER=your_username
SSH_TARGET_DIR=/var/www

S3_BUCKET=my_s3_bucket

CLOUDFILES_USERNAME=your_cloudfiles_username
CLOUDFILES_API_KEY=your_cloudfiles_api_key
CLOUDFILES_CONTAINER=your_cloudfiles_container
CLOUDFILES_DEFAULT_REGION=DFW

DROPBOX_DIR=~/Dropbox/Public/

GITHUB_PAGES_BRANCH=gh-pages

DEBUG ?= 0
ifeq ($(DEBUG), 1)
	PELICANOPTS += -D
endif

RELATIVE ?= 0
ifeq ($(RELATIVE), 1)
	PELICANOPTS += -r
endif

help:
	@echo 'Makefile for a pelican Web site'
	@echo ''
	@echo 'Usage:'
	@echo '   make html                           (re)generate the web site'
	@echo '   make clean                          remove the generated files'
	@echo '   make regenerate                     regenerate files upon modification'
	@echo '   make publish                        generate using production settings'
	@echo '   make serve                          serve site at http://localhost:8000'
	@echo '   make serve-global                   serve site at http://0.0.0.0:8000'
	@echo '   make devserver                      start/restart development server'
	@echo '   make stopserver                     stop development server'
	@echo '   make github                         upload the web site via gh-pages'
	@echo ''
	@echo 'Set the DEBUG variable to 1 to enable debugging, e.g. make DEBUG=1 html'
	@echo 'Set the RELATIVE variable to 1 to enable relative urls'
	@echo ''

html:
	$(PELICAN) $(INPUTDIR) -o $(OUTPUTDIR) -s $(CONFFILE) $(PELICANOPTS)

clean:
	[ ! -d $(OUTPUTDIR) ] || rm -rf $(OUTPUTDIR)

regenerate:
	$(PELICAN) -r $(INPUTDIR) -o $(OUTPUTDIR) -s $(CONFFILE) $(PELICANOPTS)

serve:
	cd $(OUTPUTDIR) && $(PY) -m http.server

serve-global:
	cd $(OUTPUTDIR) && $(PY) -m http.server 0.0.0.0:8000

devserver:
	$(PELICAN) -lr $(INPUTDIR) -o $(OUTPUTDIR) -s $(CONFFILE) $(PELICANOPTS)

stopserver:
	pkill -f "python.*http.server"

publish:
	$(PELICAN) $(INPUTDIR) -o $(OUTPUTDIR) -s $(PUBLISHCONF) $(PELICANOPTS)

github: publish
	ghp-import -b $(GITHUB_PAGES_BRANCH) $(OUTPUTDIR)
	git push origin $(GITHUB_PAGES_BRANCH)

.PHONY: html help clean regenerate serve serve-global devserver stopserver publish github
