#!/bin/bash

# get the modules 
wget https://github.com/mkubecek/vmware-host-modules/archive/player-16.2.3.tar.gz

tar -xzf vmware-host-modules-player-16.2.3.tar.gz
cd vmware-host-modules-player-16.2.3
tar -cf vmmon.tar vmmon-only
tar -cf vmnet.tar vmnet-only

# cp to vmware module sources 
sudo cp -v vmmon.tar vmnet.tar /usr/lib/vmware/modules/source/

#install moudle 
sudo vmware-modconfig --console --install-all
