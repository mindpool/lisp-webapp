~~~~~~~~~~~
Lisp Webapp
~~~~~~~~~~~

.. contents::
   :local:

Instructions
============

Dependencies
------------

This webapp assumes you have `Steel Bank Common Lisp`_ (`sbcl`_) installed and
running on your machine.

Configurtion
------------

TBD

Design and Layout
-----------------

`Bootstrap`_ is used for CSS and JavaScript; it's included in the source code.

Since `LESS CSS`_ is used to comfile the Bootstrap styles, `Node.js`_ is
required (Node's NPM is used to install ``less``).


Templating and HTML
-------------------

TBD

Development
-----------

TBD


History
=======

This repo was originally clone from here::

  $ git clone https://github.com/smanek/trivial-lisp-webapp.git

With a description of how to get it running here: `A Simple-Lisp Webapp for Beginners`_.

The original author also provided this note:

  This is meant to be be a simple 'base' that you can use to develop your own
  Lisp Webapp. The startup script (``startserver.sh``) expects SBCL to be
  installed and in your PATH, but besides that there are no external
  dependencies.

Changes from the Original
=========================

The following changes have been made:

* Addition of a ``Makefile`` and removal of the ``startserver.sh`` script.

* Templating was changed from html-template to cl-who.

* Bookstrap was added.

.. Links
.. _Bootstrap: http://twitter.github.com/bootstrap/index.html
.. _LESS CSS: http://lesscss.org
.. _Node.js: http://nodejs.org/
.. _Steel Bank Common Lisp: http://www.sbcl.org/
.. _sbcl: http://en.wikipedia.org/wiki/Steel_Bank_Common_Lisp
.. _A Simple-Lisp Webapp for Beginners: http://arantaday.com/a-simple-lisp-webapp-for-beginners
