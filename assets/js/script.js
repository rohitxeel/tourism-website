// ===========================
// Accordion Functionality
// ===========================

document.addEventListener('DOMContentLoaded', function() {
    // Initialize accordions
    const accordionHeaders = document.querySelectorAll('.accordion-header');

    accordionHeaders.forEach(header => {
        header.addEventListener('click', function() {
            const accordion = this.closest('.accordion');
            const content = accordion.querySelector('.accordion-content');
            const isActive = this.classList.contains('active');

            // Close all other accordions
            document.querySelectorAll('.accordion').forEach(acc => {
                const header = acc.querySelector('.accordion-header');
                const content = acc.querySelector('.accordion-content');
                if (acc !== accordion) {
                    header.classList.remove('active');
                    content.classList.remove('active');
                }
            });

            // Toggle current accordion
            this.classList.toggle('active');
            content.classList.toggle('active');
        });
    });

    // Mobile Menu Toggle
    const menuToggle = document.querySelector('.mobile-menu-toggle');
    const nav = document.querySelector('nav');

    if (menuToggle) {
        menuToggle.addEventListener('click', function() {
            nav.classList.toggle('active');
        });
    }

    // Smooth scrolling for anchor links
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', function(e) {
            e.preventDefault();
            const target = document.querySelector(this.getAttribute('href'));
            if (target) {
                target.scrollIntoView({
                    behavior: 'smooth',
                    block: 'start'
                });
            }
        });
    });

    // Add scroll-to-top button
    const scrollTopBtn = document.getElementById('scrollTopBtn');
    if (scrollTopBtn) {
        window.addEventListener('scroll', function() {
            if (window.pageYOffset > 300) {
                scrollTopBtn.style.display = 'block';
            } else {
                scrollTopBtn.style.display = 'none';
            }
        });

        scrollTopBtn.addEventListener('click', function() {
            window.scrollTo({
                top: 0,
                behavior: 'smooth'
            });
        });
    }
});

// ===========================
// Table of Contents Generator
// ===========================

function generateTableOfContents() {
    const toc = document.getElementById('toc');
    if (!toc) return;

    const headings = document.querySelectorAll('h2, h3, h4');
    const tocList = document.createElement('ul');

    headings.forEach((heading, index) => {
        if (!heading.id) {
            heading.id = `heading-${index}`;
        }

        const level = parseInt(heading.tagName[1]);
        const li = document.createElement('li');
        const link = document.createElement('a');

        link.href = `#${heading.id}`;
        link.textContent = heading.textContent;
        li.appendChild(link);

        if (level === 2) {
            li.style.marginLeft = '0';
            li.style.fontWeight = '600';
        } else if (level === 3) {
            li.style.marginLeft = '20px';
            li.style.fontWeight = '500';
        } else {
            li.style.marginLeft = '40px';
        }

        tocList.appendChild(li);
    });

    toc.appendChild(tocList);
}

// Call on page load
if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', generateTableOfContents);
} else {
    generateTableOfContents();
}

// ===========================
// Highlight Search Text
// ===========================

function highlightSearchTerms(searchTerms) {
    const body = document.body;
    const regex = new RegExp(`(${searchTerms.join('|')})`, 'gi');

    function highlightNode(node) {
        if (node.nodeType === 3) {
            const span = document.createElement('span');
            span.innerHTML = node.nodeValue.replace(regex, '<mark>$1</mark>');
            node.parentNode.replaceChild(span, node);
        } else if (node.nodeType === 1 && node.nodeName !== 'SCRIPT') {
            for (let i = 0; i < node.childNodes.length; i++) {
                highlightNode(node.childNodes[i]);
            }
        }
    }
}

// ===========================
// Print Functionality
// ===========================

function printPage() {
    window.print();
}

// ===========================
// Quick Navigation
// ===========================

function navigateToUnit(unitNumber) {
    window.location.href = `unit${unitNumber}.html`;
}

// ===========================
// Search Functionality
// ===========================

function searchContent(query) {
    const allContent = document.body.innerText;
    const regex = new RegExp(query, 'gi');
    const matches = allContent.match(regex);

    if (matches && matches.length > 0) {
        return {
            found: true,
            count: matches.length
        };
    }
    return {
        found: false,
        count: 0
    };
}

// ===========================
// Expand/Collapse All Accordions
// ===========================

function expandAllAccordions() {
    document.querySelectorAll('.accordion').forEach(accordion => {
        const header = accordion.querySelector('.accordion-header');
        const content = accordion.querySelector('.accordion-content');

        header.classList.add('active');
        content.classList.add('active');
    });
}

function collapseAllAccordions() {
    document.querySelectorAll('.accordion').forEach(accordion => {
        const header = accordion.querySelector('.accordion-header');
        const content = accordion.querySelector('.accordion-content');

        header.classList.remove('active');
        content.classList.remove('active');
    });
}