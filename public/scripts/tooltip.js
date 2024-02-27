const arrow = document.querySelector(".arrow");
const userBrowse = document.querySelector(".user-browse");
const user = document.querySelector(".user");
const browseLink = document.querySelector(".browse-link");
const browse = document.querySelector(".browse");


function showDropdown() {
    arrow.style.opacity = 0.7;
    userBrowse.style.transform = "scale(1)";
    userBrowse.style.top = "50px";
}


function hideDropdown() {
    arrow.style.opacity = 1;
    userBrowse.style.transform = "scale(0)";
    userBrowse.style.top = "0px";
}

user.addEventListener("mouseenter", showDropdown);

userBrowse.addEventListener("mouseenter", showDropdown);

user.addEventListener("mouseleave", (event) => {
    if (!isHover(user) && !isHover(userBrowse)) {
        hideDropdown();
    }
});

userBrowse.addEventListener("mouseleave", (event) => {
    if (!isHover(user) && !isHover(userBrowse)) {
        hideDropdown();
    }
});

function isHover(element) {
    return event.relatedTarget === element || element.contains(event.relatedTarget);
}

browseLink.addEventListener("mouseenter", () => {
    browse.style.transform = "scale(1)";
    browse.style.top = "50px";
});

browse.addEventListener("mouseenter", () => {
    browse.style.transform = "scale(1)";
    browse.style.top = "50px";
});

browseLink.addEventListener("mouseleave", () => {
    if (!isHover(browse)) {
        browse.style.transform = "scale(0)";
        browse.style.top = "0px";
    }
});

browse.addEventListener("mouseleave", () => {
    if (!isHover(browseLink)) {
        browse.style.transform = "scale(0)";
        browse.style.top = "0px";
    }
});


document.addEventListener("DOMContentLoaded", function() {
    const cards = document.querySelectorAll(".media-card")
    const titles = document.querySelectorAll(".media-card-title")

    for(let i = 0; i < cards.length; ++i) {
        cards[i].addEventListener("mouseenter", function() {
            const hoverColor = titles[i].getAttribute("data-hover-color")
            if(!hoverColor) {
                titles[i].style.color = "#8BA0B2"
            } else {
                titles[i].style.color = hoverColor
            }
            
        })

        cards[i].addEventListener("mouseleave", function() {
            titles[i].style.color = "#8BA0B2"
        })
    }
})