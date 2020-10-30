Add-Type -AssemblyName 'System.Web'
$pass = [System.Web.Security.Membership]::GeneratePassword(18,5)
$md5 = New-Object -TypeName System.Security.Cryptography.MD5CryptoServiceProvider
$utf8 = New-Object -TypeName System.Text.UTF8Encoding
$md5hash = [System.BitConverter]::ToString($md5.ComputeHash($utf8.GetBytes($pass)))
$sha256 = New-Object -TypeName System.Security.Cryptography.SHA256CryptoServiceProvider
$sha256hash = [System.BitConverter]::ToString($sha256.ComputeHash($utf8.GetBytes($pass)))
Write-Output $pass
Write-Output $md5hash
Write-Output $sha256hash
