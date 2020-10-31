# Fix ssh-agent disappearing from Services if you've removed Microsoft's SSH package and moved to openssh-portable.
# Assumes OpenSSH portable is installed in "C:\Program Files\OpenSSH"
# @DrBrynzo 
# https://github.com/DrBrynzo

New-Service -Name ssh-agent -DisplayName "OpenSSH Authentication Agent" -BinaryPathName "C:\Program Files\OpenSSH\ssh-agent.exe" -Description "Agent to hold private keys used for public key authentication." -StartupType Automatic
sc.exe sdset ssh-agent "D:(A;;CCLCSWRPWPDTLOCRRC;;;SY)(A;;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;BA)(A;;CCLCSWLOCRRC;;;IU)(A;;CCLCSWLOCRRC;;;SU)(A;;RP;;;AU)"
sc.exe privs ssh-agent SeImpersonatePrivilege
Start-Service ssh-agent