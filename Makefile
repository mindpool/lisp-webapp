BIN_DIR = /usr/local/bin
LESSC = $(BIN_DIR)/lessc
DOC_ROOT = ./document-root

$(BIN_DIR)/lessc:
	cd $(DEPS_DIR) && \
	sudo npm install -g less

run:
	sbcl --no-sysinit --no-userinit --load ./lib/conf.lisp

css: $(BIN_DIR)/lessc
	$(LESSC) ./tools/less/bootstrap.less > $(DOC_ROOT)/static/css/bootstrap.css
