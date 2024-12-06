# This PowerShell script will disable all notifications to the taskbar on Windows.

# Disable Notification Center
Set-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\PushNotifications' -Name 'ToastEnabled' -Type DWord -Value 0

# Disable Notifications from Apps and Other Senders
New-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings' -Name 'NOC_GLOBAL_SETTING_TOASTS_ENABLED' -PropertyType DWord -Value 0 -Force

# Disable Tips, Tricks, and Suggestions Notifications
Set-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'SubscribedContent-338387Enabled' -Type DWord -Value 0

# Disable Get notifications from apps and other senders
Set-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings' -Name 'NOC_GLOBAL_SETTING_TOASTS_ENABLED' -Type DWord -Value 0

# Disable Focus Assist notifications (Quiet Hours)
Set-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer' -Name 'DisplayToastAtUnlock' -Type DWord -Value 0

Write-Output "All taskbar notifications have been disabled."