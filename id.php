<?php
$containerId = trim(file_get_contents('/etc/hostname'), " \n\r\t\0\x0B");
echo "the working Container ID is " . $containerId;
?>