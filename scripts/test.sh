#!/bin/bash

source scripts/.env

# handle all non-zero exit status codes
trap 'handler $? $LINENO' ERR

handler () {
    printf "%b" "${FAIL} ✗ ${NC} ${0##*/} failed on line $2 with exit status $1\n"
    exit "$1"
}

printf "%b" "${OKB}Executing unittest suite${NC}\n"
cd build
ctest -V
printf "%b" "${OKG} ✓ ${NC} Pass\n"