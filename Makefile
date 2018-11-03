test:
	emacs --version
	emacs -nw --batch --eval '(load-file "follow-current-buffer.el")'
