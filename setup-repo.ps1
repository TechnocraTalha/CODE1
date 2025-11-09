# PowerShell script to help set up Git repository
# Note: This requires Git to be installed and in PATH
# If Git is not available, use GitHub Desktop instead

Write-Host "Checking for Git..." -ForegroundColor Yellow

# Check if Git is available
try {
    $gitVersion = git --version 2>&1
    Write-Host "Git found: $gitVersion" -ForegroundColor Green
    
    Write-Host "`nInitializing Git repository..." -ForegroundColor Yellow
    git init
    
    Write-Host "Adding all files..." -ForegroundColor Yellow
    git add .
    
    Write-Host "Creating initial commit..." -ForegroundColor Yellow
    git commit -m "Initial commit - Varnan website"
    
    Write-Host "`n✅ Repository initialized successfully!" -ForegroundColor Green
    Write-Host "`nNext steps:" -ForegroundColor Cyan
    Write-Host "1. Open GitHub Desktop" -ForegroundColor White
    Write-Host "2. Click 'File' -> 'Add Local Repository'" -ForegroundColor White
    Write-Host "3. Select this folder: $PWD" -ForegroundColor White
    Write-Host "4. Connect it to your GitHub repository" -ForegroundColor White
    
} catch {
    Write-Host "`n❌ Git is not installed or not in PATH" -ForegroundColor Red
    Write-Host "`nPlease use GitHub Desktop instead:" -ForegroundColor Yellow
    Write-Host "1. Open GitHub Desktop" -ForegroundColor White
    Write-Host "2. Click 'File' -> 'New Repository'" -ForegroundColor White
    Write-Host "3. Name: varnan-website" -ForegroundColor White
    Write-Host "4. Local Path: $PWD" -ForegroundColor White
    Write-Host "5. Git Ignore: Node" -ForegroundColor White
    Write-Host "6. Click 'Create Repository'" -ForegroundColor White
}

