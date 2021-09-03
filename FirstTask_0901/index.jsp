<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <!--head.jsp 삽입-->
        <jsp:include page="/common/head.jsp"></jsp:include>
    </head>

    <body>
        <header>
            <!--header.jsp 삽입-->
            <jsp:include page="/common/header.jsp"></jsp:include>
        </header>
	
	
    <!--  음악 삽입  -->
        <!-- 노래 제목 : Puple Hat --> 
        <button class="audio2" id="btnPlay2"><i class="fas fa-play"></i></button>
        <button class="audio2" id="btnPause2"><i class="fas fa-pause-circle"></i></button> 
        <button class="audio2" id="btnStop2"><i class="fas fa-stop"></i></button> 

        <img class="coffe" src="http://drive.google.com/uc?export=view&id=1YVScjp1vZj-KXCzpYcqp1YYK0kuikkoa "alt="coffe">
        <!-- 노래 제목 : Tia Tamera --> 
        <button class="audio3" id="btnStop3"><i class="fas fa-stop"></i></button> 
        <button class="audio3" id="btnPause3"><i class="fas fa-pause-circle"></i></button> 
        <button class="audio3" id="btnPlay3"><i class="fas fa-play"></i></button>


        <section class="page-section clearfix">
            <div class="intro">
                <canvas></canvas>
            </div>
        </section>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <script src="js/menu.js"></script>
        <!-- audio.js 연결   -->
        <script src="js/audio.js"></script>
    </body>
</html>
