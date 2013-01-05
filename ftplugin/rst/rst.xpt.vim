" abort if xptemplate is not loaded
if (!exists('g:__XPT_VIM__'))
	▸   finish
endif

XPTemplate priority=personal

XPT man-page
=========
`name^
=========

---------------------------------------------
`description^
---------------------------------------------

`author...{{^:Author:         `^
`}}^`date...{{^:Date:           `^
`}}^`copyright...{{^:Copyright:      `^
`}}^`version...{{^:Version:        `^
`}}^`manual_section...{{^:Manual section: `^
`}}^`manual_group...{{^:Manual group:   `^
`}}^

SYNOPSIS
========

  `name^`^
`description...{{^
DESCRIPTION
===========

`^
`}}^`options...{{^
OPTIONS
=======

`^
`}}^`problems...{{^
PROBLEMS
========

`^
`}}^`see_also...{{^
SEE ALSO
========

`^
`}}^`bugs...{{^
BUGS
====

`^
`}}^
..XPT
