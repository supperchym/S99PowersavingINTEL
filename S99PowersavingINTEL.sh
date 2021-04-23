#!/bin/sh

for c in $(ls -d /sys/devices/system/cpu/cpu[0-9]*);
do if ! grep -q 'conservative' $c/cpufreq/scaling_governor ;
    then echo conservative >$c/cpufreq/scaling_governor ;
fi
done