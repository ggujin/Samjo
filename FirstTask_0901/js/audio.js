// Audio 객체 설정 
const myAudio2 = new Audio();
myAudio2.src="https://drive.google.com/uc?export=download&id=1Z10IlBsKHXUGzE98tYjXjvNiZA3PfrCo"
 
// 오디오 재생: 크롬브라우저에서 작동 안함
myAudio2.play(); 
// 버튼 취득 
const btnPlay2 = document.getElementById("btnPlay2"); 
const btnPause2 = document.getElementById("btnPause2");
const btnStop2 = document.getElementById("btnStop2"); 
   
// 재생 버튼 
btnPlay2.onclick = function () {
     myAudio2.play();
}
   
// 일시정지 버튼
btnPause2.onclick = function () { 
    myAudio2.pause(); 
}
    
// 정지 버튼 
btnStop2.onclick = function () {
    myAudio2.pause(); myAudio2.currentTime = 0; // 재생시간을 처음으로 설정 
} 