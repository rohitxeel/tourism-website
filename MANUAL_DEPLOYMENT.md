# Manual GitHub Deployment (If Script Fails)

If the automated deployment script doesn't work for you, follow these manual steps:

## Step 1: Create Repository on GitHub

Go to https://github.com/new and:
- Name: `tourism-website`
- Make it PUBLIC
- Click Create repository

## Step 2: Run These Commands

Replace `rohitxeel` with your actual GitHub username:

```powershell
cd c:\Tourism\website
git remote add origin https://github.com/rohitxeel/tourism-website.git
git branch -M main
git push -u origin main
```

You may be prompted to sign in with GitHub - use your credentials or personal access token.

## Step 3: Enable GitHub Pages

1. Go to `github.com/rohitxeel/tourism-website` (use your username)
2. Click **Settings** ⚙️
3. Click **Pages** in the left sidebar
4. Under "Source", select **main** branch
5. Leave folder as **/ (root)**
6. Click **Save**

Wait 2-3 minutes for the site to build and deploy.

## Step 4: Access Your Site

Your site will be live at:
```
https://rohitxeel.github.io/tourism-website
```

(Replace `rohitxeel` with your username)

---

## Troubleshooting

### "Repository not found" error
- Make sure repository exists at github.com/yourusername/tourism-website
- Check that you created it as PUBLIC

### "Permission denied" when pushing
- You may need to authenticate with GitHub
- Use a personal access token instead of password
- Go to github.com/settings/tokens to create one

### Can't find Settings or Pages
- Make sure you're in the correct repository
- URL should be: github.com/YOUR_USERNAME/tourism-website
- Click on your repository name in the top left to confirm

### Site not showing after 5 minutes
- Refresh the page (Ctrl+F5 for hard refresh)
- Check that Pages shows "Your site is live at..."
- Try accessing the direct GitHub Pages URL

---

## Alternative: Use Desktop Git Client

If command line is frustrating:

1. Download GitHub Desktop from desktop.github.com
2. Add the local folder (c:\Tourism\website)
3. Publish repository to GitHub
4. Enable Pages in repository Settings

This provides a visual interface instead of typing commands.
