#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )



echo $(readlink -f "${BASH_SOURCE[0]}")


if [ -f .lock ]; then
    echo lock file found, are we already running?
    exit
fi

touch .lock

finish()
{
    rm .lock
    exit
}
trap finish SIGINT

while :; do
    ./monitor.sh
    sleep 5
done
