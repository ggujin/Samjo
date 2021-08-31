document.addEventListener("DOMContentLoaded",tv);

const gcontainer = document.querySelector(".ghostcontainer");
const gcontainer2 = document.querySelector(".ghostcontainer2");
const gcontainer3 = document.querySelector(".ghostcontainer3");
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
                file: "https://mblogthumb-phinf.pstatic.net/20140322_110/ghtlzh88_13954621864615PKue_GIF/d56212cbc548a00d992f4af2a5426fd4.gif?type=w2",
                desc: "Steamboat Willie (Mickey Mouse) steering a ship"
            },
            {
                file: "https://i.ibb.co/0FqQVrj/skeletons.gif",
                desc: "Spooky scary skeletons sending shivers down your spine"
            },
            {
                file: "https://i.ibb.co/Hpnwgq2/kingkong.gif",
                desc: "King Kong waving on Empire State Building",
            },
            {
                file: "https://i.ibb.co/fp0PSjv/tracks.gif",
                desc: "Looking at train tracks from behind a train",
            },
            {
                file: "https://i.ibb.co/5FM7BtH/nuke.gif",
                desc: "Nuclear explosion at sea",
            },
            {
                file: "https://mblogthumb-phinf.pstatic.net/20140322_110/ghtlzh88_13954621864615PKue_GIF/d56212cbc548a00d992f4af2a5426fd4.gif?type=w2",
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
    gcontainer.addEventListener("mouseover",onmouseoverGcon);
    gcontainer2.addEventListener("mouseover",onmouseoverGcon2);
    gcontainer3.addEventListener("mouseover",onmouseoverGcon3);
    document.getElementById("channel").addEventListener("click",changeChannel);
}
