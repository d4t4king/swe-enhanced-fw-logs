# [3.1] Enhanced Firewall Logs MOD 
* Author: KrisTof on smoothwall.org forums
* Resurrected and maintained by dataking on smoothwall.org forums

* Works on Smoothwall 3.1 ONLY !!

## Known issues:
The GitHub release package _does not_ install as expected.  I am working on a script that will install from Github source or package.  Until that release you must use the package from the Smoothwall Express forums, or smoothwall-info.net

## Compatibility with other Mods:
This mod was known to previously have issues with the Active IP Block mod.  I don't believe that mod was carried forward to 3.1, so there shouldln't be any conflicts.

### 1. What does this mod do?

This mod replaces /httpd/cgi-bin/logs.cgi/firewalllogs.dat and provides more advanced filtering.

### 2. What is this good for?

In addition with the basic filtering by date, it allows for the
filtering of logs based on the Incoming Interface (eth?) as well
as by Source IP ("the offenders"). Blocked IPs can be shown or hidden.

The Source IPs are colored red if they come from outside (not
from either your local green, orange or purple networks). This
includes your red interface IP (which is local). In other
words, any OUTSIDE IP (the one you care about) will be red. Next
to these "offending" IPs, a number between brackets indicate how
many packets have been dropped. 

Finally, it adds padlock icons next to IPs that are already blocked. 
If the IP was blocked manually or through Active Guardian, the padlock
is red. If an IP was blocked automatically by the Active IP Block MOD, 
the padlock will be orange.

### 3. How to install ?

Transfer SW31\_Enhanced\_FW\_Logs-V1.4.x.tgz to /tmp on your smoothwall
and run the commands:

```
$ cd /tmp
$ tar zxvf SW3_Enhanced_FW_Logs-V1.4.1tgz -C /
$ ./install.sh
```

### 4. How to uninstall ?

Simply run the command:

```$ /var/smoothwall/mods/enhanced-fw-logs/uninstall-enhanced-fw-logs-1.4.x.pl```

Go to your Smoothwall Firewall Logs page and enjoy!


