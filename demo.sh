#!/bin/bash

ALBUMID="376177"
RSSFILE="nfzk.xml"
# export PBUUID=""
./ximalaya_linux_amd64 $ALBUMID > $RSSFILE
ls
curl -X PUT -F c=@$RSSFILE https://ptpb.pw/$PBUUID
