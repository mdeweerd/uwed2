#!/bin/sh -xv
TMPFILE=BOM_$$
SOURCE=UWED.xml
OUTFILE=UWED2
EXT=.xlsx
#kicost --debug 10 -i ${SOURCE} -o ${TMPFILE} -var default --overwrite 5 --ignore_fields ${IGNORE_FIELDS}
EXCLUDES="rs newark tme"
EXCLUDES="sos newark"
EXCLUDES="digikey sos newark mouser tme farnell"
EXCLUDES="newark"
#EXCLUDES="digikey sos newark mouser farnell rs tme"
#EXCLUDES="${EXCLUDES} octopart"
EXCLUDES="arrow digikey farnell mouser newark rs tme" 
#EXCLUDES="arrow" 
#IGNORE_FIELDS="h desc variant"
#IGNORE_FIELDS="h variant"
IGNORE_FIELDS="h"
EXTRAOPTS="-f comment S1MN S1PN S2MN S2PN"
PARALLEL="-np 2"
PARALLEL=""

EXCLUDES="-e "${EXCLUDES}
EXCLUDES=

if [ 1 -eq 1 ]  ; then
## PROTO
# Smallcap added for testing, reg2 partially added (without the regulator) for testing
VARIANT="^(.*)$"
VNAME="proto"
kicost --currency USD  --debug 10 -i ${SOURCE} ${EXCLUDES} -o ${TMPFILE}${VNAME}${EXT} --variant $VARIANT --overwrite ${PARALLEL} --ignore_fields ${IGNORE_FIELDS} ${EXTRAOPTS}
mv ${TMPFILE}${VNAME}${EXT} ${OUTFILE}_${VNAME}${EXT}
fi
