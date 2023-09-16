cls

#Update env variable for the necessary env
$env = ("dev").ToLower()

$CustomerName0 = ("customer1").ToLower()
$SiteName0 = "$CustomerName0.com"
$URL0 = "$CustomerName0-$env.com"
$ADUser0 = "$env\iis__$CustomerName0" # "domain\username"
$ADPassword0 = "password-goes-here"
$CodePath0 = "D:\Production\$SiteName0"
$VirtualDirectoryName0 = "Help"
$VirtualDirectoryPath0 = "D:\Production\HelpFiles\Employees"
#### -------------------------------- ####
# Application Pool
$appPool = New-WebAppPool -Name $SiteName0
$appPool.processModel.userName = $ADUser0
$appPool.processModel.password = $ADPassword0
$appPool.processModel.identityType = "SpecificUser"
$appPool | Set-Item
# Website
New-Website -Name $SiteName0 -ApplicationPool $SiteName0 -PhysicalPath $CodePath0
New-WebBinding -Name $SiteName0 -HostHeader $URL0 -Port 443 -IPAddress "*" -Protocol "https"
# Virtual Directory (HelpFiles)
New-WebVirtualDirectory -Site $SiteName0 -Name $VirtualDirectoryName0 -PhysicalPath $VirtualDirectoryPath0


$CustomerName1 = ("customer2").ToLower()
$SiteName = "$CustomerName.com"
$URL = "$CustomerName-$env.com"
$ADUser = "$env\iis__$CustomerName1" # "domain\username"
$ADPassword = "password-goes-here"
$CodePath = "D:\Production\$SiteName"
$VirtualDirectoryName = "Help"
$VirtualDirectoryPath = "D:\Production\HelpFiles\Employees"
#### -------------------------------- ####
# Application Pool
$appPool = New-WebAppPool -Name $SiteName
$appPool.processModel.userName = $ADUser
$appPool.processModel.password = $ADPassword
$appPool.processModel.identityType = "SpecificUser"
$appPool | Set-Item
# Website
New-Website -Name $SiteName -ApplicationPool $SiteName -PhysicalPath $CodePath
New-WebBinding -Name $SiteName -HostHeader $URL -Port 443 -IPAddress "*" -Protocol "https"
# Virtual Directory (HelpFiles)
New-WebVirtualDirectory -Site $SiteName -Name $VirtualDirectoryName -PhysicalPath $VirtualDirectoryPath


$CustomerName2 = ("customer3").ToLower()
$SiteName1 = "$CustomerName1.com"
$URL1 = "$CustomerName1-$env.com"
$ADUser1 = "$env\iis__$CustomerName2" # "domain\username"
$ADPassword1 = "password-goes-here"
$CodePath1 = "D:\Production\$SiteName"
$VirtualDirectoryName1 = "Help"
$VirtualDirectoryPath1 = "D:\Production\HelpFiles\Employees"
#### -------------------------------- ####
# Application Pool
$appPool = New-WebAppPool -Name $SiteName1
$appPool.processModel.userName = $ADUser1
$appPool.processModel.password = $ADPassword1
$appPool.processModel.identityType = "SpecificUser"
$appPool | Set-Item
# Website
New-Website -Name $SiteName1 -ApplicationPool $SiteName1 -PhysicalPath $CodePath1
New-WebBinding -Name $SiteName1 -HostHeader $URL1 -Port 443 -IPAddress "*" -Protocol "https"
# Virtual Directory (HelpFiles)
New-WebVirtualDirectory -Site $SiteName1 -Name $VirtualDirectoryName1 -PhysicalPath $VirtualDirectoryPath1
