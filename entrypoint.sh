#!/bin/sh -l


MAKEFILE=$(python3 .action/lab_config.py makefile_name)

echo "The makefile is ${MAKEFILE}"

if [[ ! -f ${MAKEFILE} ]]; then
    python3 .action/mkmakefiles.py .
fi

make -f $MAKEFILE test
exit $?

# echo "resultsx<<EOF" >> $GITHUB_OUTPUT
# python3 .action/checks.py header all
# echo "EOF" >> $GITHUB_OUTPUT