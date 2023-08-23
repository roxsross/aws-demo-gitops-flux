#!/bin/bash
which flux > /dev/null && exit 0
. $(dirname $0)/color-prompt.sh
prompt_info "Installing flux"
curl -s https://fluxcd.io/install.sh | sudo FLUX_VERSION=$FLUX_VERSION bash
flux version 2> /dev/null
exit $?