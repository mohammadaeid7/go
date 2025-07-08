// Performance-optimized JavaScript for OSDSM

// Performance monitoring
const performanceMonitor = {
  init() {
    this.observePageLoad();
    this.observeUserInteractions();
    this.setupLazyLoading();
  },

  observePageLoad() {
    window.addEventListener('load', () => {
      if ('performance' in window) {
        const perfData = performance.getEntriesByType('navigation')[0];
        const loadTime = perfData.loadEventEnd - perfData.loadEventStart;
        console.log(`Page load time: ${loadTime}ms`);
        
        // Send to analytics if available
        if (window.gtag) {
          gtag('event', 'timing_complete', {
            name: 'load',
            value: Math.round(loadTime)
          });
        }
      }
    });
  },

  observeUserInteractions() {
    // Track scroll depth
    let maxScroll = 0;
    window.addEventListener('scroll', () => {
      const scrollPercent = Math.round((window.scrollY / (document.body.scrollHeight - window.innerHeight)) * 100);
      if (scrollPercent > maxScroll) {
        maxScroll = scrollPercent;
        if (maxScroll % 25 === 0) { // Track at 25%, 50%, 75%, 100%
          console.log(`Scroll depth: ${maxScroll}%`);
        }
      }
    });
  },

  setupLazyLoading() {
    if ('IntersectionObserver' in window) {
      const imageObserver = new IntersectionObserver((entries, observer) => {
        entries.forEach(entry => {
          if (entry.isIntersecting) {
            const img = entry.target;
            if (img.dataset.src) {
              img.src = img.dataset.src;
              img.classList.add('loaded');
              imageObserver.unobserve(img);
            }
          }
        });
      });
      
      document.querySelectorAll('img[data-src]').forEach(img => {
        imageObserver.observe(img);
      });
    }
  }
};

// Service Worker registration
const serviceWorkerManager = {
  register() {
    if ('serviceWorker' in navigator) {
      window.addEventListener('load', () => {
        navigator.serviceWorker.register('/sw.js')
          .then(registration => {
            console.log('SW registered successfully');
            this.updateServiceWorker(registration);
          })
          .catch(error => {
            console.log('SW registration failed:', error);
          });
      });
    }
  },

  updateServiceWorker(registration) {
    registration.addEventListener('updatefound', () => {
      const newWorker = registration.installing;
      newWorker.addEventListener('statechange', () => {
        if (newWorker.state === 'installed' && navigator.serviceWorker.controller) {
          // New service worker available
          console.log('New service worker available');
        }
      });
    });
  }
};

// Search functionality
const searchManager = {
  init() {
    this.setupSearch();
  },

  setupSearch() {
    const searchInput = document.getElementById('search');
    if (searchInput) {
      searchInput.addEventListener('input', this.debounce(this.performSearch.bind(this), 300));
    }
  },

  debounce(func, wait) {
    let timeout;
    return function executedFunction(...args) {
      const later = () => {
        clearTimeout(timeout);
        func(...args);
      };
      clearTimeout(timeout);
      timeout = setTimeout(later, wait);
    };
  },

  performSearch(event) {
    const query = event.target.value.toLowerCase();
    const content = document.querySelectorAll('.content h1, .content h2, .content h3, .content p');
    
    content.forEach(element => {
      const text = element.textContent.toLowerCase();
      if (text.includes(query)) {
        element.style.backgroundColor = query ? '#fff3cd' : '';
      }
    });
  }
};

// Accessibility improvements
const accessibilityManager = {
  init() {
    this.setupKeyboardNavigation();
    this.setupFocusManagement();
  },

  setupKeyboardNavigation() {
    document.addEventListener('keydown', (event) => {
      // Skip to main content
      if (event.key === 'Tab' && event.altKey) {
        event.preventDefault();
        document.querySelector('main').focus();
      }
    });
  },

  setupFocusManagement() {
    // Add focus indicators
    const focusableElements = document.querySelectorAll('a, button, input, textarea, select');
    focusableElements.forEach(element => {
      element.addEventListener('focus', () => {
        element.style.outline = '2px solid #0366d6';
      });
      element.addEventListener('blur', () => {
        element.style.outline = '';
      });
    });
  }
};

// Initialize all managers when DOM is ready
document.addEventListener('DOMContentLoaded', () => {
  performanceMonitor.init();
  serviceWorkerManager.register();
  searchManager.init();
  accessibilityManager.init();
});

// Export for testing
if (typeof module !== 'undefined' && module.exports) {
  module.exports = {
    performanceMonitor,
    serviceWorkerManager,
    searchManager,
    accessibilityManager
  };
}