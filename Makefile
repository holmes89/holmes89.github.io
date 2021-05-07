
create:
	emacs -batch -l build/publish-doc.el --eval '(org-publish "wiki" t)'
