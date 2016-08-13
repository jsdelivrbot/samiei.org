# My Setup: Bash aliases
#### Posted August 13, 2016

A couple of years ago I was writing every day in my Persian blog. I stopped that blog and after that, I've been wanting to start blogging more frequent, and I'm not the only one that decides to blog more and then it never happens. Again another time I choose to write, I start by removing some old and outdated posts, and I decided to start with small and easy topics, and now you are reading my first try.

Bash alias is an abbreviation or shortcut that helps you to avoid typing a long command sequence. So instead of typing `git log --graph --abbrev-commit --pretty=oneline -n 20` you can just type `gl`, much easier right?

They not only useful for shortening long commands and options, but also you can define more productive aliases. For instance instead of typing `cd ../..` you can type `...`.

If you are not using aliases, I highly recommend starting using them in your workflow. They are useful not only for long or hard to remember commands but also for commands that you are using more frequently. Even for me that I'm using [fish shell](https://fishshell.com) which is much smarter than other shells to handle history, I still get benefits for using bash aliases.

## Create new alias

Defining a bash alias is simple as below:

```bash
$ alias name=command with options
```

Now if you want to have them permanently, you can just add them to the `~/.bashrc` file and call `source ~/.bashrc` and done. But the right practice is to put them in a separate file, and it's very common to put all of them in `~/.bash_aliases` and then call them with `source ~/.bash_aliases;` from `~/.bashrc` file. (if you are using your own .bash_profile then just add it there)

Now that you know how to define an alias let me show you some of my useful aliases.

## Navigation
I have some aliases for navigation in my .bash_aliases file. As you can see none of them is shortcut for a long or complicated command, but make your life much easier and faster.

```bash
alias ~='cd ~'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias desktop='cd ~/Desktop'
alias downloads='cd ~/Downloads'
alias documents='cd ~/Documents'
alias code='cd ~/Code'
```

## Changing defaults

Sometimes you want to add extra things to your shell built-in. For example, I always like to have verbosity for `rm` command.

```bash
alias rm='rm -v'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
```

## Some shortcuts

Shortcuts are the first reason to use aliases. Below you can find my shortcuts:

```bash
alias compress='tar -zcvf'
alias extract='tar -zxvf'
alias install='sudo apt install'
alias v='vim'
alias s='sudo'
alias px='ps aux'
alias fn='find -name'
alias p='ping 8.8.8.8'
alias fs='stat -f "%z bytes"'
alias fn='find ./ -name'
alias myip='curl ip.appspot.com'
alias mysqlc='mysql -u root -p'
alias mydump='mysqldump -u root -p'
```

## GIT

And finally, the most wanted in my aliases are git aliases. I believe you'll like to use bash aliases just after seeing them.

```bash
alias g='git'
alias ga='git add'
alias gap='git add -p'
alias gd='git diff'
alias gds='git diff --staged'
alias glp='git log -p'
alias gc='git commit -m'
alias gs='git status -s'
alias gp='git push origin master'
alias gl='git log --graph --abbrev-commit --pretty=oneline -n 20'
alias master='git checkout master'
alias dev='git checkout dev'
alias checkout='git checkout'
alias fetch='git fetch -p'
alias pull='git pull --rebase --prune --verbose --no-ff --no-commit --no-stat'
alias push='git push origin HEAD'
alias forcepush='git push --force origin HEAD'
alias undopush='git push -f origin HEAD^:master'
alias stash='git stash'
alias pop='git stash pop'
alias undo='git reset HEAD^'
alias amend='git commit --amend --no-edit'
alias log='git log --graph --abbrev-commit --pretty=oneline -n 20'
```
