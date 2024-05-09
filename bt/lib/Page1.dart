import 'package:bt/Page2.dart';
import 'package:bt/main.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
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
                                "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAATcAAACiCAMAAAATIHpEAAAA81BMVEX///8YHjJyZvkAACAWHjSlpqwUGC8wMkL///0PFCwYHTL3+Pl8f4YYHjAAABUADiYAABwAACI9QE20t7kAABivsbYcIjNRVF8AABri5Ob18v1xZO8AABH6+f8AACRyZvcAAAB2a+7s7vAACygIEyjKzNDV19xzZf1naXMAAAvb3uJdX2uRlJsIDykADyWHi5Smnu5pW/QlKTu8v8U4O0yMk5lvc3s8QEovND9TV1+Ag4tLTFteY25SU2aorbGfoKcgJD0sL0UREzDf3POalO3p5fqVjO6uqPC/uvJ9ce3RyvWEfurV0vaGd+qQiO7Cu/GspfBS6+xyAAAOqUlEQVR4nO2dDXuayBbHQZDIIIgRqyZEW/A1kVpDrr2rubXbl2232+3u9/80d0BNYOaACIN2V/7Ps3m6CQzjj5lzZs6cGTmuUKFChQoVKlSoUKFChQoVKlSoUKFChQr9y6V0sCzL+9HZ/NPqWFwlW6EV/34Fl6X4/ws91rKszROfZGV7aGLt6lWpZPiYjZc6Ke2ey1Ii54Oy1ndiV+9KrXUHumJNP9bgMz0zoZTm+N4WBPlhNsxUTkPnEULef/4PnueRfJm1vXFKtS3IXplI7hpjoCGVBURKusj40CRaO3UHIRHxkq1dDsGukEyNuscqJCkzt4HcDZTn6C51RVkQqcfmz8160HlVVbcPlCfT9ODy4OaacqhQNGmSl5yEW8fuP1Pz6qVVU5eVA7ehGaycr8mAKPL43CqcgmSiYqo5TVtcDtwuZJUEhxwlfM0p2tvY9p8jBj/wJK13YMwNO2Js8nmqwdX/E77uBNyGGqK5yauUn7UhkPXP1t4q3IVElYgbnBpucCfgtrCBevHabbrSWHPjbjWoeqIxCF11fG4Kgt4n301p4RoCY/vWpF8EUL/jc+u0qSd6cu7SFcfcL0zrUPWQswhddXxugzb4PuW36Ypjzm0JmhHkjENXHZ+bC/cD6b/pimNu32YgN/7k7c3VYW5p2xtrbmX4vdoz4qpjcxsa5NjIl/xLuuKYcxsYIDdijnp8bpZNGST/fS7TFcfcvt3IPPRihXBQ5ATjt5YMcSPGR4nFfp61rAHcCLdwCm5uG2hw0n3K0pj3U84SeIoJIoflp5ifPsgkOFE0qEhNQrHnxjVNskTVmJ48HoI9w4SaMdgpR725cOOWpGtoj8nI+0nibw2TaHD2g7L/roiy8oj3Ts1+oFTV9MKDp+dW4VytH7C9or5SvGqlWp/JhRs3uNB3xkQ2+Oam1kGdhFuFu12Zzu5xXWG6+30abqzn9Vs1W4LWbrc1YfVu0xdOz83XYCxr3uKZ9jC1tguWKbmR9WfDjeOUoeu6wwgDcjJuuF63A9cdeMPJSiX9Empe3PbUKDW3zDULFZCBW7x9y/BGYpWWG1CdSvCPOVWXVgK/4DXsZrPhDhkmImTpp9agOa3etS4vV4/LtQvFuZXO7aBRni4fUy9X7dUebp3yWDQNXRB0oa2b3f9NU07nSKXl1nk3lk2jbtuOLEuyY3cFzVj5lbI6Q7e5ni1aD2Lb1AxD79ZtPeWkPYEi7ZuHrnE5qTsBrqhvG+1HevX9cKXiZq0fTFwfcrFMso2+Y2BWbaGLeUpPFRbTBjsSKMYvNN+3ZUS1RrVvCLPMPfYwbn51huNJ12dCLTLieyXvL5s0F3QcblH99PZSBwNW3gKkbVajySUyzAdzG7b8ESsCg1RPvwtz45293Bjn1eAPpoHhql39avXygQ/KNO61Fqa8yZmiUgHiVDt2e+OqhhjR2jZSkb4CE9uwpqvWaif8r1YL/1ik54ZvbNo2v6vOAdgIbu7lKiC/Wqtf0k7sYftWhYPdITl2hIOo1mWJkN1Kza3CKWMt9h1GSgxzaxoyJcSSW6sMrrlT0tYwNzqSL6fmVuE6FzVwxXi/CL8ArIijF6m50f0UN6VE1VJ5bQYVWa2x41bhhl7SWqL6UELOPm4qW26J1YbAVV9T12FuYSVubwNDOsikhVT7WbmpUFdlyW1giiI0YEumPLnBy8RJhV6SmZReP6UuS9tPbydZ3ir/+qflxiONejI7bjevwdyrxNrb3viTceMdEglDbis8GU1dMZVHRijvmS23TPbNk9EkmDDjtoZTYZJJrRnyIpS9+5NxQ7KSD7eOlr6x4VotBgQTtuO3+H6qqkiUJITiRp51YjDCilsrehipbuoWV3P7HflRj+cXkGQbmv3+Xuwa+uvIdomInBlG3Ny4uZ5sdwVBqPVjLjHJFPtjcVMd82HmdhRPt82FpEc4N9SdhcIdjLg9RPpSR+MfZ+Vmc71s1XQn4n2q8lvimUca94rmXeiNKc33AtwzsIULLpiw4eZ6ecxQV7TNgOVS3DvTgY0IMoi4w3G4yR9cKqw3ixiG6k323FZe/I/mhiaLoFXwAqx3EeESP44Yz425X1BrD9DuXTci2fOO45hyq3C3ULYaEuVueGHIf2pDl8BqaeFrj8GtfwkXOADfLaoH2wATbmB6tSjfg3uxOzxoC2vhXOwjcENS1PqBSyW3edKCpoRJPwV3K0kvFHgrtiWBm5s+hKjkH3+Ly3pd2JCtDg7hWHC7hV4PqkeF5rmhDjgHFO6oR4hbPkbfYNFUiDgRC25laNeN9i56/Qmak6nhzU35czPiNslBlieUXsyC2xiYK3j7/qPX7YCOrcqhNNTc7RvpwMPqQLNtPWAPWXCDBr16bI5FA6hWOFs8d251eL1lowp3CbzZdmCIzICbItDPQPfxq8R0agEe+lqBFpp7PzXiNk+DQwRVCDhUBtxuNdrMY98Ty20JGF5teERuSI8vDHp+vfH8dwbcBgbNTacj8iG5wEbJUNfOnZsUf8sQGMoH0x4YcHPpYQUyIgchG3WARd/QrrC87du+hKoOnUrNdwMmkQG3Jm3kUX3PR1QASy0Et8Pkzi3WnUZwC4yUGHAr6/SE/sO+jwKMj3LkBuTVPMTfcqL2Zu/LugImMkflhh1+bA2HQGIcY/sGDcYEJZ6bBfTTffaNbfytHs/NBbgJbP0ptKkb+4VYbh26b/PtoA9myi2ihnGC5o4G2/HbEPaNsdwAS420YV7coG3dwLljz6pwj8BqiBmY0TLgZgHcHDL3kNACGPcGp39suVlAwIaI94VVUYCpY2hJi8U8SwTmWf1YbgoUbgiNqJhy414ANYydMEA9O3QKB4t5PbQZXojdm1wGFo36++IhGbjd0REbEXvHiFeLf/0WaG+h7fMsuEHBKjVuL7yi0msMSN8Xf8vADTiXB4lyVHHe3lcgYNcNZpez4AYuOtfJ3ea7SuHfVqF4WI7xXsgxIN6OtHAKD6UIhQKdLLhZULwXRYfvXQNa/urntr5QwWaeHvhiEFEhuJYDpI2ikP1lsi5zBxg4JNoRgeiBAETf+H748A227Q0ISXtbdsx3YFD6DjxtKxwaY7IOCMy0sOGVnCHVVXE1XSDsxIcHlTC3DPYN6Kj+Kb4msNfEurSh7SDE6SDZuWEUygeIBDZZwD6d2QRMTUJ8+KGMuXH3lIP0d/TULwbcbi/s5vllEzzDR5VXofKYtDeuSnlU5G9dM94OQ9dx7r3u5VbGx2jy4LaOSEmStFXzeTh7O/0gRGScEf2BTX5IJyqNS54EqtVZ/2rQBtoXmV7GnJsSlQrFf+iaD4vldD1dPr6YdKNybck4J6M8LvgcT+/DynXj/rE6my3v7s16ZLaXQBoa1ty4aUzuoOTYgre9mNot+ywyX4oRt043oiF5QnLNtmvUgUdBOWSqBnNuCuTEqUeoPGRE/ITyXLjFvs79MigHwpwb14BGjeQjIriJJhl1YpZP/hC3BTZWSOxvDjQOjqUYj9883UFJH8lE7zRixg1Mrkkmsb3ppZW81k83pSv0Fr5EQt5JYPntMyqbafe0vdza3Jy5cYOXYopNnrg7XNBRf4b7s6pA7DtBtZABHRzC3r55H2SSooJ8XwbyCxlyi5jX7ZMBhiVy4cbNNPXAFifyfQFaK2HJjWvVD+4HYtuLqNP1yocbNyNP49tbP+cFmM3KlBv3eOBoRBSNKhymy4dbhVsfBg7VL+EVTbbcuOWB1fK+wwPML8yLG+fW4/btENWTvNMXweOvGHPjGkJf5ROyE71TJipwvXLqp1jWLwkGwD411EWepwdPDmPNjeusorY4UfXS7uhx2075ceO4d3I3CTnHWO6O1KQryJwbvtxJUi1Ul5rbVIOE3LLOF55lzYS9O1Jr2jgucTolNxTDjbOWQn3PwQ6o253FUsiVG67iFOnRdg5JgrCI/04WmFtYh59jZs0cvR/9RmXB8U4Ji1uZzpmbv8mua9SeTcpuOo9QX9BW5X2HmC1eaoahGRqW/wNrQn7Lwfqluf3T0zVmdJrnptcpzZYmkLFC0Ttrqq9rrWbEVppnvXtpUjJYcvPq6C4fDE2o1/qbA47kWq3entyPmwlOfiO+ZnKjFNdARTfHkqnX+v3d9xlKjq2bzt3edxn5zNQHmQHaGtWbYWNaHa8uL+4vLluLWdk/uzXbt18+PSFtxfCP28Z0ccnXNXNiCh9+fZw1h1mKPDspisW4jxU6Y2W2Bufab28+Zrvf4/bxhklV/lG6uv50la2Ez79dnyW3ee/LVaru5rv8qzfz+auz5DYqza+/prq3UlG+9Eql0ZlyG5VK89+/+f+X2E1srvv2Ct/bO1duJazR/I+PfkAt2V1+F/3+5xzfOzrX9lbaaFT67XPiuzC2jz/mvVLBzW9zb24SOQhMDbuDUam3ve/VzbG+juHnUYBbKbGDuPnSm49GT7w9bucGLsStV5q/+rb/nr+uR73AXQU3v839+T1m9oT5fPt9jgn3SttuWti3JzP3I8ZBfPxj7nfQXq+3a3MFt21vxQ4CmkHg33z+NB9tgRXcAOG5F+Bab/4ujYCLC27Bznr9F3Gl8vX6eexRcIO5eeR+/76L1ns/fHdQorkVfoEm9+MpOOe7gx7Q2Ir2RglPo+ab4Nzn33wnWnB7ljevh4z9VvPSl5urN72YK7D7Pce4JYetfQwUb+6F51RwQ9te8Ir0IOegijfZjG9OkR3U02gOjVjOQRXuamO+Umg+z7o68c+VN9TYzZ4Okz8jO8u29qzt8Oygxvbn93On5umvVweRSxRxOgN5DmKPaw1Su/56wyb359+gq0/JzNy89OZs3QGszz/2k8OziM9FSyP1Pd5BjEbzP+ICwmcqP/IR5yB2K9SFQvI3XN187UWQm7/6urmqECh/eZQydJs5VQEtUhXIQWyCSsXYI0Y+Gy/9IzCf9xJI/L07p67cz6+Ag/CC5oUSa+sg6EWaQvG6+vt6NPIWBQsdIn+p+VO6NNZCBbVChQoVKlTo59f/AVYaeNiRNV4vAAAAAElFTkSuQmCC"))),
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
                child: Text("uy> Barcha kurslar"),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Text(
                      "Mashg'ulot kurslari",
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Container(
                      width: 400,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  size: 30,
                                ),
                                Text("Joyni tanlang"),
                              ],
                            ),
                            Icon(
                              Icons.expand_more,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
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
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          "Yo'nalishlar",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text("Hammasi"),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Icon(
                        Icons.expand_more,
                        color: Color.fromARGB(255, 113, 21, 233),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          Text("Mavzular", style: TextStyle(color: Colors.grey)),
                          Text("Hammasi"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Icon(
                        Icons.expand_more,
                        color: Color.fromARGB(255, 113, 21, 233),
                      ),
                    ),
                    Column(
                      children: [
                        Text("Kurs turi", style: TextStyle(color: Colors.grey)),
                        Text("Hammasi"),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Icon(
                        Icons.expand_more,
                        color: Color.fromARGB(255, 113, 21, 233),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          Text("Ta'lim tili",
                              style: TextStyle(color: Colors.grey)),
                          Text("Hammasi"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Icon(
                        Icons.expand_more,
                        color: Color.fromARGB(255, 113, 21, 233),
                      ),
                    ),
                    Column(
                      children: [
                        Text("Saralash", style: TextStyle(color: Colors.grey)),
                        Text("Birinchi navbatda"),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Icon(
                        Icons.expand_more,
                        color: Color.fromARGB(255, 113, 21, 233),
                      ),
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
              //row       1
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 40),
                    child: Row(
                      children: [
                        Container(
                          height: 600,
                          width: 340,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(
                                  image: NetworkImage(
                                    "data:image/jpeg;base64,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",
                                  ),
                                  width: double.infinity,
                                  fit: BoxFit.fitWidth,
                                ),
                                Container(
                                  width: 100,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 113, 21, 233),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(6),
                                        bottomRight: Radius.circular(6),
                                        topRight: Radius.circular(6),
                                      )),
                                        child: Center(child: Text("Bolib-Bolib",style: TextStyle(color: Colors.white),),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                                  child: Text(
                                    "Frontend ishlab chiqish",
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Color.fromARGB(255, 113, 21, 233)),
                                  ),
                                ),
                                Text(
                                  "WEB DASTURLASH / Onlayn / 6 oy",
                                  style: TextStyle(
                                    fontSize: 19,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 40, bottom: 10),
                                  child: Text(
                                    "PROWEB",
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Narxi",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  child: Text(
                                    "9 191 250 so‘mdan",
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Bo'lib-bo'lib",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10, bottom: 20),
                                  child: Text(
                                    "oyiga 581 875 so'mdan",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Color.fromARGB(255, 113, 21, 233)),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.layers_outlined,
                                      color: Color.fromARGB(255, 113, 21, 233),
                                    ),
                                    Text("3 modul"),
                                    Icon(
                                      Icons.timer_outlined,
                                      color: Color.fromARGB(255, 113, 21, 233),
                                    ),
                                    Text("6 oy")
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 80),
                    child: Row(
                    children: [
                      Container(
                        height: 600,
                        width: 340,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image(
                                image: NetworkImage(
                                  "data:image/jpeg;base64,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",
                                ),
                                width: double.infinity,
                                fit: BoxFit.fitWidth,
                              ),
                              Container(
                                width: 100,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 113, 21, 233),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(6),
                                      bottomRight: Radius.circular(6),
                                      topRight: Radius.circular(6),
                                    )),
                                      child: Center(child: Text("Bolib-Bolib",style: TextStyle(color: Colors.white),),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20, bottom: 10),
                                child: Text(
                                  "To'liq stack",
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Color.fromARGB(255, 113, 21, 233)),
                                ),
                              ),
                              Text(
                                "Sun'iy intellekt (Kompyuterni ko'rish)",
                                style: TextStyle(
                                  fontSize: 19,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 40, bottom: 10),
                                child: Text(
                                  "Dasturchilar-klubi",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Text(
                                "Narxi",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                child: Text(
                                  "28 863 750 so‘mdan",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Text(
                                "Bo'lib-bo'lib",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10, bottom: 20),
                                child: Text(
                                  "oyiga 1 827 292 so‘mdan",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 113, 21, 233)),
                                ),
                              ),
                              Row(
                                children: [
                                  
                                  Icon(
                                    Icons.timer_outlined,
                                    color: Color.fromARGB(255, 113, 21, 233),
                                  ),
                                  Text("18 oy")
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                                  ),
                  ),
               Row(
                  children: [
                    Container(
                      height: 600,
                      width: 340,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image(
                              image: NetworkImage(
                                "data:image/jpeg;base64,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",
                              ),
                              width: double.infinity,
                              fit: BoxFit.fitWidth,
                            ),
                            Container(
                              width: 100,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 113, 21, 233),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(6),
                                    bottomRight: Radius.circular(6),
                                    topRight: Radius.circular(6),
                                  )),
                                    child: Center(child: Text("Bolib-Bolib",style: TextStyle(color: Colors.white),),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20, bottom: 10),
                              child: Text(
                                "kiberxavfsizlik",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Color.fromARGB(255, 113, 21, 233)),
                              ),
                            ),
                            Text(
                              "Kiberxavfsizlik - Onlayn",
                              style: TextStyle(
                                fontSize: 19,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 40, bottom: 10),
                              child: Text(
                                "Tramplin IT akademiyasi",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Text(
                              "Narxi",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                "4 300 000 so'mdan boshlab",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Text(
                              "Bo'lib-bo'lib",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10, bottom: 20),
                              child: Text(
                                "oyiga 272 222 so'mdan",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 113, 21, 233)),
                              ),
                            ),
                            Row(
                              children: [
                               
                                Icon(
                                  Icons.timer_outlined,
                                  color: Color.fromARGB(255, 113, 21, 233),
                                ),
                                Text("4 oy")
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                ],
              ),
           //row         2
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 40),
                    child: Row(
                      children: [
                        Container(
                          height: 600,
                          width: 340,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(
                                  image: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnHHB9DGrgP3l7u4YfaCQZxzVJObwSyt5uXg&s",
                                  ),
                                  width: double.infinity,
                                  fit: BoxFit.fitWidth,
                                ),
                                Container(
                                  width: 100,
                                  height: 30,

                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 113, 21, 233),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(6),
                                        bottomRight: Radius.circular(6),
                                        topRight: Radius.circular(6),
                                        
                                      )),
                                        child: Center(child: Text("Bolib-Bolib",style: TextStyle(color: Colors.white),),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                                  child: Text(
                                    "To'liq stack",
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Color.fromARGB(255, 113, 21, 233)),
                                  ),
                                ),
                                Text(
                                  "Veb ishlab chiqish",
                                  style: TextStyle(
                                    fontSize: 19,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 40, bottom: 10),
                                  child: Text(
                                    "Uakademiyasi",
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Narxi",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  child: Text(
                                    "3 192 750 so'mdan",
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Bo'lib-bo'lib",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10, bottom: 20),
                                  child: Text(
                                    "oyiga 202 125 so'mdan",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Color.fromARGB(255, 113, 21, 233)),
                                  ),
                                ),
                                Row(
                                  children: [
                                    
                                    Icon(
                                      Icons.timer_outlined,
                                      color: Color.fromARGB(255, 113, 21, 233),
                                    ),
                                    Text("3 oy")
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 80),
                    child: Row(
                    children: [
                      Container(
                        height: 600,
                        width: 340,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image(
                                image: NetworkImage(
                                  "data:image/jpeg;base64,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",
                                ),
                                width: double.infinity,
                                fit: BoxFit.fitWidth,
                              ),
                              Container(
                                width: 100,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 113, 21, 233),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(6),
                                      bottomRight: Radius.circular(6),
                                      topRight: Radius.circular(6),
                                    )),
                                      child: Center(child: Text("Bolib-Bolib",style: TextStyle(color: Colors.white),),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20, bottom: 10),
                                child: Text(
                                  "kiberxavfsizlik",
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Color.fromARGB(255, 113, 21, 233)),
                                ),
                              ),
                              Text(
                                "Kiberxavfsizlik",
                                style: TextStyle(
                                  fontSize: 19,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 40, bottom: 10),
                                child: Text(
                                  "Tramplin IT akademiyasi",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Text(
                                "Narxi",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                child: Text(
                                  "5 590 000 so'mdan boshlab",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Text(
                                "Bo'lib-bo'lib",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10, bottom: 20),
                                child: Text(
                                  "oyiga 353 889 so'mdan",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 113, 21, 233)),
                                ),
                              ),
                              Row(
                                children: [
                                  
                                  Icon(
                                    Icons.timer_outlined,
                                    color: Color.fromARGB(255, 113, 21, 233),
                                  ),
                                  Text("4 oy")
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                                  ),
                  ),
               Row(
                  children: [
                    Container(
                      height: 600,
                      width: 340,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image(
                              image: NetworkImage(
                                "data:image/jpeg;base64,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",
                              ),
                              width: double.infinity,
                              fit: BoxFit.fitWidth,
                            ),
                            Container(
                              width: 100,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 113, 21, 233),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(6),
                                    bottomRight: Radius.circular(6),
                                    topRight: Radius.circular(6),
                                  )),
                                  child: Center(child: Text("Bolib-Bolib",style: TextStyle(color: Colors.white),),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20, bottom: 10),
                              child: Text(
                                "To'liq stack",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Color.fromARGB(255, 113, 21, 233)),
                              ),
                            ),
                            Text(
                              "BootCamp",
                              style: TextStyle(
                                fontSize: 19,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 40, bottom: 10),
                              child: Text(
                                "IT KLASTER",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Text(
                              "Narxi",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                "13 975 000 so'mdan boshlab",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Text(
                              "Bo'lib-bo'lib",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10, bottom: 20),
                              child: Text(
                                "oyiga 884 722 so'mdan",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 113, 21, 233)),
                              ),
                            ),
                            Row(
                              children: [
                               
                                Icon(
                                  Icons.timer_outlined,
                                  color: Color.fromARGB(255, 113, 21, 233),
                                ),
                                Text("10 oy")
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                ],
              ),
           //row        3
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 40),
                    child: Row(
                      children: [
                        Container(
                          height: 600,
                          width: 340,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(
                                  image: NetworkImage(
                                    "data:image/jpeg;base64,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",
                                  ),
                                  width: double.infinity,
                                  fit: BoxFit.fitWidth,
                                ),
                                Container(
                                  width: 100,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 113, 21, 233),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(6),
                                        bottomRight: Radius.circular(6),
                                        topRight: Radius.circular(6),
                                      )),
                                        child: Center(child: Text("Bolib-Bolib",style: TextStyle(color: Colors.white),),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                                  child: Text(
                                    "3D modellashtirish",
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Color.fromARGB(255, 113, 21, 233)),
                                  ),
                                ),
                                Text(
                                  "Interer dizayni (premium)",
                                  style: TextStyle(
                                    fontSize: 19,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 40, bottom: 10),
                                  child: Text(
                                    "INTERNO MAKTAB",
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Narxi",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  child: Text(
                                    "9 594 375 so'mdan",
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Bo'lib-bo'lib",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10, bottom: 20),
                                  child: Text(
                                    "oyiga 607 396 so'mdan",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Color.fromARGB(255, 113, 21, 233)),
                                  ),
                                ),
                                Row(
                                  children: [
                                   
                                    Icon(
                                      Icons.timer_outlined,
                                      color: Color.fromARGB(255, 113, 21, 233),
                                    ),
                                    Text("3 oy")
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 80),
                    child: Row(
                    children: [
                      Container(
                        height: 600,
                        width: 340,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image(
                                image: NetworkImage(
                                  "data:image/jpeg;base64,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",
                                ),
                                width: double.infinity,
                                fit: BoxFit.fitWidth,
                              ),
                              Container(
                                width: 100,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 113, 21, 233),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(6),
                                      bottomRight: Radius.circular(6),
                                      topRight: Radius.circular(6),
                                    )),
                                      child: Center(child: Text("Bolib-Bolib",style: TextStyle(color: Colors.white),),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20, bottom: 10),
                                child: Text(
                                  "Backend ishlab chiqish",
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Color.fromARGB(255, 113, 21, 233)),
                                ),
                              ),
                              Text(
                                "Golang Backend Bootcamp",
                                style: TextStyle(
                                  fontSize: 19,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 40, bottom: 10),
                                child: Text(
                                  "Haad IT markazi",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Text(
                                "Narxi",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                child: Text(
                                  "11 825 000 so'mdan boshlab",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Text(
                                "Bo'lib-bo'lib",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10, bottom: 20),
                                child: Text(
                                  "oyiga 748 611 so'mdan",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 113, 21, 233)),
                                ),
                              ),
                              Row(
                                children: [
                                  
                                  Icon(
                                    Icons.timer_outlined,
                                    color: Color.fromARGB(255, 113, 21, 233),
                                  ),
                                  Text("5 oy")
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                                  ),
                  ),
               Row(
                  children: [
                    Container(
                      height: 600,
                      width: 340,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image(
                              image: NetworkImage(
                                "data:image/jpeg;base64,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",
                              ),
                              width: double.infinity,
                              fit: BoxFit.fitWidth,
                            ),
                            Container(
                              width: 100,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 113, 21, 233),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(6),
                                    bottomRight: Radius.circular(6),
                                    topRight: Radius.circular(6),
                                  )),
                                    child: Center(child: Text("Bolib-Bolib",style: TextStyle(color: Colors.white),),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20, bottom: 10),
                              child: Text(
                                "Dasturlash",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Color.fromARGB(255, 113, 21, 233)),
                              ),
                            ),
                            Text(
                              "Bootcamp",
                              style: TextStyle(
                                fontSize: 19,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 40, bottom: 10),
                              child: Text(
                                "IT KLASTER",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Text(
                              "Narxi",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                "21 500 000 so'mdan boshlab",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Text(
                              "Bo'lib-bo'lib",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10, bottom: 20),
                              child: Text(
                                "oyiga 1 361 111 so‘mdan",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 113, 21, 233)),
                              ),
                            ),
                            Row(
                              children: [
                                
                                Icon(
                                  Icons.timer_outlined,
                                  color: Color.fromARGB(255, 113, 21, 233),
                                ),
                                Text("10 oy")
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                ],
              )
            ,
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
   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 10),
                     child: Text("...",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                   ),
   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 10),
                     child: Text("63",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                   ),
          Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 16,)


                  ],),
                ),
              ),
            )
            
            ],
          ),
        ),
      ),
    );
  }
}
