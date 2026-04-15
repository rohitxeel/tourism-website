#!/bin/bash
# Automated Deployment Script for GitHub Pages
# Usage: bash deploy.sh

echo "================================================"
echo "🚀 GitHub Pages Deployment Automation"
echo "================================================"
echo ""

read -p "Enter your GitHub username: " USERNAME

if [ -z "$USERNAME" ]; then
    echo "Error: GitHub username is required!"
    exit 1
fi

REPO_NAME="tourism-website"
REPO_URL="https://github.com/$USERNAME/$REPO_NAME.git"

echo ""
echo "📋 Configuration:"
echo "  GitHub Username: $USERNAME"
echo "  Repository Name: $REPO_NAME"
echo "  Repository URL: $REPO_URL"
echo ""

echo "⚠️  IMPORTANT - Next Steps:"
echo "1. Go to github.com/new to create a new repository"
echo "2. Name it: $REPO_NAME"
echo "3. Make it PUBLIC"
echo "4. Click 'Create repository'"
echo "5. Return and press ENTER to continue..."
echo ""

read -p "Press ENTER when you've created the repository..."

echo ""
echo "🔄 Setting up remote repository..."

# Remove existing remote if it exists
git remote remove origin 2>/dev/null

# Add new remote
git remote add origin $REPO_URL

if [ $? -ne 0 ]; then
    echo "Error: Failed to add remote"
    exit 1
fi

echo "✅ Remote added successfully"

echo ""
echo "📤 Pushing to GitHub..."
echo "(This will open a login page in your browser)"
echo ""

# Change branch to main if needed
git branch -M main

# Push to GitHub
git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "================================================"
    echo "✅ PUSHED SUCCESSFULLY!"
    echo "================================================"
    echo ""
    echo "🎉 Next Steps to Enable GitHub Pages:"
    echo ""
    echo "1. Go to: github.com/$USERNAME/$REPO_NAME"
    echo "2. Click Settings (⚙️ icon)"
    echo "3. Click 'Pages' in left sidebar"
    echo "4. Under 'Source', select 'main' branch"
    echo "5. Select '/ (root)' folder"
    echo "6. Click Save"
    echo ""
    echo "⏳ Wait 2-3 minutes for deployment..."
    echo ""
    echo "🌐 Your site will be at:"
    echo "   https://$USERNAME.github.io/$REPO_NAME"
    echo ""
else
    echo ""
    echo "❌ Error during push. Please check:"
    echo "  - GitHub username is correct"
    echo "  - Repository exists on GitHub"
    echo "  - You're authenticated with GitHub"
    echo ""
    exit 1
fi
