# Automated Deployment Script for GitHub Pages

Write-Host "="*50 -ForegroundColor Cyan
Write-Host "GitHub Pages Deployment" -ForegroundColor Green
Write-Host "="*50 -ForegroundColor Cyan
Write-Host ""

# Get username
$Username = Read-Host "Enter your GitHub username"

if (-not $Username) {
    Write-Host "Error: GitHub username is required!" -ForegroundColor Red
    exit 1
}

$RepoName = "tourism-website"
$RepoUrl = "https://github.com/$Username/$RepoName.git"

Write-Host ""
Write-Host "Configuration:" -ForegroundColor Yellow
Write-Host "  Username: $Username"
Write-Host "  Repository: $RepoName"
Write-Host "  URL: $RepoUrl"
Write-Host ""

Write-Host "IMPORTANT - Next Steps:" -ForegroundColor Yellow
Write-Host "1. Go to github.com/new"
Write-Host "2. Name it: $RepoName"
Write-Host "3. Make it PUBLIC"
Write-Host "4. Click Create repository"
Write-Host "5. Press ENTER to continue"
Write-Host ""

$dummy = Read-Host "Press ENTER when ready..."

Write-Host ""
Write-Host "Setting up remote repository..." -ForegroundColor Cyan

git remote remove origin 2>$null

git remote add origin $RepoUrl

if ($LASTEXITCODE -ne 0) {
    Write-Host "Error: Failed to add remote" -ForegroundColor Red
    exit 1
}

Write-Host "Remote added successfully" -ForegroundColor Green

Write-Host ""
Write-Host "Pushing to GitHub..." -ForegroundColor Cyan
Write-Host ""

git branch -M main
git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "="*50 -ForegroundColor Green
    Write-Host "SUCCESS! Code pushed to GitHub" -ForegroundColor Green
    Write-Host "="*50 -ForegroundColor Green
    Write-Host ""
    Write-Host "Next Steps to Enable GitHub Pages:" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "1. Go to: github.com/$Username/$RepoName"
    Write-Host "2. Click Settings"
    Write-Host "3. Click Pages in left sidebar"
    Write-Host "4. Select main branch"
    Write-Host "5. Click Save"
    Write-Host ""
    Write-Host "Wait 2-3 minutes for deployment..."
    Write-Host ""
    Write-Host "Your site will be at:"
    Write-Host "https://$Username.github.io/$RepoName"
    Write-Host ""
}
else {
    Write-Host ""
    Write-Host "Error during push. Please check:" -ForegroundColor Red
    Write-Host "  - GitHub username is correct"
    Write-Host "  - Repository exists on GitHub"
    Write-Host "  - You are authenticated with GitHub"
    Write-Host ""
    exit 1
}
