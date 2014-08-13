#! /bin/bash

ADDR=$(ip addr show dev eth0 | awk '/inet / { split($2, res, "/"); print res[1] }')
echo "============================================="
echo "Important Torch7 Docker container information"
echo "============================================="
echo
echo "Assuming you didn't do any special kind of networking,"
echo "You can connect to the gfx.js console by visiting the following URL in your web browser:"
echo
echo "http://${ADDR}:8000/"
echo
echo "============================================="
