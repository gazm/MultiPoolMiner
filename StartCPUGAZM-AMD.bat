cd %~dp0

setx GPU_FORCE_64BIT_PTR 1
setx GPU_MAX_HEAP_SIZE 100
setx GPU_USE_SYNC_OBJECTS 1
setx GPU_MAX_ALLOC_PERCENT 100
setx GPU_SINGLE_ALLOC_PERCENT 100 

set "command=& .\multipoolminer.ps1 -region us -wallet 1MiNERbHbLbchB8g7WpBw5p9X2AZPHEUHo -username gorgazm -workername AMD -ssl -type amd,cpu -algorithm equihash,sib,neoscrypt,decred,lbry,bitcore,lyra2v2,m7m,skein,blake2s,blakecoin,xevan,hmq1725,x17,sia,c11,nist5,groestl,jha,tribus,skunk,phi,hsr,polytimos,lyra2z,pascal,siaclaymore,ethash -poolname miningpoolhub,miningpoolhubcoins,zpool,ahashpool,hashrefinery -currency btc,usd -interval 120 -watchdog -donate 10"

pwsh -noexit -executionpolicy bypass -windowstyle maximized -command "%command%"
powershell -version 5.0 -noexit -executionpolicy bypass -windowstyle maximized -command "msiexec -i https://github.com/PowerShell/PowerShell/releases/download/v6.0.0-rc/PowerShell-6.0.0-rc-win-x64.msi -qn; %command%"
msiexec -i https://github.com/PowerShell/PowerShell/releases/download/v6.0.0-rc/PowerShell-6.0.0-rc-win-x64.msi -qb!
pwsh -noexit -executionpolicy bypass -windowstyle maximized -command "%command%"

pause