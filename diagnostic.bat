@echo off
echo ========================
echo NETWORK DIAGNOSTIC TOOL
echo ========================

echo [1] Mengambil konfigurasi IP...
ipconfig/all > ipconfig.txt
echo selesai membuat config.txt
echo.

echo [2] Tes koneksi ke DNS Google (8.8.8.8)...
ping 8.8.8.8 > ping_dns.txt
echo Selesai membuat ping_dns.txt
echo.

echo [3] Tes koneksi ke google.com...
ping google.com > ping_google.txt
echo Selesai membuat ping_google.txt
echo.

echo [4] Melakukan trace route ke google.com...
tracert google.com > tracert_google.txt
echo Selesai membuat tracert_google.txt
echo.

echo [5] Melihat koneksi aktif...
netstat -an > netstat.txt
echo Selesai membuat netstat.txt
echo.

echo Semua file hasil pemeriksaan telah dibuat.
pause