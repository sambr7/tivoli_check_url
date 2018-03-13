######################################################################
# ScriptName: check_url.sh
# Author: Samuel Januario (samuel.januario01@gmail.com)
# Date: 25/07/2017
# Purpose: Monitor URL Status Code
######################################################################
#!/usr/bin/bash
url_list=`cat /opt/IBM/ITM/localconfig/lz/scripts_definitions/check_url.cfg`
######################################################################
for url in $url_list
  do
    for url_check in url
      do
        rc=`echo $url | cut -d "," -f1`
        url_unit=`echo $url | cut -d "," -f2`
        test=`curl -Isk $url_unit --connect-timeout 10 |head -1 |awk '{print $2}'`
        if [[ $rc == $test ]]
          then
            echo "OK;$rc;URL $url_unit is UP"
          else
            echo "ERROR;$rc;URL $url_unit is DOWN"
        fi
    done
done
