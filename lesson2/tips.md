`$convert img.{jpg,png} # so cool!!!`

1. `$mkdir foo bar`
2. ###### `$touch {foo,bar}/{a..j}` # then press tab to autocomplete


## Process Substitution

`$diff <(ls foo) <(ls bar)`
* Places output in temp file


### Helpful tools to download
* Shellcheck


## Scripts vs Functions
* Functions have to be in the same language as the shell (e.g. difference in bash and sh for '[]' or '[[]]'. Scripts can be written in any language (e.g. using #!/usr/bin/env instead of #!/usr/bin/python3)
* Functions are loaded once when their definition is read making them faster than scripts. Scripts are loaded every time they're executed.
* Functions are executed in current shell env VS scripts that are their own processes. Therefore functions can modify env vars whereas scripts have to `export` its vars. This has ramifications seen mainly in permissions.


## Finding Files and Code

### Find

Usage: `$find <location(cwd)> <search_term>`

`$find . -iname src -type d # Find all directories named src (case insensitive)`

`$find . -name '*.tmp' -exec rm {} \; # Deletes all .tmp files`

`$find . -mtime -1 # Find all files modified in the last day`

`$find . -size +500k -size -10M -name '*.tar.gz' # Find all zip files with size in range 500k to 10M`

* Can also use `$fd` which has less switches

### Locate

Usage: `$locate <filename>`

* Uses _updatedb_ which is done via cron timer, not instant. However this is quicker.

### Grep w/ Ack (aka Finding Code)

Usage: `$Grep -R # Recursively (inside dirs and files)`

* Useful flags:
  * -C (Context) - around the matching line
  * -B (Before)
  * -A (After) 
  * -i (Ignore Case)
  * -v (in**V**ert-match)
  * -R (Recursive)

* Trivia: _Global regular expression print_

  

## History Searching

Forget `$history | grep <search>`

<Ctrl + R> for **reverse-i-search** which uses **fzf**

* `fzf` is a general purpose fuzzy finder that can used with many commands. Here is used to fuzzily match through your history and present results in a convenient and visually pleasing manner.
* Another history-based autosuggestions is the fish shell which comes standard in zsh
* Forensics-wise remember the `.bash_history && .zhistory` files!



## Directory Navigation

* cd or ln -s

* TUI: ranger or nnn or tree or broot
* [autojump z](https://github.com/rupa/z)

## MISC

* $which, $type, $alias
