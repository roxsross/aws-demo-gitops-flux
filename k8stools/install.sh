#!/bin/bash

set -o pipefail

export KUBECTL_VERSION='v1.25.4'
export FLUX_VERSION='2.1.0'

# Check for and install dependencies
install_dependencies() {
	./utility/install-kubectl.sh || return $?
    ./utility/install-flux.sh || return $?
    ./utility/install-k9s.sh || return $?
	./utility/install-eksctl.sh || return $?
	./utility/install-jq.sh || return $?
	./utility/install-awscli.sh
	return $?
}

install_dependencies
