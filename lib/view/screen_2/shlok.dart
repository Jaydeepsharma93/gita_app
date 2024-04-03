import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share_extend/share_extend.dart';
import 'package:gita_app/utils/gitalist.dart';

class Shlok extends StatefulWidget {
  const Shlok({super.key});

  @override
  State<Shlok> createState() => _ShlokState();
}

int chapterIndex = 0;

class _ShlokState extends State<Shlok> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('श्रीमद भागवत गीता', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'asset/img/bg.jpg',
              ),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: Image.asset(
                    'asset/img/geeta.png',
                    height: height * 0.2,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 120),
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      child: Column(
                          children: List.generate(
                              data[0]['chapters'][chapterIndex]['shloks']
                                  .length,
                              (index) => titleBox(index))),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  titleBox(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            if(index==0)
            Text(
              data[0]['chapters'][chapterIndex]['id'],
            ),
            SizedBox(height: 5),
            if(index==0)
            Text(
              data[0]['chapters'][chapterIndex]['name'],
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 46, vertical: 10),
              child: Text(
                  data[0]['chapters'][chapterIndex]['shloks'][index]['shlok'],
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 21)),
            ),
            Divider(color: Colors.white54,
              endIndent: 20,
              indent: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 46, vertical: 10),
              child: Text(
                  data[0]['chapters'][chapterIndex]['shloks'][index]['meaning'],
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 21)),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 TextButton(onPressed: () {
                   Clipboard.setData(ClipboardData(text: "${data[0]['chapters'][chapterIndex]['shloks'][index]['shlok']}${data[0]['chapters'][chapterIndex]['shloks'][index]['meaning']}"));
                 }, child: Text("Copy",style: TextStyle(
                   color: Colors.white,
                   fontWeight: FontWeight.bold,
                   fontSize: 20
                 ))),
                  TextButton(onPressed: () {
                    ShareExtend.share("${data[0]['chapters'][chapterIndex]['shloks'][index]['shlok']}${data[0]['chapters'][chapterIndex]['shloks'][index]['meaning']}", 'text');
                  }, child: Text("Share",style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
