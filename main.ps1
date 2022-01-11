<# $vms is a text document that incudes names of virtual machines separated on different lines, for example:

virtualmachine13
John_Networking_Debian
MinecraftServerHost_Log4j 

#>

$vms = Get-Content -Path C:\test\tomatid.txt

# ForEach in line goes through the $vms file, takes the name on every line, stops it & deletes it, at least in theory..

ForEach ($line in $vms) {
  Stop-VM -VM $line -Confirm:$false
  Remove-VM -VM $line -DeletePermanently
   }
