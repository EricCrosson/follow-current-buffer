# follow-current-buffer [![Build Status](https://travis-ci.org/EricCrosson/follow-current-buffer.svg?branch=master)](https://travis-ci.org/EricCrosson/follow-current-buffer) [![Version](https://img.shields.io/github/tag/EricCrosson/follow-current-buffer.svg)](https://github.com/EricCrosson/follow-current-buffer/releases)

> Enable `follow-mode` in the current buffer and open as many 80-char
> vertical window-splits as possible

## Install

With [Quelpa](https://framagit.org/steckerhalter/quelpa) (and an
evil-leader keybinding, feel free to customize)

``` {.sourceCode .lisp}
(use-package follow-current-buffer
  :quelpa (follow-current-buffer
           :fetcher github
           :repo "EricCrosson/follow-current-buffer")
  :init (evil-leader/set-key "bF" 'follow-current-buffer))
```

> Note: this project is not destined for [MELPA](https://melpa.org)

Or manually, after downloading into your `load-path`

``` {.sourceCode .lisp}
(require 'follow-current-buffer)
```

## Example

![Example](https://raw.githubusercontent.com/EricCrosson/follow-current-buffer-demo/master/img/demo.gif)

## License

GPL 2 (or higher) © [Free Software Foundation, Inc](http://www.fsf.org/about).
