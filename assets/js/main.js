document.addEventListener("DOMContentLoaded", () => {
  // Add native lazy-loading to all images if not already present
  document.querySelectorAll("img:not([loading])").forEach(img => {
    img.setAttribute("loading", "lazy");
  });
  console.log("Site loaded");
});