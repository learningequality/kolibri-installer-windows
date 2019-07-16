'This script sets a link at the windows startup folder for Kolibri. The options are 0, 1 and 2.

Dim value : value = WScript.Arguments(0)
Set oShell = CreateObject("WScript.Shell")
sPath = oShell.SpecialFolders("Startup")

' Detect the version of Windows.
Set SystemSet = GetObject("winmgmts:").InstancesOf("Win32_OperatingSystem") 
for each System in SystemSet
    WinMajorVersion = Left(System.Version, 1)
next

'Option 0 is to create the startup link at the windows startup folder.
If value = 0 Then
    
    Set oShortcut = oShell.CreateShortcut(sPath & "\Kolibri.lnk")
    oShortcut.TargetPath = oShell.CurrentDirectory & "\Kolibri.exe"
    oShortcut.WorkingDirectory = oShell.CurrentDirectory
    oShortcut.Save
   
'Option 1 is to delete the startup link at the window startup folder.   
ElseIf value = 1 Then

    Set objFSO = CreateObject("Scripting.FileSystemObject")
    If objFSO.FileExists(sPath & "\Kolibri.lnk") Then
        objFSO.DeleteFile(sPath & "\Kolibri.lnk")
    End if
    
'Option 2 is to check if the link exists in the windows startup folder. If it exists, the script return 0. It will return 1 if it doesn't exist.
ElseIf value = 2 Then

    Set objFSO = CreateObject("Scripting.FileSystemObject")
    If objFSO.FileExists(sPath & "\Kolibri.lnk") Then
        WScript.Quit(0)
    End if
    WScript.Quit(1)
 
 'Option 3 is to check if the server is running by finding the files where the pid's are stored.
ElseIf value = 3 Then

    Set objFSO = CreateObject("Scripting.FileSystemObject")
    If objFSO.FileExists(oShell.CurrentDirectory & "\kolibri\kolibri\runcherrypyserver.pid") Then
        WScript.Quit(0)
    End if
    If objFSO.FileExists(oShell.CurrentDirectory & "\kolibri\kolibri\cronserver.pid") Then
        WScript.Quit(0)
    End if
    WScript.Quit(1)

'Option 4 will add the system start task.
ElseIf value = 4 Then  
    Set objShell = CreateObject("Shell.Application")
    If WinMajorVersion >= 6 Then
        ' Windows Vista or greater
        runas = "runas"
    Else
        ' Windows XP or lower
        runas = ""
    End If
    objShell.ShellExecute "cmd.exe", "/c """ & oShell.CurrentDirectory & "\kolibri\scripts\add_systemstart_task.bat""", "", runas, 1

'Option 5 will remove the system start task.    
ElseIf value = 5 Then
    Set objShell = CreateObject("Shell.Application")
    If WinMajorVersion >= 6 Then
        ' Windows Vista or greater
        runas = "runas"
    Else
        ' Windows XP or lower
        runas = ""
    End If
    objShell.ShellExecute "cmd.exe", "/c """ & oShell.CurrentDirectory & "\kolibri\scripts\remove_systemstart_task.bat""", "", runas, 1
    
End If

WScript.Quit(2)





