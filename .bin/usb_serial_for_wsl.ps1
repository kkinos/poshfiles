# Windows側に繋いだUSBシリアル変換機をWSL側に繋げるスクリプト
# すでに繋がっていれば、取り除く

$serial_device_num = usbipd wsl list | Select-String "USB Serial Converter" | Measure-Object -Line

if ( 1 -ne $serial_device_num.lines )
{
	echo "Multiple serial devices or nothing"
	echo "finish"
	exit
}

[String]$serial_device = usbipd wsl list | Select-String "USB Serial Converter" 
$busid = [Microsoft.VisualBasic.Strings]::Left($serial_device, 4).Trim()
$state = [Microsoft.VisualBasic.Strings]::Right($serial_device, 12).Trim()

if ($state -eq "Not attached" )
{
	usbipd wsl attach --busid $busid
	echo "serial device attached"
	exit
} 
else 
{
	usbipd wsl detach --busid $busid
	echo "serial device detached"
	exit
}
