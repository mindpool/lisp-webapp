BIN_DIR = /usr/local/bin
LESSC = $(BIN_DIR)/lessc

$(BIN_DIR)/lessc:
	cd $(DEPS_DIR) && \
	sudo npm install -g less

run:
	sbcl --no-sysinit --no-userinit --load ./lib/conf.lisp

css: $(BIN_DIR)/lessc
	$(LESSC) ./tools/less/bootstrap.less > ./static/css/bootstrap.css
