#!/bin/bash
# Decommission securityonion node
# Not a complete decom.  Server is still functional and setup can be rerun.
# If the node will not be brought online then a complete disk wiping is encouraged.
# Install scrub
/usr/bin/apt-get install scrub
# Stop SecurityOnion
/usr/sbin/so-stop

echo "Wiping data with one random pass"

echo "/usr/bin/scrub -X --pattern=random /tmp/decom" >> /usr/sbin/nsm_all_del_quick
# The worker script
/usr/sbin/nsm_all_del_quick

echo "Decommission complete"
