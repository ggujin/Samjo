<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <jsp:include page="/WEB-INF/common/head.jsp"></jsp:include>
    <link rel="stylesheet" href="css/jstyle.css">

    <style>
        #map {
            margin: 1%;
            width: 90%;
            height: 500px;
            align-self: center;
        }

        #maptittle {
            width: 90%;
            align-self: center;
            margin: 10px;
            border-bottom: 2px #1b0ce2a4 dashed;
        }
    </style>
</head>


<!-- map -->
<!--
    카카오 AIP 키 : 4845f5070e1c6602a8bc96a8d69e94d7 ( 8090에서만 구동가능)
    학원 위도와 경도 : 37.49981285753118, 127.02902657410843
-->

<body>
    <div id="wrap">
        <div id="nav">2</div>
        <div id="header">1</div>

        <div id="left">
            <h2 style="padding: 10px 0 0 0;">유치원 소개</h2>
            <ul id="leftList">
                <li id="leftList_1"><a href="intro.html">원소개</a></li>
                <li id="leftList_1"><a href="intro.html">원소개</a></li>
                <li id="leftList_1"><a href="intro.html">원소개</a></li>
                <li id="leftList_1"><a href="intro.html">원소개</a></li>
            </ul>
        </div>
        <div id="contents">
            <div id="maptittle">
                <h2>오시는 길</h2>
            </div>
            <div id="map"></div>
            <script type="text/javascript"
                src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4845f5070e1c6602a8bc96a8d69e94d7"></script>
            <script>
                var container = document.getElementById('map');
                var options = {
                    center: new kakao.maps.LatLng(37.49981285753118, 127.02902657410843), // 위도와 경도
                    level: 3 //지도 확대 레벨
                };

                var map = new kakao.maps.Map(container, options); //지도를 생성합니다.

                // 마커가 표시될 위치입니다 
                var markerPosition = new kakao.maps.LatLng(37.49981285753118, 127.02902657410843);

                // 마커를 생성합니다
                var marker = new kakao.maps.Marker({
                    position: markerPosition
                });

                // 마커가 지도 위에 표시되도록 설정합니다
                marker.setMap(map);


                // 커스텀 오버레이에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
                var content = '<div class="customoverlay">' +
                    '  <a href="https://map.kakao.com/link/map/11394059" target="_blank">' +
                    '    <span class="title">양선생 유치원</span>' +
                    '  </a>' +
                    '</div>';

                // 커스텀 오버레이가 표시될 위치입니다 
                var position = new kakao.maps.LatLng(37.49981285753118, 127.02902657410843);

                // 커스텀 오버레이를 생성합니다
                var customOverlay = new kakao.maps.CustomOverlay({
                    map: map,
                    position: position,
                    content: content,
                    yAnchor: 0.1
                });
            </script>
        </div>
    </div>
    </div>




</body>




<!-- Jquery needed -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="js/scripts.js"></script>

<!-- Function used to shrink nav bar removing paddings and adding black background -->

</html>