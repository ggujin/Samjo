// Audio 객체 설정 
const myAudio1 = new Audio();
myAudio1.src="https://drive.google.com/uc?export=download&id=1BWDaLqiRRwAyMHGBs9RkELGxq5UTerAW"
 
// 오디오 재생: 크롬브라우저에서 작동 안함
myAudio1.play(); 
// 버튼 취득 
const btnPlay1 = document.getElementById("btnPlay1"); 
const btnPause1 = document.getElementById("btnPause1");
const btnStop1 = document.getElementById("btnStop1"); 
   
// 재생 버튼 
btnPlay1.onclick = function () { myAudio1.play(); }
   
// 일시정지 버튼
btnPause1.onclick = function () { myAudio1.pause(); }
    
// 정지 버튼 
btnStop1.onclick = function () {
myAudio1.pause(); myAudio1.currentTime = 0; // 재생시간을 처음으로 설정 
} 


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
btnPlay2.onclick = function () { myAudio2.play(); }
   
// 일시정지 버튼
btnPause2.onclick = function () { myAudio2.pause(); }
    
// 정지 버튼 
btnStop2.onclick = function () {
myAudio2.pause(); myAudio2.currentTime = 0; // 재생시간을 처음으로 설정 
} 

// Audio 객체 설정 
const myAudio3 = new Audio();
myAudio3.src="https://drive.google.com/uc?export=download&id=1Rf8mTWo2ysadL8CUFNBu0j0R8yU5FYdr"
 
// 오디오 재생: 크롬브라우저에서 작동 안함
myAudio3.play(); 
// 버튼 취득 
const btnPlay3 = document.getElementById("btnPlay3"); 
const btnPause3 = document.getElementById("btnPause3");
const btnStop3  = document.getElementById("btnStop3"); 
   
// 재생 버튼 
btnPlay3.onclick = function () { myAudio3.play(); }
   
// 일시정지 버튼
btnPause3.onclick = function () { myAudio3.pause(); }
    
// 정지 버튼 
btnStop3.onclick = function () {
myAudio3.pause(); myAudio3.currentTime = 0; // 재생시간을 처음으로 설정 
} 







