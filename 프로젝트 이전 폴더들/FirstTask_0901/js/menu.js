
//Designed by:  Mauricio Bucardo
//Original image:
//https://dribbble.com/shots/5619509-Animated-Tab-Bar

"use strict"; 

const body = document.body;
const bgColorsBody = ["#ffb457", "#ff96bd", "#9999fb", "#ffe797", "#cffff1"];
const menu = body.querySelector(".menu");
const menuItems = menu.querySelectorAll(".menu__item");
const menuBorder = menu.querySelector(".menu__border");
let activeItem = menu.querySelector(".active");

function clickItem(item, index) {

 menu.style.removeProperty("--timeOut");
 
 if (activeItem == item) return;
 
 if (activeItem) {
     activeItem.classList.remove("active");
 }

 
 item.classList.add("active");
 activeItem = item;
 offsetMenuBorder(activeItem, menuBorder);
 
 
}

function offsetMenuBorder(element, menuBorder) {

 const offsetActiveItem = element.getBoundingClientRect();
 const downcurve = menuBorder.offsetHeight + menu.offsetHeight + "px";
 const left = Math.floor(offsetActiveItem.left - menu.offsetLeft - (menuBorder.offsetWidth  - offsetActiveItem.width) / 2) +  "px";
 menuBorder.style.transform = `translate(${left}, ${downcurve}) rotate(180deg)`;
 
}

offsetMenuBorder(activeItem, menuBorder);

menuItems.forEach((item, index) => {

 item.addEventListener("mouseover", () => clickItem(item, index));
 
})

window.addEventListener("resize", () => {
 offsetMenuBorder(activeItem, menuBorder);
 menu.style.setProperty("--timeOut", "none");
});

////////////////////////////////////////////////////////////////////////////////
