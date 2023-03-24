# bat_script_function_1
bat script function to get dir command  's file index number for parsing<br>
Once you get the index use it like this to get file name<br>
`set filename=!str:~%index%,250!`<br>
where str is the whole line of dir output<br>
250 is a random long number , file names are not generally expected to be longer than this number.<br>