'' SIG '' Begin signature block
'' SIG '' MIIR9AYJKoZIhvcNAQcCoIIR5TCCEeECAQExCzAJBgUr
'' SIG '' DgMCGgUAMGcGCisGAQQBgjcCAQSgWTBXMDIGCisGAQQB
'' SIG '' gjcCAR4wJAIBAQQQTvApFpkntU2P5azhDxfrqwIBAAIB
'' SIG '' AAIBAAIBAAIBADAhMAkGBSsOAwIaBQAEFDYBLRVQCXdo
'' SIG '' JJ+JZZ6iyHrIJYH6oIIPMzCCBNAwggQ5oAMCAQICECUM
'' SIG '' 6OAwYS6fK4n3BU18+P0wDQYJKoZIhvcNAQEFBQAwXzEL
'' SIG '' MAkGA1UEBhMCVVMxFzAVBgNVBAoTDlZlcmlTaWduLCBJ
'' SIG '' bmMuMTcwNQYDVQQLEy5DbGFzcyAzIFB1YmxpYyBQcmlt
'' SIG '' YXJ5IENlcnRpZmljYXRpb24gQXV0aG9yaXR5MB4XDTA2
'' SIG '' MTEwODAwMDAwMFoXDTIxMTEwNzIzNTk1OVowgcoxCzAJ
'' SIG '' BgNVBAYTAlVTMRcwFQYDVQQKEw5WZXJpU2lnbiwgSW5j
'' SIG '' LjEfMB0GA1UECxMWVmVyaVNpZ24gVHJ1c3QgTmV0d29y
'' SIG '' azE6MDgGA1UECxMxKGMpIDIwMDYgVmVyaVNpZ24sIElu
'' SIG '' Yy4gLSBGb3IgYXV0aG9yaXplZCB1c2Ugb25seTFFMEMG
'' SIG '' A1UEAxM8VmVyaVNpZ24gQ2xhc3MgMyBQdWJsaWMgUHJp
'' SIG '' bWFyeSBDZXJ0aWZpY2F0aW9uIEF1dGhvcml0eSAtIEc1
'' SIG '' MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA
'' SIG '' ryQICCl6NZ5gDKrnSztO3Hy8PEUcuyvg/ikC+VcIo2SF
'' SIG '' FSf18a3IMYldIugqqqZCs4/4uVW3sbdLs/6PfgdX7O9D
'' SIG '' 22ZiFWHPYA2k2N744MNiCD1UE+tJyllUhSblK48bn+v1
'' SIG '' oZHCM0nYQ2NqUkvSj+hwUU3RiWl7x3D2s9wSdNt7XUtW
'' SIG '' 05a/FXehsPSiJfKvHJJnGOX0BgTvkLnkAOTdOrUZ/wK6
'' SIG '' 9Dzu4IvrN4vs9Nes8vbwPa/ddZEzGR0cQMt0JBkhk9kU
'' SIG '' /qwqUseP1QRJ5I1jR4g8aYPL/ke9K35PxZWuDp3U0UPA
'' SIG '' Z3PjFAh+5T+fc7gzCs9dPzSHloruU+glFQIDAQABo4IB
'' SIG '' mzCCAZcwDwYDVR0TAQH/BAUwAwEB/zAxBgNVHR8EKjAo
'' SIG '' MCagJKAihiBodHRwOi8vY3JsLnZlcmlzaWduLmNvbS9w
'' SIG '' Y2EzLmNybDAOBgNVHQ8BAf8EBAMCAQYwPQYDVR0gBDYw
'' SIG '' NDAyBgRVHSAAMCowKAYIKwYBBQUHAgEWHGh0dHBzOi8v
'' SIG '' d3d3LnZlcmlzaWduLmNvbS9jcHMwHQYDVR0OBBYEFH/T
'' SIG '' ZafC3ey78DAJ80M5+gKvMzEzMG0GCCsGAQUFBwEMBGEw
'' SIG '' X6FdoFswWTBXMFUWCWltYWdlL2dpZjAhMB8wBwYFKw4D
'' SIG '' AhoEFI/l0xqGrI2Oa8PPgGrUSBgsexkuMCUWI2h0dHA6
'' SIG '' Ly9sb2dvLnZlcmlzaWduLmNvbS92c2xvZ28uZ2lmMDQG
'' SIG '' CCsGAQUFBwEBBCgwJjAkBggrBgEFBQcwAYYYaHR0cDov
'' SIG '' L29jc3AudmVyaXNpZ24uY29tMD4GA1UdJQQ3MDUGCCsG
'' SIG '' AQUFBwMBBggrBgEFBQcDAgYIKwYBBQUHAwMGCWCGSAGG
'' SIG '' +EIEAQYKYIZIAYb4RQEIATANBgkqhkiG9w0BAQUFAAOB
'' SIG '' gQATAt346IYA8lr4+CAMWYhiB87O9075u1mhmOXhON1O
'' SIG '' vGYY063rGPINyW0+SpQgwzy6vWVUxq9EsxCtLGs+q9cH
'' SIG '' triBY8X5Xi7lKmfOzTMMKteJVgMjH7O+6DoIWbTsRTX3
'' SIG '' ilv/Zs9Qr8ZtV40ZeLe5otFX6h+aS6+6yY4Sfsa9/zCC
'' SIG '' BP4wggPmoAMCAQICEGXeQazR3/7/U4PUAPwlehIwDQYJ
'' SIG '' KoZIhvcNAQELBQAwfzELMAkGA1UEBhMCVVMxHTAbBgNV
'' SIG '' BAoTFFN5bWFudGVjIENvcnBvcmF0aW9uMR8wHQYDVQQL
'' SIG '' ExZTeW1hbnRlYyBUcnVzdCBOZXR3b3JrMTAwLgYDVQQD
'' SIG '' EydTeW1hbnRlYyBDbGFzcyAzIFNIQTI1NiBDb2RlIFNp
'' SIG '' Z25pbmcgQ0EwHhcNMTYwMzA3MDAwMDAwWhcNMTkwNTA2
'' SIG '' MjM1OTU5WjCBlzELMAkGA1UEBhMCVVMxEzARBgNVBAgT
'' SIG '' CkNhbGlmb3JuaWExETAPBgNVBAcTCExhIEpvbGxhMS8w
'' SIG '' LQYDVQQKFCZGb3VuZGF0aW9uIGZvciBMZWFybmluZyBF
'' SIG '' cXVhbGl0eSwgSW5jLjEvMC0GA1UEAxQmRm91bmRhdGlv
'' SIG '' biBmb3IgTGVhcm5pbmcgRXF1YWxpdHksIEluYy4wggEg
'' SIG '' MAsGCSqGSIb3DQEBAQOCAQ8AMIIBCgKCAQEAtg5TZULQ
'' SIG '' h0QMzvpkx676QATLcxyFcK4DRXDBvd/RCThHJZV847D0
'' SIG '' K3ZdKUcEF/hFj++a+At/K0lnlWnvfchNYwM1ZoMhv8yi
'' SIG '' EnzT8Ukn87kV6G3rk7t//GWtNprXXZBSzwbIBR81I3Qm
'' SIG '' Kz7GZP2qzB2SdtvGDCG40zpqAHiQa5dOBFdHSqhbSJIH
'' SIG '' bYqwoS3G8/nyrSyyrDg7xGDCtlqhc4cobeZLLK+uZn2z
'' SIG '' fkU0+gz8psji8ZTGNp6/bWwC9Huz1yBCD6YkLzi7MlAJ
'' SIG '' vEQxeaVXCXQY1phdkwTmCvtK93J8Itkq9oiSFRjvmRxI
'' SIG '' CBkhvEQSafrA69nSIs4YZpCTkwIDAQABo4IBXTCCAVkw
'' SIG '' CQYDVR0TBAIwADAOBgNVHQ8BAf8EBAMCB4AwKwYDVR0f
'' SIG '' BCQwIjAgoB6gHIYaaHR0cDovL3N2LnN5bWNiLmNvbS9z
'' SIG '' di5jcmwwYQYDVR0gBFowWDBWBgZngQwBBAEwTDAjBggr
'' SIG '' BgEFBQcCARYXaHR0cHM6Ly9kLnN5bWNiLmNvbS9jcHMw
'' SIG '' JQYIKwYBBQUHAgIwGQwXaHR0cHM6Ly9kLnN5bWNiLmNv
'' SIG '' bS9ycGEwEwYDVR0lBAwwCgYIKwYBBQUHAwMwVwYIKwYB
'' SIG '' BQUHAQEESzBJMB8GCCsGAQUFBzABhhNodHRwOi8vc3Yu
'' SIG '' c3ltY2QuY29tMCYGCCsGAQUFBzAChhpodHRwOi8vc3Yu
'' SIG '' c3ltY2IuY29tL3N2LmNydDAfBgNVHSMEGDAWgBSWO1Pw
'' SIG '' eTOXr32D7y4rzMq3hh5yZjAdBgNVHQ4EFgQUT8linCKA
'' SIG '' YjnNzLVl38z9ZFjp/ZswDQYJKoZIhvcNAQELBQADggEB
'' SIG '' AB3DYEnpktdrd6Mo+9BWUgrBRDL+F3yGi8k41v3nPWz/
'' SIG '' U4BeMI1/nv+FF0qgw0KrucjbIptOSSFl2OmBEhktot5s
'' SIG '' rT5nfKrV7CjdgedPkBeexPLI8o+nrDaUybfMl+e/Zev4
'' SIG '' vNNpZFhoTPZTY7+rynxc4iHzAnk13b9ecvsiUBp+OkyN
'' SIG '' f4bIncsLaA74rJh2n1Qi5Yvz2sDKSdxoPyTBwWRQYElp
'' SIG '' xRo8e4JIPrRbMvDTkE43QM7mLf+f7AMv2dAIUDXB05+3
'' SIG '' GubQsBEsWx8d2qj5OR6KInFs98rWPFFCQMmHzumDSBjC
'' SIG '' yJCBuro+4Ic9P+1zH6TPFCtOlzUaPc2gHZ4wggVZMIIE
'' SIG '' QaADAgECAhA9eNf5dklgsmF99PAeyoYqMA0GCSqGSIb3
'' SIG '' DQEBCwUAMIHKMQswCQYDVQQGEwJVUzEXMBUGA1UEChMO
'' SIG '' VmVyaVNpZ24sIEluYy4xHzAdBgNVBAsTFlZlcmlTaWdu
'' SIG '' IFRydXN0IE5ldHdvcmsxOjA4BgNVBAsTMShjKSAyMDA2
'' SIG '' IFZlcmlTaWduLCBJbmMuIC0gRm9yIGF1dGhvcml6ZWQg
'' SIG '' dXNlIG9ubHkxRTBDBgNVBAMTPFZlcmlTaWduIENsYXNz
'' SIG '' IDMgUHVibGljIFByaW1hcnkgQ2VydGlmaWNhdGlvbiBB
'' SIG '' dXRob3JpdHkgLSBHNTAeFw0xMzEyMTAwMDAwMDBaFw0y
'' SIG '' MzEyMDkyMzU5NTlaMH8xCzAJBgNVBAYTAlVTMR0wGwYD
'' SIG '' VQQKExRTeW1hbnRlYyBDb3Jwb3JhdGlvbjEfMB0GA1UE
'' SIG '' CxMWU3ltYW50ZWMgVHJ1c3QgTmV0d29yazEwMC4GA1UE
'' SIG '' AxMnU3ltYW50ZWMgQ2xhc3MgMyBTSEEyNTYgQ29kZSBT
'' SIG '' aWduaW5nIENBMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8A
'' SIG '' MIIBCgKCAQEAl4MeABavLLHSCMTXaJNRYB5x9uJHtNtY
'' SIG '' TSNiarS/WhtR96MNGHdou9g2qy8hUNqe8+dfJ04LwpfI
'' SIG '' CXCTqdpcDU6kDZGgtOwUzpFyVC7Oo9tE6VIbP0E8ykrk
'' SIG '' qsDoOatTzCHQzM9/m+bCzFhqghXuPTbPHMWXBySO8Xu+
'' SIG '' MS09bty1mUKfS2GVXxxw7hd924vlYYl4x2gbrxF4Gpiu
'' SIG '' xFVHU9mzMtahDkZAxZeSitFTp5lbhTVX0+qTYmEgCscw
'' SIG '' dyQRTWKDtrp7aIIx7mXK3/nVjbI13Iwrb2pyXGCEnPIM
'' SIG '' lF7AVlIASMzT+KV93i/XE+Q4qITVRrgThsIbnepaON2b
'' SIG '' 2wIDAQABo4IBgzCCAX8wLwYIKwYBBQUHAQEEIzAhMB8G
'' SIG '' CCsGAQUFBzABhhNodHRwOi8vczIuc3ltY2IuY29tMBIG
'' SIG '' A1UdEwEB/wQIMAYBAf8CAQAwbAYDVR0gBGUwYzBhBgtg
'' SIG '' hkgBhvhFAQcXAzBSMCYGCCsGAQUFBwIBFhpodHRwOi8v
'' SIG '' d3d3LnN5bWF1dGguY29tL2NwczAoBggrBgEFBQcCAjAc
'' SIG '' GhpodHRwOi8vd3d3LnN5bWF1dGguY29tL3JwYTAwBgNV
'' SIG '' HR8EKTAnMCWgI6Ahhh9odHRwOi8vczEuc3ltY2IuY29t
'' SIG '' L3BjYTMtZzUuY3JsMB0GA1UdJQQWMBQGCCsGAQUFBwMC
'' SIG '' BggrBgEFBQcDAzAOBgNVHQ8BAf8EBAMCAQYwKQYDVR0R
'' SIG '' BCIwIKQeMBwxGjAYBgNVBAMTEVN5bWFudGVjUEtJLTEt
'' SIG '' NTY3MB0GA1UdDgQWBBSWO1PweTOXr32D7y4rzMq3hh5y
'' SIG '' ZjAfBgNVHSMEGDAWgBR/02Wnwt3su/AwCfNDOfoCrzMx
'' SIG '' MzANBgkqhkiG9w0BAQsFAAOCAQEAE4UaHmmpN/egvaSv
'' SIG '' fh1hU/6djF4MpnUeeBcj3f3sGgNVOftxlcdlWqeOMNJE
'' SIG '' WmHbcG/aIQXCLnO6SfHRk/5dyc1eA+CJnj90Htf3OIup
'' SIG '' 1s+7NS8zWKiSVtHITTuC5nmEFvwosLFH8x2iPu6H2aZ/
'' SIG '' pFalP62ELinefLyoqqM9BAHqupOiDlAiKRdMh+Q6EV/W
'' SIG '' pCWJmwVrL7TJAUwnewusGQUioGAVP9rJ+01Mj/tyZ3f9
'' SIG '' J5THujUOiEn+jf0or0oSvQ2zlwXeRAwV+jYrA9zBUAHx
'' SIG '' oRFdFOXivSdLVL4rhF4PpsN0BQrvl8OJIrEfd/O9zUPU
'' SIG '' 8UypP7WLhK9k8tAUITGCAi0wggIpAgEBMIGTMH8xCzAJ
'' SIG '' BgNVBAYTAlVTMR0wGwYDVQQKExRTeW1hbnRlYyBDb3Jw
'' SIG '' b3JhdGlvbjEfMB0GA1UECxMWU3ltYW50ZWMgVHJ1c3Qg
'' SIG '' TmV0d29yazEwMC4GA1UEAxMnU3ltYW50ZWMgQ2xhc3Mg
'' SIG '' MyBTSEEyNTYgQ29kZSBTaWduaW5nIENBAhBl3kGs0d/+
'' SIG '' /1OD1AD8JXoSMAkGBSsOAwIaBQCgcDAQBgorBgEEAYI3
'' SIG '' AgEMMQIwADAZBgkqhkiG9w0BCQMxDAYKKwYBBAGCNwIB
'' SIG '' BDAcBgorBgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAj
'' SIG '' BgkqhkiG9w0BCQQxFgQU/LBXVatYfBTlFC04dZTVMmQN
'' SIG '' bWIwDQYJKoZIhvcNAQEBBQAEggEApiNYqGj51mgpCaI7
'' SIG '' blg7ITfu/dP62DMGicSFLSqeYxJTdcnKuMJC8beyqpg8
'' SIG '' ssDlfcyBZf0RRLbhhoHR9GJWSwBZk5J6Z6ddMJJSzrx2
'' SIG '' uRtUEd2QBGEB1Dm3o6cuATjMgRNMGdXM4BbaFGPpnCCi
'' SIG '' mkuYDuOIF7IAPLgL88vmPpUTNLudeFD/GKKgjqlM/YO3
'' SIG '' /sclzwke5KYXrJJ0GI7K74OOeU9PRDZzRnJVw0FlwWVt
'' SIG '' SCwyo7KmyusBF+9L/wHvjxQJoCacVNigb1gy0f1SOoW6
'' SIG '' gVK3eAoyBEOSaZYdzmYvs3SNOuF1r6Sga6SSVdXaEYV1
'' SIG '' ihkqu/NSUDOCzfIlGw==
'' SIG '' End signature block
