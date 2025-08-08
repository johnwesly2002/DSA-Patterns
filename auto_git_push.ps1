# PowerShell script to auto-commit and push changes in DSA-Patterns
while ($true) {
    Set-Location "C:\Users\JOHN.U\OneDrive\Desktop\DSA Patterns\DSA-Patterns"
    git add .
    $status = git status --porcelain
    if ($status) {
        git commit -m "Auto-commit: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
        git pull --rebase
        git push
    }
    Start-Sleep -Seconds 60 # Check every 60 seconds
}
