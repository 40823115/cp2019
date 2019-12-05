/*
void main() {
 print("Hello, World!");
}
*/

/*
 * 主函式也可以利用 => 定義單行的函式內容
main() => print("Hello, World!");
*/

/*
import 'dart:math' as math;

void main() {
  var n = 0; // °F
  print("The °F increases as:\n");
  for (int temperatures = 0; temperatures <= 10; temperatures++) {
    n =(temperatures*1.8+32).round().toInt();
    print("Count $temperatures temperatures:\t $n temperatures");
  }
}
*/

/*
import 'dart:math' as math;

int temperatures = 0;
const int NO_temperatures = 10;

void main() {
  print("The °F increases as:\n");
  for (int temperatures = 0) {
    temperaturesCount = calculatetemperatures(temperatures);
    print("Count $temperatures temperatures:\t $temperaturesCount temperatures");
  }
}

int calculatetemperatures(int temperatures) {
  return(temperatures*1.8+32)
      .round()
      .toInt();
}
*/

import "dart:html";


void main() {
  querySelector("#submit").onClick.listen((e) => calctemperatures());
}

calctemperatures() {
  // binding variables to html elements:
  InputElement temperaturesInput = querySelector("#temperatures");
  LabelElement output = querySelector("#output");
  // getting input
  String temperaturesString = temperaturesInput.value;
  int temperatures = int.parse(temperaturesString);
  // calculating and setting output:
  output.innerHtml = "${calculatetemperatures(temperatures)}";
}

int calculatetemperatures(int temperatures) {
  return (temperatures*1.8+32)
      .round()
      .toInt();
}

/*
html

temperatures<input type="number" id="temperatures" value="0" min="0" max="100"> 
°C
<input type="button" id="submit" value="Calculate"/>
<br/>°F: <label id="output"></label>

css

body {
  color: white;
  font-size: 50px;
}

input, select, textarea {
font-size: 100%;
}
*/
/*
import 'dart:html';

InputElement task;
UListElement list;

main() {
  task = querySelector('#task');
  list = querySelector('#list');
  task.onChange.listen((e) => addItem());
}

void addItem() {
  var newTask = LIElement();
  newTask.text = task.value;
  task.value = '';
  list.children.add(newTask);
}
*/

/*
html
  
  <input id="task" type="text" placeholder=
  "What do you want to do?"/>
  <ul id="list"/>
  
css

body {
  color: white;
  font-size: 50px;
}

input, select, textarea {
font-size: 100%;
}
*/
