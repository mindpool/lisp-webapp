DEP_LINKS = ./package-links
DEPS = ./third-party
LIB = ./lib
BIN_DIR = /usr/local/bin
LESSC = $(BIN_DIR)/lessc
DOC_ROOT = ./document-root

$(BIN_DIR)/lessc:
	cd $(DEPS_DIR) && \
	sudo npm install -g less

$(DEP_LINKS):
	mkdir -p $(DEP_LINKS)
	cd $(DEP_LINKS); for FILE in `find ../$(DEPS)/*/*.asd|egrep -v 'test|babel-s|cffi-'`; do ln -s $$FILE; done
	cd $(DEP_LINKS); ln -s ../$(LIB)/webapp.asd

run: $(DEP_LINKS)
	sbcl --no-sysinit --no-userinit --load ./lib/conf.lisp

css: $(BIN_DIR)/lessc
	$(LESSC) ./tools/less/bootstrap.less > $(DOC_ROOT)/static/css/bootstrap.css

clean:
	rm -rf $(DEP_LINKS)
