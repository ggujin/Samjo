class Ball{
	constructor(stageWidth, stageHeight, radius, speed){
		this.radius = radius;
		this.vx = speed;
		this.vy = speed;

		const diameter = this.radius*2;
		this.x = diameter + (Math.random() * (stageWidth - diameter));
		this.y = diameter + (Math.random() * (stageHeight - diameter));
	}

	draw(ctx, stageWidth, stageHeight){
		this.x += this.vx;
		this.y += this.vy;

		this.bounceWindow(stageWidth, stageHeight);

		ctx.fillStyle = '#fdd700';
		ctx.beginPath();
		ctx.arc(this.x, this.y, this.radius, 0, 2*Math.PI);
        ctx.fill();
	}

	bounceWindow(stageWidth, stageHeight){
		const minX = this.radius;
		const maxX = stageWidth-this.radius;
		const minY = this.radius;
		const maxY = stageHeight-this.radius;

		if(this.x <= minX || this.x >= maxX){
			this.vx *= -1;
			this.x += this.vx;
		}else if(this.y <= minY || this.y >= maxY){
			this.vy *= -1;
			this.y += this.vy;
		}
	}
}


class App{
	constructor(){
		this.canvas = document.createElement('canvas');
		document.query
		this.ctx = this.canvas.getContext('2d');
        
        document.body.appendChild(this.canvas);

		window.addEventListener('resize', this.resize.bind(this), false);
		this.resize();

		this.balls = [new Ball(this.stageWidth, this.stageHeight, 30, 10), new Ball(this.stageWidth, this.stageHeight, 50, 15)];

		window.requestAnimationFrame(this.animate.bind(this));
	}

	resize(){
		this.stageWidth = document.body.clientWidth;
		this.stageHeight = document.body.clientHeight;

		this.canvas.width = this.stageWidth*2;
		this.canvas.height = this.stageHeight*2;
		this.ctx.scale(2,2);
	}

	animate(t){
		window.requestAnimationFrame(this.animate.bind(this));
		
		this.ctx.clearRect(0,0, this.stageWidth, this.stageHeight);

		this.ball.draw(this.ctx, this.stageWidth, this.stageHeight);
	}
}

window.onload = () => {
	new App();
};