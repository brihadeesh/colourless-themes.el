# colourless-themes

`colourless-themes` is a collection of “primarily colourless themes".

## Screenshots 
*WIP*

## Installation

Install this however you would install a package from github - this varies with
the flavour of Emacs in use. If you use doom-emacs like I do, add this line in
your `packages.el`:

``` emacs-lisp
(package! colourless-themes :recipe
  (:host github
   :repo "peregrinat0r/colourless-themes.el"))
```

Then just run the `doom/reload` command from within doom-emacs or from a
terminal run:

``` sh
$EMACSDIR/bin/doom sync
```

Remember to restart Emacs after this.

## Usage

For doom-emacs, load any theme from this repo by updating your `config.el` thus:

``` emacs-lisp
# this line usually exists so just modify the theme name
(setq doom-theme 'nordless)
```

or temporarily set it using the `load-theme` command for doom-emacs, or the
`customize-themes` for vanilla Emacs.

Currently, this repository features:

- `nordless`, dark and blue, inspired by
  [nord](https://github.com/arcticicestudio/nord)
- `hydrangealess`, dark and magenta, inspired by
  [hydrangea](https://github.com/yuttie/hydrangea-emacs)
- `seagreenless`, light and seagreen
- `lavenderless`, purple and mint, inspired by
  [Lavender](https://github.com/emacsfodder/emacs-lavender-theme/)
- `nofrils-darkless`, a clone of
  [nofrils-dark](https://github.com/robertmeta/nofrils)
- `darkless`, dark and white, inspired by nofrils, but with less
  colours
- `chocolateless`, chocolate taste, inspired by
  [chocolate](https://github.com/SavchenkoValeriy/emacs-chocolate-theme)
- `einkless`, light theme, inspired by
  [eink](https://github.com/maio/eink-emacs)
- `broceliande`, green and cyan

Additionally check out other themes I've made with this macro:

- [`beelzebub`](https://gitlab.com/peregrinator/beelzebub.el), a dark, purplish
  colourscheme based on Stanislav Karkavin's vim theme:
  [vim-beelzebub](https://github.com/xdefrag/vim-beelzebub).
- [`mephistopheles`](https://gitlab.com/peregrinator/mephistopheles.el), a dark
  theme with yellow and green foreground, again inspired by Stanislav Karkavin's
  vim theme mentioned above.
  

