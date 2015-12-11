$(function(){
	// function canvasSupport(){
	// 	return Modernizr.canvas;
	// }
	// if (!canvasSupport)
	// {
	// 	return;
	// }

	var theCanvas = document.getElementById("gaobo_canvas");
	var context = theCanvas.getContext("2d");
	var CWIDTH = theCanvas.width;
	var CHEIGHT = theCanvas.height;
	var B_COLOR = "#FDFFF0";
	var FONT = "18px 微软雅黑,Microsoft YaHei";
	var FONT_COLOR = "#000000";
	var OFFSET_X = 100;
	var OFFSET_Y = 180;
	var mouseX = -100;
	var mouseY = -100;
	var pArr = [];
	var text = document.getElementById("about_text").textContent;
	
	var vector2D = function vector2D (x, y) {
		this.x = x;
		this.y = y;
        this.reset = function (){
            this.x = 0;
            this.y = 0;
        }
        this.length = function (value){
            var a = Math.atan2(this.y,this.x);
            this.x = Math.cos(a) * value;
            this.y =Math.sin(a) * value;
        }
        this.add = function (v2){
            this.x += v2.x;
            this.y += v2.y;
        }
	}

	var charParticle = function charParticle(initX, initY, char){
		this.char = char;
		initX += OFFSET_X;
		initY += OFFSET_Y;
		this.initX = initX;
		this.initY = initY;
		this.x = Math.random() * CWIDTH;
		this.y = Math.random() * CHEIGHT;
		this.force = new vector2D(0, 0);
		this.gf = new vector2D(0, 0);
		this.af = new vector2D(0, 0);
		this.updatePosition = function (){
			this.force.reset();
			this.gf.reset();
			this.af.reset();
			var dis2 = Math.pow(this.x - this.initX, 2) + Math.pow(this.y - this.initY, 2);
			var dis = Math.sqrt(dis2);
			this.gf.x = this.initX - this.x;
			this.gf.y = this.initY - this.y;
			this.gf.length(dis * .1);
			this.force.add(this.gf);
			dis2 = Math.pow(this.x - mouseX, 2) + Math.pow(this.y - mouseY, 2);
			dis = Math.sqrt(dis2);
			if (dis < 250)
			{
				this.af.x = mouseX - this.x;
				this.af.y = mouseY - this.y;
				this.af.length(dis * .05 - 12.5);
				this.force.add(this.af);
			}
			this.x += this.force.x;
			this.y += this.force.y;
		}
		this.drawParticle = function (){
			context.fillText(char, this.x, this.y);
		}
	}

	function initParticles (str){
		context.font = FONT;
		var letterWidth = .0;
		var dx = .0;
		var dy = .0;
		var i = 0;
		var length = str.length;
		while (i < length)
		{
			var char = str.charAt(i);
			letterWidth = context.measureText(char).width;
			if (char != " ")
			{
				var particle = new charParticle(dx, dy, char);
				pArr.push(particle);
			}
			dx += letterWidth;
			if (i != 0 && char == "\n")
			{
				dx = 0;
				dy += 25;
			}
			i++;
		}
	}

	function updateCanvas (){
		context.clearRect(0, 0, CWIDTH, CHEIGHT);
		context.fillStyle = B_COLOR;
		context.fillRect(0, 0, CWIDTH, CHEIGHT);
		context.fillStyle = FONT_COLOR;
		context.font = FONT;
		context.textBaseline = "top";

		var i = pArr.length;
		while (--i > -1)
		{
			var particle = pArr[i];
			particle.updatePosition();
			particle.drawParticle();
		}
	}

	$("#gaobo_canvas").mousemove(function(e){
		var canvasOffset = $("#gaobo_canvas").offset();
		mouseX = Math.floor(e.pageX - canvasOffset.left);
		mouseY = Math.floor(e.pageY - canvasOffset.top);
    });


	initParticles(text);
	setInterval(updateCanvas, 1000/30);
});
