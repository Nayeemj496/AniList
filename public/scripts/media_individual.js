document.addEventListener("DOMContentLoaded", function () {
  let banner = document.querySelector(".banner");
  let header = document.querySelector(".header");

  let imageURLBanner = banner.getAttribute("data-tooltip");
  let imageURLHeader = header.getAttribute("data-tooltip");

  banner.style.backgroundImage = "url(" + imageURLBanner + ")";
  header.style.backgroundImage = "url(" + imageURLHeader + ")";
});


