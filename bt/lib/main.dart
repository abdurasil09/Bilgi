import 'package:bt/Page1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Page1(),
    );
  }
}
class Bilgi extends StatelessWidget {
  const Bilgi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
    Row(
      children: [
         InkWell(onTap: () =>Navigator.push(context,
                         MaterialPageRoute(builder:(context) =>Page1() ,)), 
          child: Container(
            height: 50,
            width: 100,
            decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("data:image/png;base64,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"))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 28,right: 20),
          child: InkWell(onTap: () =>Navigator.push(context,
                         MaterialPageRoute(builder:(context) =>Page1() ,)),    child: Text("Kurslar")),
        ),
         InkWell(onTap: () =>Navigator.push(context,
                         MaterialPageRoute(builder:(context) =>Page1() ,)),                child: Text("O'quv markazlari")), 
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child:  InkWell(onTap: () =>Navigator.push(context,
                         MaterialPageRoute(builder:(context) =>Page1() ,)),      child: Text("Xizmat haqida")),
        ), 
         InkWell(onTap: () =>Navigator.push(context,
                         MaterialPageRoute(builder:(context) =>Page1() ,)),   child: Text("Kontaktlar")),
      ],
    ), 
Row(
  children: [
    Container(
      height: 20,
      width: 20,
      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),image: DecorationImage(image: NetworkImage("data:image/png;base64,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"),fit: BoxFit.cover)),
    ),
    Padding(
      padding: const EdgeInsets.only(left: 5,right: 28),
      child: Text("O'zbekcha"),
    ),
    Container(
      height: 50,
      width: 120,
      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Color.fromARGB(136, 216, 212, 212)),
    child: Center(child: Text("Kirish uchun",style: TextStyle(fontSize: 20,color: Colors.black),),),
    ),
    Padding(
      padding: const EdgeInsets.only(left: 20,right: 30),
      child: Container(
        height: 50,
        width: 160,
        decoration: BoxDecoration(borderRadius:BorderRadius.all(Radius.circular(10)),color: Color.fromARGB(255, 113, 21, 233)),
      child: Center(child: Text("Roʻyxatdan oʻtish",style: TextStyle(fontSize: 20,color: Colors.white),),),
      ),
    ),
  ],
)
      ],) ,),
    );
  }
}