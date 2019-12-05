/*
將 Dart 程式存在倉儲中特定目錄下, 然後以 Dartpad.github.io 呼叫的好處是, 程式開發者可以隨時在 Github 網際環境中編輯改版程式, 之後在近端改版時, 
可以將程式以 git pull 的方式拉到近端合併.
*/
// 將華氏溫度轉為攝氏溫度的公式: celsius = 5/9 ( fahrenheit − 32)
// 定義一個 celsius 轉 fahrenheit  函式
// 輸入參數 c 資料型別為 num, 表示可以是整數或浮點數
// Dart 的整數資料型別為 int: https://api.dartlang.org/stable/2.6.1/dart-core/int-class.html
// Dart 的浮點數資料型別為 double: https://api.dartlang.org/stable/2.6.1/dart-core/double-class.html
CtoF(num c){
// 將輸入的攝氏溫度參數 C 數值乘上 9 再除以 5 之後, 再加上 32, 可以得到華氏溫度
return c*9/5 + 32;
}

// 定義一個 fahrenheit 轉 celsius  函式
FtoC(num f){
// 將輸入的華氏溫度參數減 32 之後, 乘上 5 再除以 9 之後, 可以得到攝氏溫度
return (f - 32)*5/9;
}

// 每一個 Dart 程式都必須從 main() 開始執行
main() {
  // 宣告 len 整數變數, 準備設為各字串的長度
  int len;
  // 宣告 var 變數 type, 準備設為各字串最後一個字元, 可能為 C 或 F
  var type;
  // 宣告 var 變數 number, 準備設為各字串中的數字
  var number;
  List temp = ["20C", "30C", "50F", "40C", "23F"];
  // 利用重複迴圈, 逐一讀出各筆資料
  for (var data in temp) {
    //print(i);
    //print(i[2]);
    // https://api.dartlang.org/stable/2.6.1/dart-core/String/length.html
    len = data.length;
    // 取得各筆資料的最後一個字元
    //print(data[len-1]);
    type = data[len-1];
    // https://api.dartlang.org/stable/2.6.1/dart-core/Object/runtimeType.html
    // 希望取得 Dart 程式中特定物件的資料型別, 可以透過該物件的 runtimeType 屬性取得
    //print("目前 type 變數資料型別為: ${type.runtimeType}");
    // 根據溫度類別轉給對應函式進行溫度轉換
    // https://api.dartlang.org/stable/2.6.1/dart-core/String/substring.html
    number = data.substring(0, len-1);
    // https://api.dartlang.org/stable/2.6.1/dart-core/Object/runtimeType.html
    //print("目前 number 變數資料型別為: ${number.runtimeType}");
    // 由於取得的 number 為字串, 必須設法轉為數字
   // https://stackoverflow.com/questions/13167496/how-do-i-parse-a-string-into-a-number-with-dart
    number = int.parse(number);
    // https://api.dartlang.org/stable/2.6.1/dart-core/Object/runtimeType.html
    //print("目前 number 變數資料型別為: ${number.runtimeType}");
    // 之後就可以根據 type 與 number 執行各數列元素的溫度轉換
    
    if (type == "C"){
      //print("C: $type, $number");
      print("攝氏 $number 度 = 華氏 ${CtoF(number)} 度");
    }else{
      //print("F: $type, $number");
      print("華氏 $number 度 = 攝氏 ${FtoC(number)} 度");
    }
      
  } // for
} // main
