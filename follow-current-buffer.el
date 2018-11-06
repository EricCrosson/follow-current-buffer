;;; follow-current-buffer.el --- Open current buffer in `follow-mode` with as many 80-char vertical window-splits as possible
;;
;;; Copyright (C) 2018  Free Software Foundation, Inc.
;;
;; Author: Eric Crosson <eric.s.crosson@utexas.edu>
;; Version: 1.0.0
;; Keywords: emacs follow buffer
;; Package-Requires: ((emacs "24"))
;; URL: https://github.com/EricCrosson/follow-current-buffer
;;
;;
;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.
;;
;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
;; Boston, MA 02111-1307, USA.
;;
;;
;;; Commentary:
;;
;; Open current buffer in `follow-mode` with as many 80-char vertical
;; window-splits as possible

;;; Code:

;;;###autoload
(defun follow-current-buffer ()
  "Enable `follow-mode' in the current buffer and open as many
80-char vertical window-splits as possible."
  (interactive)
  (delete-other-windows)
  (while (< 80 (window-width))
    (split-window-horizontally)
    (balance-windows))
  (delete-window)
  (balance-windows)
  (follow-mode t))


(provide 'follow-current-buffer)

;;; follow-current-buffer.el ends here
