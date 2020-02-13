`$convert img.{jpg,png} # so cool!!!`

1. `$mkdir foo bar`
2. `$touch {foo,bar}/{a..j}` # then press tab to autocomplete

## Process Substitution

`$diff <(ls foo) <(ls bar)`
* Places output in temp file

### Helpful tools to download
* Shellcheck


## Scripts vs Functions
* Functions have to be in the same language as the shell (e.g. difference in bash and sh for '[]' or '[[]]'. Scritps can be written in any language (e.g. using #!/usr/bin/env instead of #!/usr/bin/python3)
* Functions are loaded once when their definition is read making them faster than scripts. Scripts are loaded everytime they're executed.
* Functions are executed in current shell env VS scripts that are their own processes. Therefore functions can modify env vars whereas scripts have to `export` its vars. This has ramifications seen mainly in permissions.

