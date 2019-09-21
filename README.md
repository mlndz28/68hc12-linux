Installing
=====

Please make sure your environment has both `wine` and `wget` installed.

```bash
sudo su -c "bash <(wget -qO- https://raw.githubusercontent.com/mlndz28/68hc12-linux/master/installer.sh)" root
```

Using
=====
(Most of the stuff I wrote are just wrappers for programs developed by Eric Engler.)
## Assembling
```
Usage: as12 filename [options]
Options:
   -o<filename>   Define object file (default extension is .s19)
   -d<symbol>     Define the symbol 'name' with a value of 1
   -l<dir>        Define a library directory with path 'lib'
   -L<filename>   Define listing file (default extension is .lst)
   -D             Turn on debugging printout
   -s<filename>   Create a symbol table file (use dflt: filename.sym)
   -p<part #>     Define MCU part number, such as 68hc12a4 (see #ifp)
Listing Options:
   --list         Display list file to console
   --cycles       Display the cycle count
   --line-numbers Display line numbers in list file
Other Options:
   --no-warns     Supress warnings being displayed to console and list file
```