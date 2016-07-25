# find out the reason of system reboot
last -x
cat /var/log/syslog | grep "Feb 22 1"

# clean the /boot
ls_kernel
sudo apt-get purge linx-heder-*

# remove duplication file name
rp=`pwd`
for d in `ls`; do
  cd $rp/$d
  for p in `ls *.PEF`; do
    fn="${p%.*}"
    if [ -f $fn.JPG ];
      then
        echo "$fn duplicated in $rp/$d/"
        ls $fn.PEF
        ls $fn.JPG
        # keeping the PEF file
        rm $fn.JPG
      else
        echo "$rp/$d/$fn only has PEF"
        ls $fn.PEF
    fi
  done
  cd $rp
done
