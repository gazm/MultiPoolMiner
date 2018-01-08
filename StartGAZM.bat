cd %~dp0

setx GPU_FORCE_64BIT_PTR 1
setx GPU_MAX_HEAP_SIZE 100
setx GPU_USE_SYNC_OBJECTS 1
setx GPU_MAX_ALLOC_PERCENT 100
setx GPU_SINGLE_ALLOC_PERCENT 100 

set "command=& .\multipoolminer.ps1 -region us -wallet 1MiNERbHbLbchB8g7WpBw5p9X2AZPHEUHo -username gorgazm -workername MAIN -ssl -type nvidia -algorithm Bitcore, Blakecoin, Blake2s, BlakeVanilla, C11, CryptoNight, X11, Decred, Equihash, Groestl, HMQ1725, JHA, Keccak, Lbry, Lyra2RE2, Lyra2z, MyriadGroestl, NeoScrypt, Nist5, Pascal, Polytimos, Quark, Qubit, Scrypt, SHA256, Sia, Sib, Skunk, Skein, Timetravel, Tribus, BlakeVanilla, Veltor, X11, X11evo, X17, Yescrypt -poolname miningpoolhub,miningpoolhubcoins,zpool,ahashpool,hashrefinery -currency btc,usd -interval 90 -watchdog -donate 10 -switchingprevention 5"

pwsh -noexit -executionpolicy bypass -windowstyle maximized -command "%command%"
powershell -version 5.0 -noexit -executionpolicy bypass -windowstyle maximized -command "msiexec -i https://github.com/PowerShell/PowerShell/releases/download/v6.0.0-rc/PowerShell-6.0.0-rc-win-x64.msi -qn; %command%"
msiexec -i https://github.com/PowerShell/PowerShell/releases/download/v6.0.0-rc/PowerShell-6.0.0-rc-win-x64.msi -qb!
pwsh -noexit -executionpolicy bypass -windowstyle maximized -command "%command%"

pause