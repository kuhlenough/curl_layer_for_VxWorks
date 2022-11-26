# cURL layer for VxWorks

VxWorks supports and bundles the curl library to support HTTP/HTTPS.
But you might want the added capabiltiy of the curl command?

This repository cross-builds the cURL command as an RTP using cURL's supplied CMake support.
You place the contents of this repository in a recent VxWorks installation in the **contrib** directory. Create a VxWorks Source Build (VSB) project, include the the CURL layer, and **curl** is built and placed in the usr/root/3pp/deploy/usr/bin directory when the project is built.


```
->cmd
[vxWorks *]# set env LD_LIBRARY_PATH="<yourVsb>/usr/3pp/deploy/usr/lib;<yourVsb>/usr/lib/common"**
[vxWorks \*]# cd <yourVsb>/usr/3pp/deploy/usr/bin/ 
[vxWorks *]# curl -V
curl 7.86.0-DEV (VxWorks) libcurl/7.86.0-DEV OpenSSL/3.0.5 zlib/1.2.12
Release-Date: [unreleased]
Protocols: dict file ftp ftps gopher gophers http https imap imaps mqtt pop3 pop3s rtsp smb smbs smtp smtps telnet tftp 
Features: alt-svc AsynchDNS HSTS HTTPS-proxy IPv6 Largefile libz NTLM SSL threadsafe
[vxWorks *]# curl -O --user <user>:<password> ftp://147.11.146.40/linefind.zip
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  1232  100  1232    0     0   1432      0 --:--:-- --:--:-- --:--:--  1432
[vxWorks *]# ls line*
linefind.zip 
[vxWorks *]# 
```
