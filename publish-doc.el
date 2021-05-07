(add-to-list 'load-path "~/src/emacs/org/org-mode/lisp/")

(require 'org)
(require 'ox-html)

(setq org-publish-project-alist
      `(("wiki"
         :base-directory "~/personal/holmes89.github.io/"
         :base-extension "org"
         :recursive t
         :makeindex t
         :publishing-directory "~/personal/holmes89.github.io/docs"
         :publishing-function org-html-publish-to-html)))
