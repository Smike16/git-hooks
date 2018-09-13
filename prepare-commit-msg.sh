if [ -z "$BRANCHES_TO_SKIP" ]; then
    BRANCHES_TO_SKIP=(master develop test)
fi

BRANCH_NAME=$(git symbolic-ref --short HEAD)
TICKET_NAME=$(echo $BRANCH_NAME | sed -e 's:^\([^-]*-[^-]*\)-.*:\1:' -e \
    'y/abcdefghijklmnopqrstuvwxyz/ABCDEFGHIJKLMNOPQRSTUVWXYZ/')
BRANCH_EXCLUDED=$(printf "%s\n" "${BRANCHES_TO_SKIP[@]}" | grep -c "^$BRANCH_NAME$")
BRANCH_IN_COMMIT=$(grep -c "\[$BRANCH_NAME\]" $1)

if [ -n "$BRANCH_NAME" ] && ! [[ $BRANCH_EXCLUDED -eq 1 ]] && ! [[ $BRANCH_IN_COMMIT -ge 1 ]]; then 
    sed -i.bak -e "1s/^/$TICKET_NAME /" $1
fi
