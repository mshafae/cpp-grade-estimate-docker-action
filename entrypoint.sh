#!/bin/sh -l


MAKEFILE=$(python3 .action/lab_config.py makefile_name)

make -f $MAKEFILE test
exit $?

# echo "resultsx<<EOF" >> $GITHUB_OUTPUT
# python3 .action/checks.py header all
# echo "EOF" >> $GITHUB_OUTPUT