import 'package:flutter/material.dart';
import 'FoodMenu.dart';

void main() {
  var app = MyApp();
  runApp(MyApp());
}

// สร้าง wedget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.pink),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //กลุ่มข้อมูล
  List<FoodMenu> menu = [
    FoodMenu("กุ้งเผา", "500"),
    FoodMenu("กะเพราหมู", "80"),
    FoodMenu("ส้มตำ", "60"),
    FoodMenu("ผัดไท", "40")
  ];

//แสดงผลข้อมูล
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("เลือกเมนูอาหาร"),
        ),
        body: ListView.builder(
            // scoll ไปได้เรื่อยๆ
            itemCount:
                menu.length, //ระบุจำนวนรายการ ถ้าไม่ระบุมันจะไปได้เรื่อยๆ
            itemBuilder: (BuildContext context, int index) {
              FoodMenu food = menu[index];
              return ListTile(
               // leading:Image.asset(food.img) ,
                title: Text(
                  food.name,
                  style: TextStyle(fontSize: 30),
                ),
                subtitle: Text("ราคา" + food.price + "บาท"),
                onTap: (){
                  print("คุณเลือกเมนูอาหารชื่อว่า ="+ food.name);
                },
              );
            }));
  }
}
