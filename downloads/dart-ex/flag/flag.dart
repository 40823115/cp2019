import 'dart:html';
import 'dart:math' as Math;

CanvasElement canvas;
CanvasRenderingContext2D ctx;
int flag_w = 300;
int flag_h = 200;
num circle_x = flag_w / 4;
num circle_y = flag_h / 4;

void main(){
  querySelector("#ge").onClick.listen((e) => ge());
  querySelector("#ne").onClick.listen((e) => ne());
  querySelector("#fr").onClick.listen((e) => fr());
  querySelector("#roc").onClick.listen((e) => roc());
  querySelector("#jp").onClick.listen((e) => jp());
  querySelector("#uk").onClick.listen((e) => uk());
  querySelector("#clean").onClick.listen((e) => clean());
}



  
void ge() {
  
  ctx.beginPath();
  ctx.moveTo(0, 0);
  ctx.lineTo(0, flag_h * 1 / 3);
  ctx.lineTo(flag_w, flag_h * 1 / 3);
  ctx.lineTo(flag_w, 0);
  ctx.strokeStyle = "BLACK";
  ctx.stroke();
  ctx.fillStyle = "BLACK";
  ctx.fill();
  ctx.closePath();
  ctx.beginPath();
  ctx.moveTo(0, flag_h * 1 / 3);
  ctx.lineTo(0, flag_h * 2 / 3);
  ctx.lineTo(flag_w, flag_h * 2 / 3);
  ctx.lineTo(flag_w, flag_h * 1 / 3);
  ctx.strokeStyle = "RED";
  ctx.stroke();
  ctx.fillStyle = "RED";
  ctx.fill();
  ctx.closePath();
  ctx.beginPath();
  ctx.moveTo(0, flag_h * 2 / 3);
  ctx.lineTo(0, flag_h );
  ctx.lineTo(flag_w, flag_h * 3 / 3);
  ctx.lineTo(flag_w, flag_h * 2 / 3);
  ctx.strokeStyle = "YELLOW";
  ctx.stroke();
  ctx.fillStyle = "YELLOW";
  ctx.fill();
  ctx.closePath();
}
void ne() {
  
  ctx.beginPath();
  ctx.moveTo(0, 0);
  ctx.lineTo(0, flag_h * 1 / 3);
  ctx.lineTo(flag_w, flag_h * 1 / 3);
  ctx.lineTo(flag_w, 0);
  ctx.strokeStyle = "RED";
  ctx.stroke();
  ctx.fillStyle = "RED";
  ctx.fill();
  ctx.closePath();
  ctx.beginPath();
  ctx.moveTo(0, flag_h * 1 / 3);
  ctx.lineTo(0, flag_h * 2 / 3);
  ctx.lineTo(flag_w, flag_h * 2 / 3);
  ctx.lineTo(flag_w, flag_h * 1 / 3);
  ctx.strokeStyle = "WHITE";
  ctx.stroke();
  ctx.fillStyle = "WHITE";
  ctx.fill();
  ctx.closePath();
  ctx.beginPath();
  ctx.moveTo(0, flag_h * 2 / 3);
  ctx.lineTo(0, flag_h );
  ctx.lineTo(flag_w, flag_h * 3 / 3);
  ctx.lineTo(flag_w, flag_h * 2 / 3);
  ctx.strokeStyle = "BLUE";
  ctx.stroke();
  ctx.fillStyle = "BLUE";
  ctx.fill();
  ctx.closePath();
}
void fr() {

  ctx.beginPath();
  ctx.moveTo(0, 0);
  ctx.lineTo(flag_w*1/3,0);
  ctx.lineTo(flag_w*1/3, flag_h);
  ctx.lineTo(0, flag_h);
  ctx.strokeStyle = "blue";
  ctx.stroke();
  ctx.fillStyle = "blue";
  ctx.fill();
  ctx.closePath();
  ctx.beginPath();
  ctx.moveTo(flag_w*1/3,0);
  ctx.lineTo(flag_w*2/3,0);
  ctx.lineTo(flag_w*2/3, flag_h);
  ctx.lineTo(flag_w*1/3,flag_h);
  ctx.lineTo(flag_w*1/3,0);
  ctx.strokeStyle = "WHITE";
  ctx.stroke();
  ctx.fillStyle = "WHITE";
  ctx.fill();
  ctx.closePath();
  ctx.beginPath();
  ctx.moveTo(flag_w*2/3,0);
  ctx.lineTo(flag_w,0);
  ctx.lineTo(flag_w, flag_h);
  ctx.lineTo(flag_w*2/3, flag_h);
  ctx.lineTo(flag_w*2/3,0);
  ctx.strokeStyle = "red";
  ctx.stroke();
  ctx.fillStyle = "red";
  ctx.fill();
  ctx.closePath();
}
void roc() {
  canvas = querySelector('#canvas');
  ctx = canvas.getContext('2d');

  drawROC(ctx);
  querySelector("#roc").onClick.listen((e) => drawROC(ctx));
  querySelector("#usa").onClick.listen((e) => drawUSA(ctx));
  querySelector("#button").onClick.listen((e) => clearCanvas());
}

