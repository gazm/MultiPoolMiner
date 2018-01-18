cd %~dp0

setx GPU_FORCE_64BIT_PTR 1
setx GPU_MAX_HEAP_SIZE 100
setx GPU_USE_SYNC_OBJECTS 1
setx GPU_MAX_ALLOC_PERCENT 100
setx GPU_SINGLE_ALLOC_PERCENT 100 

set "command=& .\multipoolminer.ps1 -region us -wallet 1MiNERbHbLbchB8g7WpBw5p9X2AZPHEUHo -username gorgazm -workername AMD -ssl -type amd,nvidia -algorithm equihash,neoscrypt,decred,lyra2z,pascal,siaclaymore,ethash,cryptonight,lyra2re2,skunk,sib,nist5,bitcore,blakecoin,blake2s,x17,tribus,lbry,phi -poolname miningpoolhub,miningpoolhubcoins,zpool,ahashpool,hashrefinery,nicehash -currency btc,usd -interval 90 -watchdog -donate 10 -switchingprevention 5 -ExcludeMinerName Excavator1,Excavator2,ExcavatorNvidia1,ExcavatorNvidia2,ClaymoreAmd"

pwsh -noexit -executionpolicy bypass -windowstyle maximized -command "%command%"
powershell -version 5.0 -noexit -executionpolicy bypass -windowstyle maximized -command "msiexec -i https://github.com/PowerShell/PowerShell/releases/download/v6.0.0-rc/PowerShell-6.0.0-rc-win-x64.msi -qn; %command%"
msiexec -i https://github.com/PowerShell/PowerShell/releases/download/v6.0.0-rc/PowerShell-6.0.0-rc-win-x64.msi -qb!
pwsh -noexit -executionpolicy bypass -windowstyle maximized -command "%command%"

pause