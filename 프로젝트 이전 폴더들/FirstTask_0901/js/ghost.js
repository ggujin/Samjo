document.addEventListener("DOMContentLoaded",tv);

const gcontainer = document.querySelector(".ghostcontainer");
const gcontainer2 = document.querySelector(".ghostcontainer2");
const gcontainer3 = document.querySelector(".ghostcontainer3");
const gcontainer4 = document.querySelector(".ghostcontainer4");
const gcontainer5 = document.querySelector(".ghostcontainer5");
const gcontainer6 = document.querySelector(".ghostcontainer6");
const mtvc = document.querySelector(".mytvcontainer");
function tv() {
    var cnv = document.getElementById("static"),
        c = cnv.getContext("2d"),
        cw = cnv.offsetWidth,
        ch = cnv.offsetHeight,
        staticScrn = c.createImageData(cw,ch),
        staticFPS = 30,
        isStatic = false,
        staticTO,
        gifData = [ //여기에 조별 사진.
            {
                file: "assets/img/hy.jpg",
                desc: "Steamboat Willie (Mickey Mouse) steering a ship"
            },
            {
                file: "assets/img/jy.jpg",
                desc: "Spooky scary skeletons sending shivers down your spine"
            },
            {
                file: "assets/img/sj.jpg",
                desc: "King Kong waving on Empire State Building",
            },
            {
                file: "assets/img/bs.jpg",
                desc: "Looking at train tracks from behind a train",
            },
            {
                file: "assets/img/mj.jpg",
                desc: "Nuclear explosion at sea",
            },
            {
                file: "assets/img/js.jpg",
                desc: "Nuclear explosion at sea",
            }
        ],
        gifs = [],
        channel = 0;

    for (g in gifData) {
        gifs.push(new Image());
        gifs[g].src = gifData[g].file;
        gifs[g].alt = gifData[g].desc;
    }

    /* Static */
    var runStatic = function() {
        isStatic = true;
        c.clearRect(0,0,cw,ch);

        for (var i = 0; i < staticScrn.data.length; i += 4) {
            let shade = 127 + Math.round(Math.random() * 128);
            staticScrn.data[0 + i] = shade;
            staticScrn.data[1 + i] = shade;
            staticScrn.data[2 + i] = shade;
            staticScrn.data[3 + i] = 255;
        }
        c.putImageData(staticScrn,0,0);

        staticTO = setTimeout(runStatic,1e3/staticFPS);
    };
    runStatic();

    /* Channels */
    var changeChannel = function() {
        var displayed = document.getElementById("displayed");

        ++channel;
        if (channel > gifData.length)
            channel = 1;

        this.classList.remove("pristine");
        this.style.transform = `rotate(${channel * 360/(gifData.length + 1)}deg)`;

        cnv.classList.remove("hide");
        displayed.classList.add("hide");

        if (!isStatic)
            runStatic();

        setTimeout(function(){
            cnv.classList.add("hide");
            displayed.classList.remove("hide");

            displayed.src = gifs[channel - 1].src;
            displayed.alt = gifs[channel - 1].alt;

            isStatic = false;

            clearTimeout(staticTO);
        },300);
    };

    function onmouseoverGcon(){
        var displayed = document.getElementById("displayed");
        displayed.src = gifs[0].src;
        displayed.alt = gifs[0].alt;


    }

    function onmouseoverGcon2(){

        var displayed = document.getElementById("displayed");
        displayed.src = gifs[1].src;
        displayed.alt = gifs[1].alt;


    }

    function onmouseoverGcon3(){

        var displayed = document.getElementById("displayed");
        displayed.src = gifs[2].src;
        displayed.alt = gifs[2].alt;


    }

    function onmouseoverGcon4(){

        var displayed = document.getElementById("displayed");
        displayed.src = gifs[3].src;
        displayed.alt = gifs[3].alt;


    }

    function onmouseoverGcon5(){

        var displayed = document.getElementById("displayed");
        displayed.src = gifs[4].src;
        displayed.alt = gifs[4].alt;


    }

    function onmouseoverGcon6(){

        var displayed = document.getElementById("displayed");
        displayed.src = gifs[5].src;
        displayed.alt = gifs[5].alt;


    }

    function automove(){

        const conarr = new Array(gcontainer, gcontainer2, gcontainer3, gcontainer4, gcontainer5, gcontainer6);

        let randomv =parseInt(Math.random()*6);

        conarr[randomv].style.left =  Math.random()*window.innerWidth + "px";
        conarr[randomv].style.top = Math.random()*window.innerHeight+ "px";
    }

    function containerhide(){
        mtvc.style.display = "none";
    }
    function containercomeon(){
        mtvc.style.display = "block";
    }
    setInterval(automove,1000);
    gcontainer.addEventListener("mouseover",onmouseoverGcon);
    gcontainer2.addEventListener("mouseover",onmouseoverGcon2);
    gcontainer3.addEventListener("mouseover",onmouseoverGcon3);
    gcontainer4.addEventListener("mouseover",onmouseoverGcon4);
    gcontainer5.addEventListener("mouseover",onmouseoverGcon5);
    gcontainer6.addEventListener("mouseover",onmouseoverGcon6);
    window.addEventListener("click",containerhide);
    window.addEventListener("click",containercomeon);
    document.getElementById("channel").addEventListener("click",changeChannel);
}
