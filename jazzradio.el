;;; jazzradio.el --- Major mode for JazzRadio?

;; Copyright (C) 2014  ned rihine

;; Author: ned rihine <ned.rihine@gmail.com>
;; Keywords: multimedia, web

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; 

;;; Code:

(eval-when-compile (require 'cl))
(require 'json)

(defvar jazzradio-web-host "www.jazzradio.com")

(defvar jazzradio-api-host "listen.jazzradio.com"
  "jazzradio の API のホストです。")

(defvar jazzradio-player-name "mplayer"
  "ローカルのオーディオプレイヤーのコマンド名です。")

(defvar jazzradio-http-client "curl"
  "JSON を取ってくるための HTTP クライアント？")

;;;; 
;;;; Debug mode
;;;;

(defvar jazzradio-debug-mode nil)
(defvar jazzradio-debug-buffer "*jazzradio-debug*")

(defun jazzradio-get-or-generate-buffer (buffer)
  (if (bufferp buffer)
      (if (buffer-live-p buffer)
          buffer
        (generate-new-buffer (buffer-name buffer)))
    (if (stringp buffer)
        (or (get-buffer buffer)
            (generate-new-buffer buffer)))))

(defun jazzradio-debug-buffer ()
  (jazzradio-get-or-generate-buffer jazzradio-debug-buffer))

;;;; 
;;;; Jazzradio mode
;;;; 

(defun jazzradio-mode ()
  (interactive)
  ;; webplayer から取ってきたジャンル一覧を出したい。
  (jazzradio-visit-webplayer))

;;;; 
;;;; command
;;;; 

(defun jazzradio-visit-webplayer (&optional spec initial)
  nil)

(provide 'jazzradio)
;;; jazzradio.el ends here
