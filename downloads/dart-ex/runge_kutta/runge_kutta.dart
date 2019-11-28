// 下列 Dart 程式, 利用 Runge Kutta 迭代運算法, 解常微分方程式
// 設 t 為時間, x 則設為物體的位移
// dx / dt = (t - x)/2, 起始值 t0=0, x0=1, 求 t=2 時的 x 值
//
// 已知起始值 t0 與 x0 後, 可以利用下列 rungeKutta 函式, 以
// h 為每步階增量值, 求 dxdt 常微分方程式任一 t 的對應值 x
// 定義函式 rungeKutta, 共有四個輸入變數
rungeKutta(t0, x0, t, h) {
  // 利用步階增量值 h 與 t 的起始及終點值
  // 計算需要迭代的次數 n
  int n = ((t - t0) / h).toInt();
  // 宣告 x 為雙浮點數, 且設為起始值 x0
  double x = x0;
  // 利用已知的 t0, x0, t 終點值與步階增量值 h, 迭代求 x 對應值
  // 索引值 i 將每次增量 1, 從 i=1 執行 for 環圈至 i=n
  for (int i = 1; i <= n; i++) {
    // 將此階段的 t 與 x 值代入 dxdt 函式求下列四個浮點變數值
    double k1 = h * dxdt(t0, x);
    double k2 = h * dxdt(t0 + 0.5 * h, x + 0.5 * k1);
    double k3 = h * dxdt(t0 + 0.5 * h, x + 0.5 * k2);
    double k4 = h * dxdt(t0 + h, x + k3);
    // 利用上述四個變數值求此步階增量後的對應 x 值
    x = x + (1.0 / 6.0) * (k1 + 2 * k2 + 2 * k3 + k4);
    // 每次 for 迴圈執行最後, 準備計算下一個步階增量後的 x 對應值
    // t 起始值配合步階增量值 h, 進行增量
    t0 = t0 + h;
  }
  // 完成 for 迴圈迭代後, 傳回與 t 終點值對應的 x 值
  return x;
}

// 將微分方程式 "dx / dt = (t - x)/2" 定義為 dxdt 函式
dxdt(t, x) {
  return ((t - x) / 2);
}

// 定義 main() 主函式內容, 目的在利用 rungeKutta 函式
// 解常微分方程式
main() {
// Driver method
// num 資料型別可以是整數或雙浮點數
  num t0 = 0;
  num x = 1;
  num t = 2;
  double h = 0.2;
  print('The value of x at t=$t is: ${rungeKutta(t0, x, t, h)}');
}
