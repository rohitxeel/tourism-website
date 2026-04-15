# 🚀 GitHub Pages Deployment Guide

## Step-by-Step Instructions to Deploy to GitHub Pages

### 1️⃣ Create a GitHub Account (if you don't have one)
- Go to **github.com**
- Click "Sign up"
- Complete registration and verify email

### 2️⃣ Create a New Repository
1. Go to **github.com/new** or click the **+** icon → **New repository**
2. Name your repository: **`tourism-website`** (or any name)
3. Add description: "HMT712 - Management for Tourism and Hospitality Educational Portal"
4. Choose **Public** (required for free GitHub Pages)
5. Click **Create repository**

### 3️⃣ Push Your Local Repository to GitHub
Copy and paste these commands in your terminal:

```bash
cd c:\Tourism\website

git remote add origin https://github.com/YOUR_USERNAME/tourism-website.git
git branch -M main
git push -u origin main
```

**Replace `YOUR_USERNAME`** with your actual GitHub username!

### 4️⃣ Enable GitHub Pages
1. Go to your repository: `github.com/YOUR_USERNAME/tourism-website`
2. Click **Settings** (⚙️ icon)
3. Look for **"Pages"** in the left sidebar
4. Under "Source", select **`main`** branch
5. Select **`/ (root)`** folder
6. Click **Save**

### 5️⃣ Your Site is Live! 🎉
After ~2-3 minutes, your website will be available at:

```
https://YOUR_USERNAME.github.io/tourism-website
```

---

## 📱 What's Deployed
✅ **index.html** - Homepage with course overview  
✅ **unit1.html** through **unit6.html** - All 6 educational units  
✅ **assets/css/style.css** - Complete responsive design  
✅ **assets/js/script.js** - Interactive functionality  

---

## 🔄 Making Updates
After you make changes locally:

```bash
git add .
git commit -m "Description of changes"
git push
```

Your site updates automatically within seconds!

---

## 💡 Custom Domain (Optional)
To use your own domain (e.g., hmt712.com):
1. Purchase domain from GoDaddy, Namecheap, etc.
2. Go to your repo Settings → Pages
3. Add custom domain under "Custom domain"
4. Point domain DNS to GitHub

---

## ❓ Troubleshooting

**Site not appearing after enabling Pages?**
- Wait 3-5 minutes for GitHub to build
- Check that repository is **Public**
- Verify **main** branch is selected in Pages settings

**Getting 404 error?**
- URLs are case-sensitive
- Verify all file paths in HTML are correct
- Check that index.html exists in root directory

**Need to check deployment status?**
- Go to repository → **Actions** tab
- Look for workflow "pages build and deployment"
- Check if latest build shows ✅ (success)

---

## 📧 Support
For GitHub Pages help: https://docs.github.com/en/pages

---

## 🎯 Share Your Site
Your deployed site URL: **https://YOUR_USERNAME.github.io/tourism-website**

Share it with:
- Students and educators
- Tourism industry professionals
- Colleagues and friends
- Social media (LinkedIn, Twitter, etc.)

---

**Happy Learning! 📚🏨**
