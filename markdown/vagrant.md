# Go for Vagrant
#### Posted August 4, 2013

`OUTDATET NOTICE: THIS CONTENT IS OLD. PLEASE, READ THIS PAGE KEEPING ITS AGE IN MIND.`

**[Vagrant](http://www.vagrantup.com)** is free and open source tools for creating and configuring virtual development environments.
[Vagrant](http://www.vagrantup.com) let you create your own custom environments as virtualmachine then it help you to manage instances.


> Vagrant is an amazing tool for managing virtual machines via a simple to use command line interface. With a simple `vagrant up` you can be working in a clean environment based on a standard template.

When you are working in your local machine as your development environment. you can use pre-build packages like Zend Server, or Xampp like things for Windows clients. WAMP, MAMP or compile or install components from source. but when project is going to production level you can't be sure your project is working fine in production servers or not.

You can also use Linux machines as your development environment or devide development environment between two machine one as client for your IDE, plugings etc.. and another for services like your web server if you are developer for example.

### Team work
Another challenge is team work! your team is working in local machines so you need main machine or set your local as master for sync works or source control repository.
If your machine is master or server (everything you call) everyone need it to be up to handle works.

So if you have another machine as server for working team problem is when one mistake make server down ..!

Maybe you are creating software for specific environment or operation system so you can not force all team members to have that specific machine. Forcing developers to use the same OS is going to lead to problems, reduced productivity and promoting nerd-fighting.

### Virtualisation
That might sound easy if you just think about using virtual machines.
Virtualisation is the answer and it is nothing new, but when people think of virtualisation they often think of performance issues and their fans spinning wildly while their laptop desperately tries to run two operating systems.

But managing instances might be onerous. for example we have test the software in diffrent web servers. nginx, litespeed and apache so we have to duplicate virtual machines install specific softwares, modules, config each of them. then we need three diffrent VMs with all the softwares installed.

### Vagrant

<pre class="prettyprint">
$ vagrant box add {title} {url}
$ vagrant init {title}
$ vagrant up
</pre>

Using vagrant instead you share a common base box and vagrant itself will provision the technology stack you require for the specific projects depending by what you are going to define in the specific vagrant file. [Vagrant](http://www.vagrantup.com) add an additional layer of automation to the VM creation process making it very suitable for a multi-developer environment.

So this is time for you too google it.