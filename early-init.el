;;; early-init.el ---  -*- lexical-binding: t -*-

(let ((startup-gc-cons-threshold most-positive-fixnum)
      (startup-gc-cons-percentage .6)
      (normal-gc-cons-threshold (* 64 1024 1024))
      (normal-gc-cons-percentage .1)
      (_file-name-handler-alist file-name-handler-alist))

  (setq-default gc-cons-threshold startup-gc-cons-threshold
                gc-cons-percentage startup-gc-cons-percentage
                file-name-handler-alist nil)

  (lambda () (setq-default gc-cons-threshold normal-gc-cons-threshold
                           gc-cons-percentage normal-gc-cons-percentage
                           file-name-handler-alist _file-name-handler-alist)))

(setq-default package-enable-at-startup nil)

(setq-default frame-inhibit-implied-resize t)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(setq-default default-frame-alist '((width . 150)
                                    (height . 50)
                                    (alpha . (90 . 90))))
