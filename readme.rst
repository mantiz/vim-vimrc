
Christian's VIM config
~~~~~~~~~~~~~~~~~~~~~~

:Author:  Christian Hammerl <info@christian-hammerl.de>
:Version: 1.0
:Updated: 2012-01-24

==================
Installation guide
==================

1. Make sure the directory ``.vim`` (in your home directory) does not exist or is
   empty::

    git clone <github-url> ~/.vim
    cd ~/.vim
    git submodule --init --recursive update

   Or::

    git clone <github-url> <whatever-path-you-prefer>
    cd <whatever-path-you-prefer>
    git submodule --init --recursive update
    ln -s <whatever-path-you-prefer> ~/.vim

2. Create a file ``.vimrc`` in your home directory with the following content::

    source ~/.vim/vimrc

=============
Customization
=============

The subdirectory ``local`` can be used to customize this global configuration. It
is added to the `runtimepath` and is affected by the plugin `pathogen` which is
used to load bundles.

This directory is also ignored by this repository.

``local/config.vim``
=====================

This file is sourced automatically (if it exists) `before` anything else is
loaded by the `global vimrc`. This is used for any configuration settings that
has to be provided at an early processing state.

``local/vimrc``
================

This file is sourced as the `last command` of the `global vimrc` file. There
you can use this file to provide some `personal system wide` settings. This is
the place where your normal settings of your previous `.vimrc` file should go.

====================
Plugin - dirsettings
====================

This plugin allows directory specific vim settings. To enable this plugin,
paste the following content at the top of your ``local/config.vim``::

    execute 'source ' . expand("<sfile>:p:h") . '/../bundle/dirsettings.git/plugin/dirsettings.vim'

The plugin places two autocommands (``BufNewFile, BufEnter``) with the
autocommand group `dirsettings`. It calls an internally used function to load
directory specific settings, deletes all autocommands of the group dirsettings
and recalls the event (``BufNewFile or BufEnter``) which then calls other
defined autocommands. This is because this has to be included at the very first
in your ``local/vimrc``. These autocommands should be the very first which get
executed, otherwise it could happen that previously defined autocommands are
called twice.

