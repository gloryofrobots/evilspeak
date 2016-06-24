(require 'evilspeak-commands)

;;; Normal state

;; (define-key evil-normal-state-map "gu" 'evil-downcase)
;; (define-key evil-normal-state-map "gU" 'evil-upcase)
;; (define-key evil-normal-state-map "g~" 'evil-invert-case)
;; (define-key evil-normal-state-map "~" 'evil-invert-char)

(define-key evil-normal-state-map [escape] 'evil-force-normal-state)
;;; Motion state

;; "0" is a special command when called first
(evil-redirect-digit-argument evil-motion-state-map "0" 'evilspeak-beginning-of-line)
(define-key evil-motion-state-map "b" 'evilspeak-backward-word-begin)
(define-key evil-motion-state-map "B" 'evilspeak-backward-WORD-begin)
(define-key evil-motion-state-map "e" 'evilspeak-forward-word-end)
(define-key evil-motion-state-map "E" 'evilspeak-forward-WORD-end)
(define-key evil-motion-state-map "f" 'evilspeak-find-char)
(define-key evil-motion-state-map "F" 'evilspeak-find-char-backward)
(define-key evil-motion-state-map "G" 'evilspeak-goto-line)
(define-key evil-motion-state-map "h" 'evilspeak-backward-char)
(define-key evil-motion-state-map "H" 'evilspeak-window-top)
(define-key evil-motion-state-map "j" 'evilspeak-next-line)
(define-key evil-motion-state-map "k" 'evilspeak-previous-line)
(define-key evil-motion-state-map "l" 'evilspeak-forward-char)
(define-key evil-motion-state-map " " 'evilspeak-forward-char)
(define-key evil-motion-state-map "n" 'evilspeak-search-next)
(define-key evil-motion-state-map "N" 'evilspeak-search-previous)
(define-key evil-motion-state-map "t" 'evilspeak-find-char-to)
(define-key evil-motion-state-map "T" 'evilspeak-find-char-to-backward)
(define-key evil-motion-state-map "w" 'evilspeak-forward-word-begin)
(define-key evil-motion-state-map "W" 'evilspeak-forward-WORD-begin)
(define-key evil-motion-state-map "gd" 'evilspeak-goto-definition)
(define-key evil-motion-state-map "ge" 'evilspeak-backward-word-end)
(define-key evil-motion-state-map "gE" 'evilspeak-backward-WORD-end)
(define-key evil-motion-state-map "gg" 'evilspeak-goto-first-line)
(define-key evil-motion-state-map "gj" 'evilspeak-next-visual-line)
(define-key evil-motion-state-map "gk" 'evilspeak-previous-visual-line)
(define-key evil-motion-state-map "g0" 'evilspeak-beginning-of-visual-line)
(define-key evil-motion-state-map "g_" 'evilspeak-last-non-blank)
(define-key evil-motion-state-map "g^" 'evilspeak-first-non-blank-of-visual-line)
(define-key evil-motion-state-map "gm" 'evilspeak-middle-of-visual-line)
(define-key evil-motion-state-map "g$" 'evilspeak-end-of-visual-line)
(define-key evil-motion-state-map "{" 'evilspeak-backward-paragraph)
(define-key evil-motion-state-map "}" 'evilspeak-forward-paragraph)
(define-key evil-motion-state-map "#" 'evilspeak-search-word-backward)
(define-key evil-motion-state-map "g#" 'evilspeak-search-unbounded-word-backward)
(define-key evil-motion-state-map "$" 'evilspeak-end-of-line)
(define-key evil-motion-state-map "%" 'evilspeak-jump-item)
(define-key evil-motion-state-map "`" 'evilspeak-goto-mark)
(define-key evil-motion-state-map "'" 'evilspeak-goto-mark-line)
(define-key evil-motion-state-map "(" 'evilspeak-backward-sentence-begin)
(define-key evil-motion-state-map ")" 'evilspeak-forward-sentence-begin)
(define-key evil-motion-state-map "]]" 'evilspeak-forward-section-begin)
(define-key evil-motion-state-map "][" 'evilspeak-forward-section-end)
(define-key evil-motion-state-map "[[" 'evilspeak-backward-section-begin)
(define-key evil-motion-state-map "[]" 'evilspeak-backward-section-end)
(define-key evil-motion-state-map "[(" 'evilspeak-previous-open-paren)
(define-key evil-motion-state-map "])" 'evilspeak-next-close-paren)
(define-key evil-motion-state-map "[{" 'evilspeak-previous-open-brace)
(define-key evil-motion-state-map "]}" 'evilspeak-next-close-brace)
(define-key evil-motion-state-map "*" 'evilspeak-search-word-forward)
(define-key evil-motion-state-map "g*" 'evilspeak-search-unbounded-word-forward)
(define-key evil-motion-state-map "," 'evilspeak-repeat-find-char-reverse)
(define-key evil-motion-state-map "/" 'evilspeak-search-forward)
(define-key evil-motion-state-map ";" 'evilspeak-repeat-find-char)
(define-key evil-motion-state-map "?" 'evilspeak-search-backward)
(define-key evil-motion-state-map "|" 'evilspeak-goto-column)
(define-key evil-motion-state-map "^" 'evilspeak-first-non-blank)
(define-key evil-motion-state-map "+" 'evilspeak-next-line-first-non-blank)
(define-key evil-motion-state-map "_" 'evilspeak-next-line-1-first-non-blank)
(define-key evil-motion-state-map "-" 'evilspeak-previous-line-first-non-blank)
(define-key evil-motion-state-map "\C-]" 'evilspeak-jump-to-tag)

;; SCROLL

(define-key evil-motion-state-map (kbd "C-d") 'evilspeak-scroll-down)
(define-key evil-motion-state-map (kbd "C-D") 'evilspeak-scroll-up)

(define-key evil-motion-state-map (kbd "C-b") 'evilspeak-scroll-page-up)
(define-key evil-motion-state-map (kbd "C-f") 'evilspeak-scroll-page-down)

(define-key evil-motion-state-map (kbd "zu") 'evilspeak-scroll-line-up)
(define-key evil-motion-state-map (kbd "zd") 'evilspeak-scroll-line-down)

;;;;;

(define-key evil-motion-state-map (kbd "RET") 'evilspeak-ret)

(define-key evil-motion-state-map [left] 'evilspeak-backward-char)
(define-key evil-motion-state-map [right] 'evilspeak-forward-char)
(define-key evil-motion-state-map [up] 'evilspeak-previous-line)
(define-key evil-motion-state-map [down] 'evilspeak-next-line)


(define-key evil-motion-state-map (kbd "C-o") 'evilspeak-jump-backward)
(when evil-want-C-i-jump
  (define-key evil-motion-state-map (kbd "C-i") 'evilspeak-jump-forward))

(when evil-want-C-u-scroll
  (define-key evil-motion-state-map (kbd "C-u") 'evilspeak-scroll-up))


;; (evil-ex-define-cmd "e[dit]" 'evilspeak-edit)
;; (evil-ex-define-cmd "w[rite]" 'evilspeak-write)
;; (evil-ex-define-cmd "wa[ll]" 'evilspeak-write-all)
;; (evil-ex-define-cmd "sav[eas]" 'evilspeak-save)
;; (evil-ex-define-cmd "r[ead]" 'evilspeak-read)
;; (evil-ex-define-cmd "b[uffer]" 'evilspeak-buffer)
;; (evil-ex-define-cmd "bn[ext]" 'evilspeak-next-buffer)
;; (evil-ex-define-cmd "bp[revious]" 'evilspeak-prev-buffer)
;; (evil-ex-define-cmd "bN[ext]" "bprevious")
;; (evil-ex-define-cmd "sb[uffer]" 'evilspeak-split-buffer)
;; (evil-ex-define-cmd "sbn[ext]" 'evilspeak-split-next-buffer)
;; (evil-ex-define-cmd "sbp[revious]" 'evilspeak-split-prev-buffer)
;; (evil-ex-define-cmd "sbN[ext]" "sbprevious")
;; (evil-ex-define-cmd "buffers" 'buffer-menu)
;; (evil-ex-define-cmd "files" 'evilspeak-show-files)
;; (evil-ex-define-cmd "ls" "buffers")

;; (evil-ex-define-cmd "c[hange]" 'evilspeak-change)
;; (evil-ex-define-cmd "co[py]" 'evilspeak-copy)
;; (evil-ex-define-cmd "t" "copy")
;; (evil-ex-define-cmd "m[ove]" 'evilspeak-move)
;; (evil-ex-define-cmd "d[elete]" 'evilspeak-delete)
;; (evil-ex-define-cmd "y[ank]" 'evilspeak-yank)
;; (evil-ex-define-cmd "go[to]" 'evilspeak-goto-char)
;; (evil-ex-define-cmd "j[oin]" 'evilspeak-join)
;; (evil-ex-define-cmd "le[ft]" 'evilspeak-align-left)
;; (evil-ex-define-cmd "ri[ght]" 'evilspeak-align-right)
;; (evil-ex-define-cmd "ce[nter]" 'evilspeak-align-center)
;; (evil-ex-define-cmd "sp[lit]" 'evilspeak-window-split)
;; (evil-ex-define-cmd "vs[plit]" 'evilspeak-window-vsplit)
;; (evil-ex-define-cmd "new" 'evilspeak-window-new)
;; (evil-ex-define-cmd "ene[w]" 'evilspeak-buffer-new)
;; (evil-ex-define-cmd "vne[w]" 'evilspeak-window-vnew)
;; (evil-ex-define-cmd "clo[se]" 'evilspeak-window-delete)
;; (evil-ex-define-cmd "on[ly]" 'delete-other-windows)
;; (evil-ex-define-cmd "q[uit]" 'evilspeak-quit)
;; (evil-ex-define-cmd "wq" 'evilspeak-save-and-close)
;; (evil-ex-define-cmd "quita[ll]" 'evilspeak-quit-all)
;; (evil-ex-define-cmd "qa[ll]" "quitall")
;; (evil-ex-define-cmd "cq[uit]" 'evilspeak-quit-all-with-error-code)
;; (evil-ex-define-cmd "wqa[ll]" 'evilspeak-save-and-quit)
;; (evil-ex-define-cmd "xa[ll]" "wqall")
;; (evil-ex-define-cmd "x[it]" 'evilspeak-save-modified-and-close)
;; (evil-ex-define-cmd "exi[t]" 'evilspeak-save-modified-and-close)
;; (evil-ex-define-cmd "bd[elete]" 'evilspeak-delete-buffer)
;; (evil-ex-define-cmd "bw[ipeout]" 'evilspeak-delete-buffer)
;; (evil-ex-define-cmd "g[lobal]" 'evilspeak-ex-global)
;; (evil-ex-define-cmd "v[global]" 'evilspeak-ex-global-inverted)
;; (evil-ex-define-cmd "norm[al]" 'evilspeak-ex-normal)
;; (evil-ex-define-cmd "s[ubstitute]" 'evilspeak-ex-substitute)
;; (evil-ex-define-cmd "&" 'evilspeak-ex-repeat-substitute)
;; (evil-ex-define-cmd "&&" 'evilspeak-ex-repeat-substitute-with-flags)
;; (evil-ex-define-cmd "~" 'evilspeak-ex-repeat-substitute-with-search)
;; (evil-ex-define-cmd "~&" 'evilspeak-ex-repeat-substitute-with-search-and-flags)
;; (evil-ex-define-cmd "registers" 'evilspeak-show-registers)
;; (evil-ex-define-cmd "marks" 'evilspeak-show-marks)
;; (evil-ex-define-cmd "delm[arks]" 'evilspeak-delete-marks)
;; (evil-ex-define-cmd "ju[mps]" 'evilspeak-show-jumps)
;; (evil-ex-define-cmd "noh[lsearch]" 'evilspeak-ex-nohighlight)
;; (evil-ex-define-cmd "f[ile]" 'evilspeak-show-file-info)
;; (evil-ex-define-cmd "<" 'evilspeak-shift-left)
;; (evil-ex-define-cmd ">" 'evilspeak-shift-right)
;; (evil-ex-define-cmd "=" 'evilspeak-ex-line-number)
;; (evil-ex-define-cmd "!" 'evilspeak-shell-command)
;; (evil-ex-define-cmd "@:" 'evilspeak-ex-repeat)
;; (evil-ex-define-cmd "mak[e]" 'evilspeak-make)
;; (evil-ex-define-cmd "cc" 'evilspeak-goto-error)
;; (evil-ex-define-cmd "cfir[st]" 'first-error)
;; (evil-ex-define-cmd "cr[ewind]" 'first-error)
;; (evil-ex-define-cmd "cn[ext]" 'next-error)
;; (evil-ex-define-cmd "cp[revious]" 'previous-error)
;; (evil-ex-define-cmd "set-initial-state" 'evilspeak-ex-set-initial-state)
;; (evil-ex-define-cmd "show-digraphs" 'evilspeak-ex-show-digraphs)
;; (evil-ex-define-cmd "sor[t]" 'evilspeak-ex-sort)
;; (evil-ex-define-cmd "res[ize]" 'evilspeak-ex-resize)

;; search command line
;; (define-key evil-ex-search-keymap "\d" #'evilspeak-ex-delete-backward-char)
;; (define-key evil-ex-search-keymap "\C-r" 'evilspeak-paste-from-register)
;; (define-key evil-ex-search-keymap "\C-n" 'next-history-element)
;; (define-key evil-ex-search-keymap "\C-p" 'previous-history-element)

;; ;; ex command line
;; (define-key evil-ex-completion-map "\d" #'evilspeak-ex-delete-backward-char)
;; (define-key evil-ex-completion-map "\t" #'evilspeak-ex-completion)
;; (define-key evil-ex-completion-map [tab] #'evilspeak-ex-completion)
;; (define-key evil-ex-completion-map [remap completion-at-point] #'evilspeak-ex-completion)
;; (define-key evil-ex-completion-map "\C-a" 'evilspeak-ex-completion)
;; (define-key evil-ex-completion-map "\C-b" 'move-beginning-of-line)
;; (define-key evil-ex-completion-map "\C-c" 'abort-recursive-edit)
;; (define-key evil-ex-completion-map "\C-d" 'evilspeak-ex-completion)
;; (define-key evil-ex-completion-map "\C-g" 'abort-recursive-edit)
;; (define-key evil-ex-completion-map "\C-k" 'evilspeak-insert-digraph)
;; (define-key evil-ex-completion-map "\C-l" 'evilspeak-ex-completion)
;; (define-key evil-ex-completion-map "\C-p" #'previous-complete-history-element)
;; (define-key evil-ex-completion-map "\C-r" 'evilspeak-paste-from-register)
;; (define-key evil-ex-completion-map "\C-n" #'next-complete-history-element)
;; (define-key evil-ex-completion-map "\C-u" 'evilspeak-delete-whole-line)
;; (define-key evil-ex-completion-map "\C-v" #'quoted-insert)
;; (define-key evil-ex-completion-map "\C-w" 'backward-kill-word)
;; (define-key evil-ex-completion-map [escape] 'abort-recursive-edit)
;; (define-key evil-ex-completion-map [S-left] 'backward-word)
;; (define-key evil-ex-completion-map [S-right] 'forward-word)
;; (define-key evil-ex-completion-map [up] 'previous-complete-history-element)
;; (define-key evil-ex-completion-map [down] 'next-complete-history-element)
;; (define-key evil-ex-completion-map [prior] 'previous-history-element)
;; (define-key evil-ex-completion-map [next] 'next-history-element)
;; (define-key evil-ex-completion-map [return] 'exit-minibuffer)
;; (define-key evil-ex-completion-map (kbd "RET") 'exit-minibuffer)

;; ;; evil-read-key
;; (define-key evil-read-key-map (kbd "ESC") #'keyboard-quit)
;; (define-key evil-read-key-map (kbd "C-]") #'keyboard-quit)
;; (define-key evil-read-key-map (kbd "C-q") #'evilspeak-read-quoted-char)
;; (define-key evil-read-key-map (kbd "C-v") #'evilspeak-read-quoted-char)
;; (define-key evil-read-key-map (kbd "C-k") #'evilspeak-read-digraph-char)
;; (define-key evil-read-key-map "\r" "\n")

;; ;; command line window
;; (evil-define-key 'normal
;;   evil-command-window-mode-map (kbd "RET") 'evilspeak-command-window-execute)
;; (evil-define-key 'insert
;;   evil-command-window-mode-map (kbd "RET") 'evilspeak-command-window-execute)
;; (global-unset-key "\C-e")

(provide 'evilspeak-maps)