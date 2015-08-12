﻿Function Rename-Computer( $NewName,$AutoRestart=$false )
{
    $computer=Get-WMIObject  Win32_ComputerSystem
    $computer.Rename( $NewName ) | out-null
    if($AutoRestart) { Restart-Computer -Force }
}
