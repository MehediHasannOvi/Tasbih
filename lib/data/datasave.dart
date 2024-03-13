import 'package:hive/hive.dart';

var box = Hive.box("tasbih");

// hare Save Count Data On Local Data Base

Future saveCount(int count) async {
 await box.put("Count", count);
}

// hare Get Count Data From Local Data Base

getCount(){
 return box.get("Count",defaultValue: 0);
}

// hare Delete Count Data From Local Data Base

Future deleteCount() async {
 await box.delete("Count");
}