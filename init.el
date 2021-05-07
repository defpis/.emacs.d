;;; init.el ---  -*- lexical-binding: t -*-

(let* ((.org (expand-file-name "config.org" user-emacs-directory))
       (.org-no-ext (file-name-sans-extension .org))
       (.el (concat .org-no-ext ".el")))
  (when (file-newer-than-file-p .org .el)
    (require 'org)
    (org-babel-tangle-file .org .el "emacs-lisp")
    (byte-compile-file .el))
  (load .org-no-ext))
