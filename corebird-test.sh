#!/bin/bash

_data=`cat $1`


_data=${_data//\\/\\\\}
_data=${_data/\\u003e/\>}
_data=${_data/\\u003c/\<}

#echo $_data

gdbus call --session --dest org.baedert.corebird --object-path /org/baedert/corebird --method org.gtk.Actions.Activate 'post-json' "[<('baedert', '$_data')>]" "{}"
