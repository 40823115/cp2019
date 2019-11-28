import 'dart:html';

// 定義一個 CanvasApp 類別
class CanvasApp {
  // 宣告 theCanvas 型別為 CanvasElement
  CanvasElement theCanvas;
  // 宣告 context 型別為 CanvasRenderingContext2D
  CanvasRenderingContext2D context;

  CanvasApp() {
    // 起始畫布與繪圖內容
    theCanvas = document.querySelector('#canvasOne');
    context = theCanvas.getContext('2d');
  }

  // 定義 CanvasApp 類別的 drawScreen 方法
  drawScreen() {
    // 在 console 列出 Drawing Canvas 字串
    print('Drawing Canvas');

    // 設定背景顏色
    context
      ..fillStyle = '#ffffaa'
      ..fillRect(0, 0, 500, 300);

    // 設定文字內容屬性
    context
      ..fillStyle = '#000000'
      ..font = '20px Sans-Serif'
      ..textBaseline = 'top'
      ..fillText("Hello World", 195, 80);

    // image
    // With dart we can pass the src directly in the constructor.
    // Note the actual image provided in the samples differs from
    // that shown in the book.
    var helloWorldImage = ImageElement(src: 'helloworld.gif');
    helloWorldImage.onLoad.listen((_) {
      context.drawImage(helloWorldImage, 155, 110);
    });

    // box
    context
      ..strokeStyle = '#000000'
      ..strokeRect(5, 5, 490, 290);
  }
}

void main() {
  var canvasApp = CanvasApp();
  canvasApp.drawScreen();
}
