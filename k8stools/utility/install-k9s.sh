#!/bin/bash
which k9s > /dev/null && exit 0
. $(dirname $0)/color-prompt.sh
prompt_info "Installing k9s"
curl -sS https://webinstall.dev/k9s | bash
k9s version 2> /dev/null
exit $?