<# $vms is a text document that incudes names of virtual machines separated on different lines, for example:

virtualmachine13
John_Networking_Debian
MinecraftServerHost_Log4j 

#>

$vms = Get-Content -Path C:\test\tomatid.txt

# ForEach in line goes through the $vms file, takes the name on every line, searches for it recursively & deletes all matches..

ForEach ($VM_NAME in $vms) {
  #Stop-VM -VM $line -Confirm:$false
  # Searches from the path recursively and deletes all matches that are found in the $vms file
  Remove-Item C:\test\* -Recurse -include $VM_NAME
   }
