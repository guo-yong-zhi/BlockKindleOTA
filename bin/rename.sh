#!/bin/sh
mntroot rw
rm /mnt/us/update*.bin
cd /usr/bin
mv otaupd otaupd.bck
mv otav3 otav3.bck

echo "#!/bin/sh" > /usr/bin/otav3
echo "/bin/true" >> /usr/bin/otav3
echo "#!/bin/sh" > /usr/bin/otaupd
echo "/bin/true" >> /usr/bin/otaupd
chmod 755 /usr/bin/otav3 /usr/bin/otaupd

mntroot ro
reboot
