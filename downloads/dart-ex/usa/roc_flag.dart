import 'dart:html';
import 'dart:math' as Math;
// for Timer
import 'dart:async';

CanvasElement canvas;
CanvasRenderingContext2D ctx;
int flagw = 250;
int flagh = 200;
num x = flagw / 18;
num y = flagh / 18;
Timer timer;
num rotAngle = 0;
num incAngle = 0;

void main() {
  canvas = querySelector('#canvas');
  ctx = canvas.getContext('2d');
  querySelector("#stopROC").onClick.listen((e) => stopROC());
  querySelector("#rotROC").onClick.listen((e) => rotROC());
  // 每 10 ms 重新繪製轉動 incAngle 的 drawROC 國旗
  timer = Timer.periodic(const Duration(milliseconds: 10), (t) => drawUSA(ctx));
  
}

void stopROC() {
  // 白日旋轉角度增量值
  incAngle = 0;
}

void rotROC() {
  // 白日旋轉角度增量值
  incAngle = 1;
}


void drawUSA(ctx) {
  ctx.clearRect(0, 0, flagw, flagh);
  num d=15.4;
  num b=90;
  num star = flagw / 50;
  ctx.clearRect(0, 0, flagw, flagh);
  ctx.fillStyle = 'rgb(255, 0, 0)';
  ctx.fillRect(0, 0, flagw, flagh);
  for(int i=0;i<8;i++){
  if(i!=0){ 
  d+=31;
  ctx.fillStyle = 'rgb(255, 255, 255)';
  ctx.fillRect(0, d, flagw, flagh / 13);
}
  else{
  ctx.fillStyle = 'rgb(255, 255, 255)';
  ctx.fillRect(0, d, flagw, flagh / 13);
}
}
  ctx.fillRect(0, 200.4, flagw, flagh / 13);
  ctx.fillStyle = 'rgb(0, 0, 150)';
  ctx.fillRect(0, 0, flagw / 2, flagh / 1.9);
  // 畫十二道光芒白日
  ctx.beginPath();
  for (int i = 0; i < 9; i++) { 
  b-=10;
  if(i %2==0){
  num angle = 120;
  num a=-20;
  for (int i = 0; i < 6; i++) {
  a+=20;
  for (int i = 0; i < 5; i++) {
  angle += 5 * Math.pi * 2 / 12;
  num toX = (x+a) + Math.cos(angle+ rotAngle) * star;
  num toY = (y+b) + Math.sin(angle+ rotAngle) * star;
  // 只有 i 為 0 時移動到 toX, toY, 其餘都進行 lineTo
  if (i != 0)
    ctx.lineTo(toX, toY);
  else
    ctx.moveTo(toX, toY);
}
}
}
  else{
  num a=-10;
  for (int i = 0; i < 5; i++) {
  num angle = 120;
  a+=20;
  for (int i = 0; i < 5; i++) {
  angle += 5 * Math.pi * 2 / 12;
  num toX = (x+a) + Math.cos(angle+ rotAngle) * star;
  num toY = (y+b) + Math.sin(angle+ rotAngle) * star;
  // 只有 i 為 0 時移動到 toX, toY, 其餘都進行 lineTo
  if (i != 0)
    ctx.lineTo(toX, toY);
  else
    ctx.moveTo(toX, toY);
}
}
}
}
  ctx.closePath();
  // 將填色設為白色
  ctx.fillStyle = '#fff';
  ctx.fill();
  // 旋轉角度以徑度表示
  rotAngle += incAngle * Math.pi / 180;
}