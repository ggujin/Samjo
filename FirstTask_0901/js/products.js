
import("../css/styles.css")

const dots = document.querySelector(".dot");
const bd = document.querySelector(".mysvg");
let sizeup = 100;
const colors = ["#ff6347", "#0067a3"];
let colortogle = 0;

const zomzoms = document.querySelector(".zomzom");
const mmsvg = document.querySelector(".mymysvgcontainer");
const mrc = document.querySelector(".myrealcontainer");
const mcc = document.querySelector("#mycoffeecontainer");
const mc = document.querySelector("#mycoffee")

let zomzomsizeup = 200;
const zomzomcolors = ["#008d62", "#6d4b20"];
let zomzomcolortogle = 0;

const rect = document.querySelector(".myrectangle");
const cont = document.querySelector(".rectanglecontainer");
const myd = document.querySelector(".mydiv");


function rectanglechange(event){

    cont.style.display = "block";
    cont.style.left = event.pageX -100 + "px";
    cont.style.top = event.pageY -100 + "px";
    rect.style.rx = event.pageX/15;
    rect.style.ry = event.pageY/15;

}

function byerec(event){
    cont.style.display = "none";
}

function handlerDotSizeon(){
    dots.style.r = Number(dots.style.r) + sizeup;
    sizeup += 20;
    newdots();

}


function handlerDotSizeup(){

    dots.style.r = Number(dots.style.r) - 30;
}


function newdots(){
    if(Number(dots.style.r)>=760){
        dots.style.r = 10;
        if(colortogle === 0){
            bd.style.backgroundColor = colors[0];
            dots.style.fill = colors[1];
            colortogle = 1;
        }else if(colortogle === 1){
            bd.style.backgroundColor = colors[1];
            dots.style.fill = colors[0];
            colortogle = 0;
        }
        sizeup =100;
    }
}

function handlerZomzomSizeon(){
    zomzoms.style.width = zomzomsizeup;
    zomzoms.style.height = zomzomsizeup;
    zomzomsizeup += parseInt(zomzomsizeup/2) + 20;
    newzom();
}

function zomzomcursor(event){
    const no = zomzoms.style.width.replace(/[^0-9]/g,'');
    const no2 = zomzoms.style.height.replace(/[^0-9]/g,'');
    mrc.style.left = event.pageX -Number(no)/2 + "px";
    mrc.style.top = event.pageY -Number(no2)/2 + "px";
    mrc.style.display = "block";

}

function byezomzom(event) {
    mrc.style.display = "none";
}

function newzom(){
    if( zomzoms.style.width==="1175px"){
        zomzoms.style.width = 200;
        zomzoms.style.height = 200;
        if(zomzomcolortogle === 0){
            mmsvg.style.backgroundColor = zomzomcolors[0];
            zomzomcolortogle = 1;

        }else if(zomzomcolortogle === 1){
            mmsvg.style.backgroundColor = zomzomcolors[1];
            zomzomcolortogle = 0;

        }
        zomzomsizeup =200;
    }
}
myd.addEventListener("mousemove", rectanglechange, false);
myd.addEventListener("mouseenter", rectanglechange, false);
myd.addEventListener("mouseleave", byerec, false);

mmsvg.addEventListener("mouseenter",zomzomcursor,false);
mmsvg.addEventListener("mouseleave",byezomzom,false);
mmsvg.addEventListener("mousemove", zomzomcursor, false);
mmsvg.addEventListener("mousedown", zomzomcursor, false);
mmsvg.addEventListener("mouseup", zomzomcursor, false);
mmsvg.addEventListener("click", zomzomcursor, false);
mmsvg.addEventListener("mousedown",handlerZomzomSizeon);
dots.addEventListener("mousedown",handlerDotSizeon);
dots.addEventListener("mouseup",handlerDotSizeup);