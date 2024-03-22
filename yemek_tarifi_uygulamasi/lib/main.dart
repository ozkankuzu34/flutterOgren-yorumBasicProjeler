import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Yemek Tarifi'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    var ekranBilgisi=MediaQuery.of(context);
    final double ekranYuksekligi=ekranBilgisi.size.height;
    final double ekranGenisligi=ekranBilgisi.size.width;


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(widget.title),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                width: ekranGenisligi,
                child: Image.asset("resimler/yemekresim.jpeg")
            ),
            Row(
              children: [
                Expanded(
        
                  child: SizedBox(
                    height: ekranGenisligi/8,
                    child: TextButton(
                      child: Yazi("Beğen",ekranGenisligi/25),
                      onPressed: (){
                        print("Beğenildi");
                      },
                      style: TextButton.styleFrom(backgroundColor: Colors.orange),
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: ekranGenisligi/8,
                    child: TextButton(
                      child: Yazi("Yorum Yap",ekranGenisligi/25),
                      onPressed: (){
                        print("Yorum Yapıldı");
                      },
                      style: TextButton.styleFrom(backgroundColor: Colors.deepOrangeAccent),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding:  EdgeInsets.all(ekranYuksekligi/100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Köfte",style: TextStyle(color: Colors.deepOrangeAccent,fontWeight: FontWeight.bold,
                  fontSize:   ekranGenisligi/20,),
                  ),
                  Row(
                    children: [
                      Yazi("Izgara Üzerinde Pişirme Uygun", ekranGenisligi/25),
                      Spacer(),
                      Yazi("8 Ağustos", ekranGenisligi/25),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.all(ekranYuksekligi/100),
              child: Yazi("Köfte harcını hazırlamak için, soğanları rendeleyin ve"
                "maydanozları ince ince kıyın. İsterseniz, bir diş sarımsak da,"
                "ekleyebilirsiniz."
               " Soğan, maydanoz, kıyma, yumurta, zeytinyağı ve tuzu bir kaba"
                "alıp iyice yoğurun. Bu sırada istediğiniz baharatları da ekleyerek"
                "yoğurmaya devam edin."
                "Hazırladığınız harcın üzerini streç filmle kapatarakyarım saag"
                "buzdolabında dinlendirin."
                "Ardından harçtan ceviz büyüklüğünde parçalar koparıp"
                "yuvarlayın. 1 cm olacak şekilde üzerine bastırarakyassılaştırın.", ekranGenisligi/25),
            )
          ],
        ),
      )

    );
  }
}
class Yazi extends StatelessWidget {
  String icerik;
  double yaziBoyut;


  Yazi(this.icerik, this.yaziBoyut);

  @override
  Widget build(BuildContext context) {
    return Text(icerik,style: TextStyle(fontSize: yaziBoyut),);
  }
}
