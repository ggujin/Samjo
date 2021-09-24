import("css/style.css")

const dots = document.querySelector("#dot");
const tell = document.querySelector("h1")
const bd = document.querySelector("svg");
const getsvg = document.querySelector("svg");
let sizeup = 100;
const colors = ["#ff6347", "#0067a3"];
let colortogle = 0;

function handlerDotSizeon(){
    dots.style.r = Number(dots.style.r) + sizeup;
    sizeup += 20;

}

function handlerDotSizeup(){

    dots.style.r = Number(dots.style.r) - 30;
}

function tellSize(){

    tell.textContent = Number(dots.style.r);
    newdots();
}

function newdots(){
    if(Number(dots.style.r)>=1350){
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

dots.addEventListener("mousedown",handlerDotSizeon);
dots.addEventListener("mouseup",handlerDotSizeup);
dots.addEventListener("click", tellSize);