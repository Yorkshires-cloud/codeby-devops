In scripts/script2.sh line 5:
files=/home/vboxuser/myfolder/* #файлы в рабочей директории
      ^-----------------------^ SC2125 (warning): Brace expansions and globs are literal in assignments. Quote it or use an array.


In scripts/script2.sh line 11:
        ls | wc -l
        ^-- SC2012 (info): Use find instead of ls to better handle non-alphanumeric filenames.

For more information:
  https://www.shellcheck.net/wiki/SC2125 -- Brace expansions and globs are li...
  https://www.shellcheck.net/wiki/SC2012 -- Use find instead of ls to better ...