In scripts/script1.sh line 31:
for i in {1..20} ; do
^-^ SC2034 (warning): i appears unused. Verify use (or export if used externally).


In scripts/script1.sh line 32:
        cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 20 | head -n 1 >> $filename3
            ^----------^ SC2002 (style): Useless cat. Consider 'cmd < file | ..' or 'cmd file | ..' instead.

For more information:
  https://www.shellcheck.net/wiki/SC2034 -- i appears unused. Verify use (or ...
  https://www.shellcheck.net/wiki/SC2002 -- Useless cat. Consider 'cmd < file...