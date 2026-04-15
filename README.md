# HMT712 - Tourism & Hospitality Management Educational Portal

![Tourism Portal](https://img.shields.io/badge/Status-Live-brightgreen)
![License](https://img.shields.io/badge/License-MIT-blue)
![Version](https://img.shields.io/badge/Version-1.0-blueviolet)

## 📚 About This Course

**HMT712** is a comprehensive educational platform covering all aspects of Management for Tourism and Hospitality. The course is organized into 6 units with 50+ topics, designed for students, professionals, and tourism managers seeking to understand the industry deeply.

## 🎯 Course Objectives

By completing this course, you will:
- Understand fundamental management principles in tourism
- Analyze transportation systems and tourism ecosystem
- Evaluate accommodation operations and departmental management
- Apply HRM principles effectively in hospitality organizations
- Develop sustainable destination strategies
- Understand emerging technologies transforming the industry

## 📖 Course Structure

### Unit I: Introduction to Tourism & Hospitality Management
- Meaning and concept of management
- Functions of management (POSDC model)
- Relevance in tourism industry

### Unit II: Transportation Management
- Types of transportation (Air, Rail, Road, Water)
- Tourism planning and coordination
- Customer service excellence

### Unit III: Accommodation Management
- Hotel classifications and ratings
- Front office operations
- Housekeeping and F&B management

### Unit IV: Human Resource Management
- Recruitment and selection
- Training and development
- Performance management and compensation

### Unit V: Destination Management
- Destination concepts and planning
- Sustainable tourism practices
- Case study: Kyoto, Japan

### Unit VI: Current Trends
- Artificial Intelligence and automation
- Virtual & Augmented Reality
- Green hospitality and eco-tourism
- Post-pandemic trends

## ✨ Features

✅ **50+ Comprehensive Topics** - Every concept thoroughly explained  
✅ **100+ Key Definitions** - Color-coded learning boxes  
✅ **20+ Real-World Examples** - Case studies from industry leaders  
✅ **Interactive Accordions** - Easy navigation and content expansion  
✅ **Mobile Responsive** - Works perfectly on all devices  
✅ **Professional Design** - Modern gradients and clean typography  
✅ **Exam Preparation** - Key points highlighted for study  

## 🚀 Quick Start

### Local Testing
```bash
cd c:\Tourism\website
python -m http.server 8000
# Visit: http://localhost:8000
```

### Deploy to GitHub Pages
1. Create a GitHub account (github.com)
2. Run the automatic deployment script:
```bash
powershell -ExecutionPolicy Bypass -File .\deploy.ps1
```

Or manually:
```bash
git remote add origin https://github.com/YOUR_USERNAME/tourism-website.git
git branch -M main
git push -u origin main
```

Then enable GitHub Pages in repository Settings.

## 📱 Browser Compatibility

- ✅ Chrome (latest)
- ✅ Firefox (latest)
- ✅ Safari (latest)
- ✅ Edge (latest)
- ✅ Mobile browsers (iOS Safari, Chrome Mobile)

## 📊 Project Statistics

| Metric | Count |
|--------|-------|
| Total Pages | 7 |
| Educational Units | 6 |
| Topics & Subtopics | 50+ |
| Key Definitions | 100+ |
| Real-World Examples | 20+ |
| Case Studies | 2 |
| Interactive Accordions | 100+ |

## 💻 Technology Stack

- **HTML5** - Semantic markup
- **CSS3** - Responsive design with flexbox/grid
- **JavaScript (Vanilla)** - Interactive features
- **No dependencies** - Pure frontend, no frameworks

## 📝 File Structure

```
tourism-website/
├── index.html                 # Homepage
├── unit1.html - unit6.html   # Educational units
├── assets/
│   ├── css/
│   │   └── style.css         # Complete stylesheet
│   └── js/
│       └── script.js         # Interactive functionality
├── README.md                 # This file
├── .gitignore               # Git configuration
└── GITHUB_DEPLOYMENT_GUIDE.md # Deployment instructions
```

## 🔧 Customization

### Change Colors
Edit CSS variables in `assets/css/style.css`:
```css
:root {
    --primary: #2c3e50;
    --secondary: #3498db;
    --accent: #e74c3c;
    /* ... other colors ... */
}
```

### Add Content
Each unit follows the same structure:
```html
<div class="accordion">
    <div class="accordion-header">Topic Name</div>
    <div class="accordion-content">
        <div class="accordion-body">
            <!-- Content -->
        </div>
    </div>
</div>
```

## 📄 License

This project is open source and available under the MIT License.

## 👨‍💼 Contributing

Want to improve this educational portal?
1. Fork the repository
2. Create a feature branch
3. Make improvements
4. Submit a pull request

## 📧 Contact & Support

For questions, suggestions, or issues:
- Check existing documentation
- Review course content
- Submit an issue on GitHub

## 🌐 Live Demo

Visit the deployed portal: 
**https://YOUR_USERNAME.github.io/tourism-website**

---

## 🎓 Educational Use

This platform is designed for:
- Students preparing for HMT712 exams
- Tourism professionals seeking industry knowledge
- Educators creating hospitality curricula
- Industry practitioners updating their skills

---

**Last Updated:** April 2026  
**Version:** 1.0  
**Status:** Complete and Production-Ready ✅
