(add-to-list 'load-path "~/src/emacs/org/org-mode/lisp/")

(require 'org)
(require 'ox-html)

(setq org-publish-project-alist
      `(("wiki-content"
         :base-directory "."
         :base-extension "org"
         :auto-sitemap t
         :sitemap-filename "index.org"
         :sitemap-title "Personal Wiki"
         :recursive t
         :makeindex t
         :html-doctype "html5"
         :html-html5-fancy t
         :html-head-include-scripts nil
         :html-head-include-default-style nil
         :html-head "<link rel=\"stylesheet\" href=\"static/css/org.css\">"
         :publishing-directory "docs"
         :publishing-function org-html-publish-to-html)
        ("wiki-static"
         :base-directory "static"
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
         :publishing-directory "docs/static"
         :recursive t
         :publishing-function org-publish-attachment)
        ("wiki" :components ("wiki-content" "wiki-static"))))
