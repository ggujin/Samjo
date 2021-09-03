<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/last.css" rel="stylesheet" />
    </head>
    <body>
        <div class="grid"></div>
        
        <div class="warning"></div>
        
        <div class="base">
            <button id="activate">
                <span></span>
            </button>
        </div>
        
        <div class="box opened" id="cover">
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <span></span><span></span>
        </div>
        
        <div class="hinges"></div>
        
        <div class="text">
            SELF-&thinsp;DESTRUCT
        </div>
        
        <div id="panel">
            <div id="msg">YOU'LL BE DESTRUCTION BY JS</div>
            <div id="time">9</div>
            <span id="abort">STOP</span>
            <span id="detonate">DETONATE</span>
        </div>
        
        <div id="turn-off"></div>
        <div id="closing"></div>
        
        <div id="restart"><button id="reload"></button></div>
        
        <div id="mute"></div>
        
        <audio id="alarm">
            <source src="https://josetxu.com/demos/sounds/self-destruct-alarm-count.mp3" type="audio/mpeg">
        </audio>
        
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/last.js"></script>
    </body>
</html>
