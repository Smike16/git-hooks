#!/bin/bash
# Adds branch name to commit message

BRANCH_NAME=$(git symbolic-ref --short HEAD)
TICKET_NAME=$(echo $BRANCH_NAME | grep -oE '\w+-\d+')

BRANCH_IN_COMMIT=$(grep -c "\[$TICKET_NAME\]" $1)

if [ -n "$BRANCH_NAME" ] && ! [[ $BRANCH_IN_COMMIT -ge 1 ]]; then 
    sed -i.bak -e "1s/^/$TICKET_NAME /" $1
fi
