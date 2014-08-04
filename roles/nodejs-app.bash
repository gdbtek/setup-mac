#!/bin/bash -e

function main()
{
    local appPath="$(cd "$(dirname "${0}")" && pwd)"

    "${appPath}/../cookbooks/node-js/recipes/install.bash" || exit 1
    "${appPath}/../cookbooks/nginx/recipes/install.bash" || exit 1
    "${appPath}/../cookbooks/redis/recipes/install.bash" || exit 1
    "${appPath}/../cookbooks/mongodb/recipes/install.bash" || exit 1
}

main