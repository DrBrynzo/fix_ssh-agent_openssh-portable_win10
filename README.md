# fix_ssh-agent_openssh-portable_win10

I've had ssh-agent go missing from Windows 10 Services after removing the OpenSSH "Optional Feature" from "Apps" and installing openssh-portable. This is a quick script to avoid having to remember how to add the ssh-agent service when this happens. It can probably also be used for just adding the service too if you just unpacked openssh-portable and only wanted ssh-agent (no OpenSSH client or server).

The package I use this with is the PowerShell openssh-portable repo here: https://github.com/PowerShell/openssh-portable
