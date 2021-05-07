build:
	emacs -batch -l publish-doc.el --eval '(org-publish "wiki")'
