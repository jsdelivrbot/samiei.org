# Watch and runner to run tests
#### Posted August 20, 2016

When you are using TDD, it's very convenient to have a tool to run your tests continuously.
If you are using an IDE it'll give you the proper way to run your tests very fast, also if you are using a text editor there is plenty of plugins allowing you to configure your command to run your test suites, but you will have less flexibility comparing to what IDEs can provide for you.

Personally, I found it more convenient to use a watch-and-runner tool to do that instead of an event-hook plugin. Here I'll share how I'm doing it right now. If you are already using a feature from your favorite editor, then you don't need to read it probably.

The idea is simple. You run your tests once you made any change on resources (source code files in our case) specified to watch. So you have this flexibility to choose what file(s)/dir(s) to watch and what command to run.



## Use a resource watcher

I'm using my personal package for doing that and to be honest, it was a simple PHP script before writing this blog post, but I release it as a package to share it with you.

You can install it using composer. Or just use other tools like [Pywatch](https://pypi.python.org/pypi/pywatch) alternatively.

```bash
$ composer global require stunt/watcher
```

Now all you need is the command to run your tests and specify files/directories you want to watch like below.

```bash
$ watcher <command> <file> (<file>)...
```

The simplest example would be `watcher phpunit ./`. you have your test suites configured and you want to watch all project files.

Now, watcher will run your tests immediately after every file change.

You can specify more files/dirs to watch. let's say you want to watch any change on `src` and `tests` directories plus any change on your index file.

```bash
$ watcher phpunit ./src ./tests ./public/index.php
```



## Run multiple commands in a row

You are not limited to run only one command of course. You can specify a command chain to run multiple commands, or you can run multiple watchers.

```bash
$ watcher 'clear && phpunit' src/ tests/
```



## Notification for test results

It's useful to receive notification for test results, then I don't need to switch my workspace too see test results.

![notify-on](/storage/notify-on.png)

I'm using a simple [bash script](https://github.com/Stunt/dotfiles/blob/master/bin/notify-on) to execute a command and trigger notify-send to show a simple success|error notification based on the command exit status.

```bash
    #!/usr/bin/env bash

    COMMAND=$(echo $@ | sed -e 's/--/ /g')
    $@
    CODE=$?

    if [[ $CODE = 0 ]]; then
        TITLE="Done"
        MESSAGE="Looks good to me (${COMMAND})"
        IMAGE="emblem-default"
    else
        TITLE="Oops"
        MESSAGE="Something wrong! (${COMMAND})"
        IMAGE="emblem-important"
    fi

    notify-send "${TITLE}" "${MESSAGE}" -i $IMAGE
```

Then all you need is to ask watcher to run your tests through the this bash script

```bash
$ watcher 'notify-on phpunit' ./
```

Again if you are using an IDE, you have these features out of the box. Otherwise, you might find it useful.
