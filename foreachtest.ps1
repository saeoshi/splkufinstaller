foreach ($servlist in Get-Content C:\Users\Administrator\Documents\server.txt) {
    $sess = New-PSSession -ComputerName $servlist -Credential Administrator
    Invoke-Command $sess -FilePath C:\Users\Administrator\Documents\splkinstall.ps1
    echo  "finish to install :" $servlist
    }
