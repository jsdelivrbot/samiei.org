# Easier life with bash aliases
#### Posted November 14, 2013

Both command line interface (CLI) and a graphical user interface (GUI) have advantages and disadvantages and they complete each other.

I think getting best UX doesn't require UI. and Linux Command Line can proof that. I'm using Terminal frequently and I love it like many of You.

In this short topic I want to show you very simple way to make it more easier and more fun with the trick that everyone knows but a few one use. Actually in UI, keyboard shortcuts help you a lot to done tasks faster. in CLI we have aliases to do that. It help us less type and call commands faster.

> I think getting best UX doesn't require UI. and Linux Command Line can proof that.

The trick is 'command aliases'. You used it for complex or long commands before but I want attend you to use it more and more.
Then let me start with how to defining an simple alias in ubuntu machine:
 
```bash
    $ alias short_name=long command even with options and switches
```

So Why I type `exit` when I can just type `e` for closing terminal every day? Then Don't limit yourself. You can save all your aliases in single file and access them forever.
Just put them into `~/.bash_aliases` then run below command 

```bash
    $ source ~/.bash_aliases
```

Here under is some of cool aliases I'm using in my own machine. Of course I have a few more for database management and git workflow but I listed my general aliases for you.

```bash
    alias documents='cd ~/Documents'
    alias downloads='cd ~/Downloads'
    alias desktop='cd ~/Desktop'
    alias music='cd ~/Music'
    alias videos='cd ~/Videos'
    alias e='exit'
    alias s='sudo'
    alias c='clear'
    alias p='ping 8.8.8.8'
    alias px='ps aux'
    alias install='apt-get install'
    alias ~='cd ~'
    alias ..='cd ..'
    alias ...='cd ../..'
    alias ....='cd ../../..'
    alias compress='tar -zcvf'
    alias extract='tar -zxvf'
    alias www='cd ~/www/html'
    alias myip='curl ip.appspot.com'
    alias phpdocer='/usr/bin/phpdoc -d ./ -t ./docs -i "docs/*,vendor/*,tests/*"'
    alias phpclidebuger='/usr/bin/php -dxdebug.remote_enable=1 -dxdebug.remote_mode=req -dxdebug.remote_port=9000 -dxdebug.remote_host=127.0.0.1'
```

So, B & have a good time.