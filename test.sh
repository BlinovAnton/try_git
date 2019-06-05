#!/bin/bash

echo "\ndifference between 1.s and 1_vol.s\n"
diff 1.s 1_vol.s | grep volatile -C2
echo "\n"

