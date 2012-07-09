# FreeBSD + pkgng

This is an experiment to play with using [pkgng](http://wiki.freebsd.org/pkgng)
on Colin Perciva's [FreeBSD EC2
images](http://www.daemonology.net/freebsd-on-ec2/).

Running `blimpy start` in this directory will fire up a 9.0-RELEASE VM in AWS'
US West 2 region, and then it will install `pkg(1)`, `rsync(1)`, and
`puppet(1)`.

After it's done all that, it'll punt control over to Puppet, which incorporates
the [puppet-pkgng](https://github.com/xaque208/puppet-pkgng) provider for
installing packages.

Fancy!


## In Action

I've recorded a screencast of this in action [in this YouTube
video](http://www.youtube.com/watch?v=Dyq2_1Cv5Gk)
