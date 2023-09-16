#Creates customer folders in D:\Production\
#Pulls the customer name list from file of cust_list.txt
$custname = Get-Content -Path 'C:\Users\GCotto\Documents\powershell\cust_list.txt'
$dirpath = 'C:\Users\GCotto\test_ps'
foreach ($cust in $custname)
{
New-Item -ItemType Directory -Path $dirpath\$cust.com
}

#Creates folder of D:\Resources
$resourcespath = 'D:\Resources'
New-Item -ItemType Directory -Path $resourcespath

#Creates folders in D:\Resources\uploads\
$uploadspath = 'C:\Users\GCotto\test_resources\uploads'
foreach ($cust in $custname)
{
New-Item -ItemType Directory -Path $uploadspath\$cust
}

#Creates folders in D:\Resources\sso\
$ssopath = 'C:\Users\GCotto\test_resources\sso'
foreach ($cust in $custname)
{
New-Item -ItemType Directory -Path $ssopath\$cust
}
