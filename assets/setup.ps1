# PowerShell Setup Script for Neovim Configuration (Windows)

# Color definitions
$Green = "Green"
$Yellow = "Yellow"
$Red = "Red"

# Check if nvim config directory exists and backup if needed
$nvimPath = "$env:LOCALAPPDATA\nvim"
if (Test-Path $nvimPath) {
    Write-Host "⚠️  Existing nvim configuration found. Renaming it to nvim_backup..." -ForegroundColor $Yellow
    $backupPath = "$env:LOCALAPPDATA\nvim_backup"
    if (Test-Path $backupPath) {
        Remove-Item $backupPath -Recurse -Force
    }
    Rename-Item $nvimPath $backupPath
    Write-Host "✅ Renamed to nvim_backup." -ForegroundColor $Green
}

# Create nvim directory
New-Item -ItemType Directory -Path $nvimPath -Force | Out-Null

Write-Host "🔄 Cloning the repository..." -ForegroundColor $Yellow

# Create temporary directory
$tempDir = New-TemporaryFile | ForEach-Object { Remove-Item $_; New-Item -ItemType Directory -Path $_ }

try {
    # Clone repository
    git clone --quiet https://github.com/hsanirudh/Neovim_lua.git $tempDir.FullName
    
    Write-Host "🚚 Moving config files to $nvimPath..." -ForegroundColor $Yellow
    
    # Move files to nvim config directory
    Move-Item "$($tempDir.FullName)\init.lua" $nvimPath -Force
    Move-Item "$($tempDir.FullName)\stylua.toml" $nvimPath -Force
    Move-Item "$($tempDir.FullName)\lua" $nvimPath -Force
    
    Write-Host "🎉 Neovim configuration has been set up!" -ForegroundColor $Green
    Write-Host "Please install ripgrep: winget install BurntSushi.ripgrep.MSVC" -ForegroundColor $Yellow
    Write-Host "🤓 Run Nvim now!!" -ForegroundColor $Red
    
} catch {
    Write-Host "❌ Error occurred during setup: $($_.Exception.Message)" -ForegroundColor $Red
    exit 1
} finally {
    # Clean up temporary directory
    if (Test-Path $tempDir) {
        Remove-Item $tempDir -Recurse -Force
    }
}

Write-Host ""
Write-Host "📝 Additional Setup Notes:" -ForegroundColor $Yellow
Write-Host "1. Install Neovim 0.9+ from: https://github.com/neovim/neovim/releases" -ForegroundColor $Yellow
Write-Host "2. Install Git if not already installed" -ForegroundColor $Yellow
Write-Host "3. Install Node.js 16+ for LSP servers: https://nodejs.org/" -ForegroundColor $Yellow
Write-Host "4. Install Python 3.8+ if needed: https://python.org/" -ForegroundColor $Yellow
Write-Host ""
Write-Host "🚀 Happy coding!" -ForegroundColor $Green 