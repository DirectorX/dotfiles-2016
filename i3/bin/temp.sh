#!/bin/bash
TEMP_SING=°C
echo $(sensors | grep 'temp1' | cut -c16-19 | sed '/^$/d' |  sed ':a;N;$!ba;s/\n/°C /g')°C
