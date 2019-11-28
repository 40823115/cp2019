main(){
  List temp = ["20C", "30C", "50F", "40C", "23F"];
  for (var i in temp) {
    //print(i);
    //print(i[2]);
    if (i[2] == "C") print(i[0] + i[1]);
  } // for
}