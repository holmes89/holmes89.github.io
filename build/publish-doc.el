(add-to-list 'load-path "~/src/emacs/org/org-mode/lisp/")

(require 'org)
(require 'ox-html)

(setq org-publish-project-alist
      `(("wiki"
         :base-directory "."
         :base-extension "org"
         :recursive t
         :makeindex t
         :publishing-directory "./docs"
         :publishing-function org-html-publish-to-html)))
