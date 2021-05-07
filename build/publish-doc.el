(add-to-list 'load-path "~/src/emacs/org/org-mode/lisp/")

(require 'org)
(require 'ox-html)

(setq org-publish-project-alist
      `(("wiki"
         :base-directory "."
         :base-extension "org"
         :auto-sitemap t
         :sitemap-filename "index.org"
         :sitemap-title "Personal Wiki"
         :recursive t
         :makeindex t
         :html-doctype "html5"
         :html-html5-fancy t
                                        ; Disable some Org's HTML defaults
         :html-head-include-scripts nil
         :html-head-include-default-style nil
         :html-head "<link rel=\"stylesheet\" href=\"https:\/\/cdn.jsdelivr.net\/npm\/bulma@0.9.2\/css\/bulma.min.css\">"
         :publishing-directory "./docs"
         :publishing-function org-html-publish-to-html)))
