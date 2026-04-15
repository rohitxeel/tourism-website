# Automated Deployment Script for GitHub Pages
# This script sets up your GitHub repository and pushes the code

param(
    [string]$Username = "",
    [string]$RepoName = "tourism-website"
)

# Get username if not provided
if (-not $Username) {
    $Username = Read-Host "Enter your GitHub username"
}

if (-not $Username) {
    Write-Host "Error: GitHub username is required!" -ForegroundColor Red
    exit 1
}

$RepoUrl = "https://github.com/$Username/$RepoName.git"

Write-Host "================================================" -ForegroundColor Cyan
Write-Host "🚀 GitHub Pages Deployment Automation" -ForegroundColor Green
Write-Host "================================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "📋 Configuration:" -ForegroundColor Yellow
Write-Host "  GitHub Username: $Username"
Write-Host "  Repository Name: $RepoName"
Write-Host "  Repository URL: $RepoUrl"
Write-Host ""

Write-Host "⚠️  IMPORTANT - Next Steps:" -ForegroundColor Yellow
Write-Host "1. Go to github.com/new to create a new repository"
Write-Host "2. Name it: $RepoName"
Write-Host "3. Make it PUBLIC"
Write-Host "4. Click 'Create repository'"
Write-Host "5. Return and press ENTER to continue this script"
Write-Host ""

$readyKey = Read-Host "Press ENTER when you have created the repository..."

Write-Host ""
Write-Host "🔄 Setting up remote repository..." -ForegroundColor Cyan

# Remove existing remote if it exists
try {
    git remote remove origin 2>&1 | out-null
}
catch {
}

# Add new remote
git remote add origin $RepoUrl
if ($LASTEXITCODE -ne 0) {
    Write-Host "Error: Failed to add remote" -ForegroundColor Red
    exit 1
}

Write-Host "✅ Remote added successfully" -ForegroundColor Green

Write-Host ""
Write-Host "📤 Pushing to GitHub..." -ForegroundColor Cyan
Write-Host "(This will open a login page in your browser)" -ForegroundColor Yellow
Write-Host ""

# Change branch to main if needed
git branch -M main

# Push to GitHub
git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "================================================" -ForegroundColor Green
    Write-Host "✅ PUSHED SUCCESSFULLY!" -ForegroundColor Green
    Write-Host "================================================" -ForegroundColor Green
    Write-Host ""
    Write-Host "🎉 Next Steps to Enable GitHub Pages:" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "1. Go to: github.com/$Username/$RepoName"
    Write-Host "2. Click Settings (⚙️ icon)"
    Write-Host "3. Click 'Pages' in left sidebar"
    Write-Host "4. Under 'Source', select 'main' branch"
    Write-Host "5. Select '/ (root)' folder"
    Write-Host "6. Click Save"
    Write-Host ""
    Write-Host "⏳ Wait 2-3 minutes for deployment..."
    Write-Host ""
    Write-Host "🌐 Your site will be at:"
    Write-Host "   https://$Username.github.io/$RepoName"
    Write-Host ""
}
else {
    Write-Host ""
    Write-Host "❌ Error during push. Please check:" -ForegroundColor Red
    Write-Host "  - GitHub username is correct"
    Write-Host "  - Repository exists on GitHub"
    Write-Host "  - You are authenticated with GitHub"
    Write-Host ""
    exit 1
}
