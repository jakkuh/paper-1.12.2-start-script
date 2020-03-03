#!/bin/sh
while true; do
    sh update.sh
    java -server -Xms3G -Xmx3G -XX:+UseG1GC -XX:+UnlockExperimentalVMOptions -XX:MaxGCPauseMillis=100 -XX:+DisableExplicitGC -XX:TargetSurvivorRat$
    echo "If you want to completely stop the server process now, press Ctrl+C before the time is up!"
    echo "Rebooting in:"
    for i in 5 4 3 2 1; do
        echo "$i..."
        sleep 1
    done
    echo "Rebooting now!"
done
