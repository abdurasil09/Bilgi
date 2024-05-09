import 'package:bt/Page1.dart';
import 'package:bt/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Bilgi(),
                      )),
                  child: Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "data:image/png;base64,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"))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 28, right: 20),
                  child: InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Page1(),
                          )),
                      child: Text("Kurslar")),
                ),
                InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Page2(),
                        )),
                    child: Text("O'quv markazlari")),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Bilgi(),
                          )),
                      child: Text("Xizmat haqida")),
                ),
                InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Bilgi(),
                        )),
                    child: Text("Kontaktlar")),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                          image: NetworkImage(
                              "data:image/png;base64,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"),
                          fit: BoxFit.cover)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 28),
                  child: Text("O'zbekcha"),
                ),
                Container(
                  height: 50,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromARGB(136, 216, 212, 212)),
                  child: Center(
                    child: Text(
                      "Kirish uchun",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 30),
                  child: Container(
                    height: 50,
                    width: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color.fromARGB(255, 113, 21, 233)),
                    child: Center(
                      child: Text(
                        "Roʻyxatdan oʻtish",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      body: Container(
        color: Color.fromARGB(255, 241, 239, 239),
       
          
            child: SingleChildScrollView(scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Text("uy> O'quv markazlari"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Text(
                          "O'quv markazlari",
                          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                        ),
                      ),
                     
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 40,
                        width: 400,
                        child: TextField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.search),
                              hintText: 'Qidirish uchun matnni kiriting',
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)))),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Shahar",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text("Hammasi"),
                            ],
                          ),
                          
                          Row(
                            children: [
                              Column(
                                children: [
                                  Column(
                                    children: [
                                      Text("Saralash", style: TextStyle(color: Colors.grey)),
                                      Text("Hammasi"),
                                    ],
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Icon(
                                  Icons.expand_more,
                                  color: Color.fromARGB(255, 113, 21, 233),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 113, 21, 233),
                                borderRadius: BorderRadius.all(Radius.circular(10))),
                            child: Center(
                              child: Text(
                                "Toping",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                      Container(
                        width: 280,
                        height: 300,
                        
                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: Colors.white),
                        child: Column(children: [
                          Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3qRFLDW9IrDC32_2awqZ1saNFdorMoBVGa70SBvLL7w&s"),fit: BoxFit.fitWidth,),
                          Center(child: Padding(
                            padding: const EdgeInsets.only(right: 160,top: 30),
                            child: Text("MIKROLAR",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                          ))
                        ],),
                      ),
                     Container(
                        width: 280,
                        height: 300,
                        
                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: Colors.white),
                        child: Column(children: [
                          Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSR1FP2b4xw4MWnBQp5KMHS3DHhn4a42so7Kq25Q5ST&s"),height: 220,fit: BoxFit.fill,),
                          Center(child: Padding(
                            padding: const EdgeInsets.only(right: 160,top: 30),
                            child: Text("TOPSKILL",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                          ))
                        ],),
                      ),
                     Container(
                        width: 280,
                        height: 300,
                        
                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: Colors.white),
                        child: Column(children: [
                          Image(image: NetworkImage("https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSJ4ZdPWKbWDTKBnGg413DiJKmHur5cwdO9IgMZCZPNAptQXrW1"),fit: BoxFit.fill,height: 220,),
                          Center(child: Padding(
                            padding: const EdgeInsets.only(right: 120,top: 30),
                            child: Text("PRIMUS MAKTABI",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                          ))
                        ],),
                      ),
                     Container(
                        width: 280,
                        height: 300,
                        
                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: Colors.white),
                        child: Column(children: [
                          Image(image: NetworkImage("data:image/jpeg;base64,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ERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQERED//2Q=="),fit: BoxFit.fitWidth,),
                          Center(child: Padding(
                            padding: const EdgeInsets.only(right: 160,top: 30),
                            child: Text("MIKROLAR",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                          ))
                        ],),
                      ),
                    
                    ],),
                  ),
                  //row 2
              Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    Container(
                      width: 280,
                      height: 300,
                      
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: Colors.white),
                      child: Column(children: [
                        Image(image: NetworkImage("data:image/jpeg;base64,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"),fit: BoxFit.fill,height: 220,),
                        Center(child: Padding(
                          padding: const EdgeInsets.only(right: 50,top: 30),
                          child: Text("ISystem IT Akademiyasi",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                        ))
                      ],),
                    ),
               Container(
                      width: 280,
                      height: 300,
                      
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: Colors.white),
                      child: Column(children: [
                        Image(image: NetworkImage("data:image/jpeg;base64,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"),height: 220,fit: BoxFit.fill,),
                        Center(child: Padding(
                          padding: const EdgeInsets.only(right: 160,top: 30),
                          child: Text("Cresoftpro",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                        ))
                      ],),
                    ),
               Container(
                      width: 280,
                      height: 300,
                      
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: Colors.white),
                      child: Column(children: [
                        Image(image: NetworkImage("https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRbbT6T24M0qVixUfwcxw4wObsHTpLMX4QEgU68zzM5up3TLsyo"),fit: BoxFit.none,height: 220,),
                        Center(child: Padding(
                          padding: const EdgeInsets.only(right: 120,top: 30),
                          child: Text("Barqaror ta'lim",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                        ))
                      ],),
                    ),
               Container(
                      width: 280,
                      height: 300,
                      
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: Colors.white),
                      child: Column(children: [
                        Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRnB_NuPTGO9hopJAFHQOkIf8prc3VO_ki2ly5nBa-VZYuRgRo"),fit: BoxFit.fitWidth,height: 220,),
                        Center(child: Padding(
                          padding: const EdgeInsets.only(right: 80,top: 30),
                          child: Text("SUSYS akademiyasi",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                        ))
                      ],),
                    ),
              
                  ],),
             //row   3
Padding(
  padding: const EdgeInsets.symmetric(vertical: 30),
  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                      Container(
                        width: 280,
                        height: 300,
                        
                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: Colors.white),
                        child: Column(children: [
                          Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSptGlATlL5U0w3BXKx-ZGuaAjSYb16icQbZPsN8o4PTW0OJn31"),fit: BoxFit.fill,height: 220,),
                          Center(child: Padding(
                            padding: const EdgeInsets.only(right: 50,top: 30),
                            child: Text("Virtual guruh",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                          ))
                        ],),
                      ),
                 Container(
                        width: 280,
                        height: 300,
                        
                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: Colors.white),
                        child: Column(children: [
                          Image(image: NetworkImage("https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQaJsED4rIz6dax1UDGzt2Brsps5PxTJY8o0HNpNP4nWxGHm7PV"),height: 220,fit: BoxFit.fill,),
                          Center(child: Padding(
                            padding: const EdgeInsets.only(right: 100,top: 30),
                            child: Text("IT-Park Xorazm",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                          ))
                        ],),
                      ),
                 Container(
                        width: 280,
                        height: 300,
                        
                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: Colors.white),
                        child: Column(children: [
                          Image(image: NetworkImage("https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRqzTh8dQGAXG1mUX9UAnkizk93UJswWJZ3_L5gSp8W4rTP1LDS"),fit: BoxFit.none,height: 220,),
                          Center(child: Padding(
                            padding: const EdgeInsets.only(right: 10,top: 30),
                            child: Text("Fintech innovatsiyalar markazi",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                          ))
                        ],),
                      ),
                 Container(
                        width: 280,
                        height: 300,
                        
                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: Colors.white),
                        child: Column(children: [
                          Image(image: NetworkImage("https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTdRCYBuud1lCv7M8SurcTwGMbtCfJwHAfOvyBsw0Ru-Sd3Qej0"),fit: BoxFit.fitWidth,height: 220,),
                          Center(child: Padding(
                            padding: const EdgeInsets.only(right: 20,top: 30),
                            child: Text("IT PARK UNIVERSITETI UpSkill",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                          ))
                        ],),
                      ),
                
                    ],),
),
               //row  4
Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    Container(
                      width: 280,
                      height: 300,
                      
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: Colors.white),
                      child: Column(children: [
                        Image(image: NetworkImage("https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRkdsxEn1g9C6L44FSWxLHwB7lgJ4SEL1oMxRcBD65TwyF5GN0g"),fit: BoxFit.fill,height: 220,),
                        Center(child: Padding(
                          padding: const EdgeInsets.only(right: 50,top: 30),
                          child: Text("TraderOne akademiyasi",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                        ))
                      ],),
                    ),
               Container(
                      width: 280,
                      height: 300,
                      
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: Colors.white),
                      child: Column(children: [
                        Image(image: NetworkImage("https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSuKa_kSU7ifEXmNNT_Tuh1Pj0QdRxGVawo9zu3BXb_FuVp2zK4"),height: 220,fit: BoxFit.fill,),
                        Center(child: Padding(
                          padding: const EdgeInsets.only(right: 160,top: 30),
                          child: Text("DATA",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                        ))
                      ],),
                    ),
               Container(
                      width: 280,
                      height: 300,
                      
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: Colors.white),
                      child: Column(children: [
                        Image(image: NetworkImage("https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRno9ZnQYcxoemP1ycG8TlMAsqf8R5EXA6bo8Uhlpxy3hZWeP6e"),fit: BoxFit.none,height: 220,),
                        Center(child: Padding(
                          padding: const EdgeInsets.only(right: 120,top: 30),
                          child: Text("IT akademiyasi",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                        ))
                      ],),
                    ),
               Container(
                      width: 280,
                      height: 300,
                      
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: Colors.white),
                      child: Column(children: [
                        Image(image: NetworkImage("https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQvNHOtFHc9Kpkh4o-K2tg4om9zqpG0FfnhNjyPfu8BmMXiQqVt"),fit: BoxFit.fitWidth,height: 220,),
                        Center(child: Padding(
                          padding: const EdgeInsets.only(right: 80,top: 30),
                          child: Text("Akademiya Pro tarmog'i",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                        ))
                      ],),
                    ),
              
                  ],),
              
              
               Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 30,bottom: 100),
                child: Container(
                  width: 400,
                  height: 50,
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(25)),color: Colors.white),
                  child: Row(
                    
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: Color.fromARGB(255, 113, 21, 233)),
                        child: Center(child: Text("1",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),))),
                    ),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 10),
                     child: Text("2",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                   ),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 10),
                     child: Text("3",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                   ),
                      Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 10),
                     child: Text("4",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                   ),
                     Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 10),
                     child: Text("5",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                   ),
  
          Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 16,)


                  ],),
                ),
              ),
            )
              ]),
            ),
          )
      
      
    
    );
  }
}