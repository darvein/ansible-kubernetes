#!/bin/bash
#
# Script to generate a kubeadm token
#

token=`python -c 'import random; print "%0x.%0x" % (random.SystemRandom().getrandbits(3*8), random.SystemRandom().getrandbits(8*8))'`

echo "Generated token: $token"
echo "token: $token" > roles/k8s/tasks/token.yml
