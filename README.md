# Sysrepo YANG Modules
This repository contains a collection of YANG modules developed for the use with [sysrepo datastore](https://github.com/sysrepo/sysrepo):

- `/applications/`: contains YANG modules of Unix/Linux applications that use sysrepo as the datastore
- `/internal/`: contains YANG modules used internally in sysrepo datastore

## Statistics & Compilation Results

All YANG modules committed here are periodically compiled and checked for errors (on daily basis). Overall statistics can be displayed on [this site](http://www.claise.be/2016/07/ietf-yang-modules-statistiques/):
  * [application-related YANG modules](http://www.claise.be/SysrepoApplicationYANGPageCompilation.html)
  * [internal YANG modules](http://www.claise.be/SysrepoInternalYANGPageCompilation.html)

## Submission Procedure:

If you wrote a new YANG module for your application that uses sysrepo, please add it to respective directory, modify [download.sh](download.sh) script for automatic updates and open a pull request, or contact us at sysrepo-devel@sysrepo.org to add it here.
