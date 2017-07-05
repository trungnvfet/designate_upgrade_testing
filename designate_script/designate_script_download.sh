#!/bin/bash
echo "================================= Starting copy scripts into Node ============================"

scp ~/designate_config_yaml/designate_upgrade.sh ~/designate_config_yaml/designate_download_only.sh root@10.164.178.42: &
scp ~/designate_config_yaml/designate_upgrade.sh ~/designate_config_yaml/designate_download_only.sh root@10.164.178.43: &
wait

ssh root@10.164.178.42 "bash ~/designate_download_only.sh" &
ssh root@10.164.178.43 "bash ~/designate_download_only.sh" &
wait
echo "===================================== DOWNLOAD OK ============================================"

