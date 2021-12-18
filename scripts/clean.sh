#!/bin/bash -e

source scripts/.env

# handle all non-zero exit status codes
trap 'handler $? $LINENO' ERR

handler () {
    printf "%b" "${FAIL} ✗ ${NC} ${0##*/} failed on line $2 with exit status $1\n"
    exit "$1"
}

printf "%b" "${OKB}Cleaning project${NC}\n"
rm -rfv build
printf "%b" "${OKG} ✓ ${NC} complete\n"