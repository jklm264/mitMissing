# Dot Files

[Main source](https://www.stefaanlippens.net/my_bashrc_aliases_profile_and_other_stuff/)

- [Bash-specific](#Bash)
- [Mac-specific](#Mac)
- [Git-specific](#)
- [Vim-Specific](#Vim)

## Bash

### .*rc

- things related to interactive Bash usage

- Bash completion is a nice thing to have

  ```bash
  # Enable programmable completion features.
  if [ -f /etc/bash_completion ]; then
      source /etc/bash_completion
  fi
  ```

  

### .bash_aliases

- for aliases
- Make sure to have the following in your .*rc file

```bash
# Add bash aliases.
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi
```



### .profile

- Executed by the command interpreter for login shells. 
- This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login exists.
- Should contain all your run-time paths
  - ex: `Python_ENV=$some_PATH` or `JAVA_v8=$java_PATH`

#### .bash_profile

- making sure that both `.profile` and `.bashrc` are loaded for login shells

```bash
# .bash_profile
. ~/.profile
. ~/.bashrc
```

#### .bash_logout

- executed by bash(1) when login shell exits.



### .screenrc

- [GNU Screen](http://en.wikipedia.org/wiki/GNU_Screen) lets you have persisten shell sessions so you can log out on one computer and recoonect to the still running session from another computer.



## Mac

- zshrc
- Check out
  - <https://github.com/meatwallace/dotfiles/blob/master/.zshrc>
  - <https://github.com/meatwallace/dotfiles/blob/master/index.sh>



## Git



## Vim





## Other Sources

- <https://github.com/shapeshed/dotfiles>

- <https://github.com/meatwallace/dotfiles/blob/master/.gitconfig>

- <https://github.com/meatwallace/dotfiles/blob/master/.zaliases>

- <https://github.com/JJGO/dotfiles/blob/master/alias/.aliases>

  