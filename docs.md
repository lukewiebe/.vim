# .vim Documentation

This file aims to explain all the decisions I've made in organizing my Vim configuration.

- after/ftplugin
	- This is a folder that loads filetype-specific configuration files. The file should be named <filetype>.vim or `<filetype>_<function>.vim`. For extreme cases, you can make a directory called `<filetype>` that will load all .vim scripts inside when a file matching the type is loaded.
	- You can get the exact name of a filetype by opening a file of that type, then running `:set filetype?`.
