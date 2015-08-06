;;; osx-lib-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "osx-lib" "osx-lib.el" (21954 14489 0 0))
;;; Generated autoloads from osx-lib.el

(autoload 'osx-lib-run-osascript "osx-lib" "\
Run an SCRIPT-CONTENT as AppleScript/osascipt.

\(fn SCRIPT-CONTENT)" t nil)

(autoload 'osx-lib-do-beep "osx-lib" "\
Play beep sound.

\(fn)" nil nil)

(autoload 'osx-lib-notify2 "osx-lib" "\
Create a notification with title as TITLE and message as MESSAGE.

\(fn TITLE MESSAGE)" nil nil)

(autoload 'osx-lib-notify3 "osx-lib" "\
Create a notification with title as TITLE, subtitle as SUBTITLE and message as MESSAGE.

\(fn TITLE SUBTITLE MESSAGE)" nil nil)

(autoload 'osx-lib-copy-to-clipboard "osx-lib" "\
Copy the given TEXT to clipboard.

\(fn TEXT)" nil nil)

(autoload 'osx-lib-reveal-in-finder-as "osx-lib" "\
Reveal the supplied file FILE in Finder.
This function runs the actual AppleScript.

\(fn FILE)" nil nil)

(autoload 'osx-lib-reveal-in-finder "osx-lib" "\
Reveal the file associated with the current buffer in the OS X Finder.
In a dired buffer, it will open the current file.

\(fn)" t nil)

(autoload 'osx-lib-vpn-connect "osx-lib" "\
Connect to vpn using given VPN-NAME and PASSWORD.

\(fn VPN-NAME PASSWORD)" t nil)

(autoload 'osx-lib-vpn-disconnect "osx-lib" "\
Disconnect from VPN-NAME vpn.

\(fn VPN-NAME)" t nil)

(autoload 'osx-lib-say "osx-lib" "\
Speak the MESSAGE.

\(fn MESSAGE)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; osx-lib-autoloads.el ends here