void drawUSA(ctx){
  // 請畫出美國國旗
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.font = "30px Arial";
  ctx.strokeStyle = 'rgb(255, 0, 0)';
  ctx.strokeText("請畫出美國國旗", flag_w/6, flag_w/4);
}

void drawROC(ctx){
  // 先畫滿地紅
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(255, 0, 0)';
  ctx.fillRect(0, 0, flag_w, flag_h);
  // 再畫青天
  ctx.fillStyle = 'rgb(0, 0, 150)';
  ctx.fillRect(0, 0, flag_w / 2, flag_h / 2);
  // 畫十二道光芒白日
  ctx.beginPath();
  num star_radius = flag_w / 8;
  num angle = 0;
  for (int i = 0; i < 25; i++) {
    angle += 5 * Math.pi * 2 / 12;
    num toX = circle_x + Math.cos(angle) * star_radius;
    num toY = circle_y + Math.sin(angle) * star_radius;
    // 只有 i 為 0 時移動到 toX, toY, 其餘都進行 lineTo
    if (i != 0)
      ctx.lineTo(toX, toY);
    else
      ctx.moveTo(toX, toY);
  }
  ctx.closePath();
  // 將填色設為白色
  ctx.fillStyle = '#fff';
  ctx.fill();
  // 白日:藍圈
  ctx.beginPath();
  ctx.arc(circle_x, circle_y, flag_w * 17 / 240, 0, Math.pi * 2, true);
  ctx.closePath();
  // 填色設為藍色
  ctx.fillStyle = 'rgb(0, 0, 149)';
  ctx.fill();
  // 白日:白心
  ctx.beginPath();
  ctx.arc(circle_x, circle_y, flag_w / 16, 0, Math.pi * 2, true);
  ctx.closePath();
  // 填色設為白色
  ctx.fillStyle = '#fff';
  ctx.fill();
}

void clearCanvas(){
  ctx.clearRect(0, 0, flag_w, flag_h);
}

void jp(){
    num circle_x = flag_w / 2;
num circle_y = flag_h / 2;
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = '#fff';
  ctx.fillRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = '#bc002d';
  ctx.beginPath();
  ctx.arc(circle_x, circle_y, 60, 0, Math.pi * 2, true);
  ctx.closePath();
  ctx.fillStyle = '#bc002d';
  ctx.fill();
}
void uk(){
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = '#001b69';
  ctx.fillRect(0, 0, flag_w, flag_h);
    ctx.strokeStyle="#fff";
  ctx.lineWidth = 30;
    ctx.beginPath();
    ctx.moveTo(0,0);
    ctx.lineTo(300,150);
    ctx.moveTo(0,150);
    ctx.lineTo(300,0);
  ctx.stroke();
  ctx.strokeStyle="#c9072a";
  ctx.lineWidth = 10;
  ctx.beginPath();
  ctx.moveTo(0,155);
  ctx.lineTo(150,80);
  ctx.stroke();
  ctx.strokeStyle="#c9072a";
  ctx.lineWidth = 10;
  ctx.beginPath();
  ctx.moveTo(150,70);
  ctx.lineTo(295,-5);
  ctx.stroke();
  ctx.strokeStyle="#c9072a";
  ctx.lineWidth = 10;
  ctx.beginPath();
  ctx.moveTo(150,70);
  ctx.lineTo(305,145);
  ctx.stroke();
  ctx.strokeStyle="#c9072a";
  ctx.lineWidth = 10;
  ctx.beginPath();
  ctx.moveTo(150,80);
  ctx.lineTo(-5,5);
  ctx.stroke();
  ctx.strokeStyle="#fff";
  ctx.lineWidth = 50;
    ctx.beginPath();
    ctx.moveTo(0,75);
    ctx.lineTo(300,75);
    ctx.moveTo(150,0);
    ctx.lineTo(150,150);
    ctx.stroke();
  ctx.strokeStyle="#c9072a";
  ctx.lineWidth = 30;
    ctx.beginPath();
    ctx.moveTo(0,75);
    ctx.lineTo(300,75);
    ctx.moveTo(150,0);
    ctx.lineTo(150,150);
    ctx.stroke();
    ctx.fillStyle = '#fff';
  ctx.fillRect(0, 150, flag_w, flag_h/4);
  
}

void clean(){
  ctx.clearRect(0, 0, flag_w, flag_h);
}