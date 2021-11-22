import 'package:flutter/material.dart';

class anasayfa extends StatefulWidget {
  const anasayfa({Key? key}) : super(key: key);

  @override
  _anasayfaState createState() => _anasayfaState();
}

class _anasayfaState extends State<anasayfa> {
  late num sayi1, sayi2, sonuc=0;
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  topla() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 + sayi2;
    });
  }

  cikar() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 - sayi2;
    });
  }

  carp() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 * sayi2;
    });
  }

  bol() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 / sayi2;
    });
  }
  temizle(){
    setState(() {
      t1.text=0.toString();
      t2.text=0.toString();
      sonuc=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        child: Center(
          child: Column(
            children: [
              TextField(
                autofocus: true,
                controller: t1,
              ),
              TextField(
                controller: t2,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(sonuc.toString()),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: topla, child: Text("Topla")),
                  SizedBox(width: 10.0,),
                  ElevatedButton(onPressed: cikar, child: Text("Çıkar")),
                  SizedBox(width: 10.0,),
                  ElevatedButton(onPressed: carp, child: Text("Çarp")),
                  SizedBox(width: 10.0,),
                  ElevatedButton(onPressed: bol, child: Text("Böl")),
                ],
              ),
              ElevatedButton(onPressed:temizle, child:Text("Temizle"),style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.red)),),
            ],
          ),
        ),
      ),
    );
  }
}
