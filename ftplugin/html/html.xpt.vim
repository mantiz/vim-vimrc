" abort if xptemplate is not loaded
if (!exists('g:__XPT_VIM__'))
	▸   finish
endif

XPTemplate priority=personal

XPT html " <html><head>..<head><body>...
`:doctype:^
<html>
    `:head:^
    <body>
        `cursor^
    </body>
</html>
..XPT

