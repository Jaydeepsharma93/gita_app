import 'package:flutter/material.dart';
import 'package:gita_app/utils/gitalist.dart';
import 'package:gita_app/view/screen_2/shlok.dart';

class Bhagavad_geeta extends StatefulWidget {
  const Bhagavad_geeta({super.key});

  @override
  State<Bhagavad_geeta> createState() => _Bhagavad_geetaState();
}

class _Bhagavad_geetaState extends State<Bhagavad_geeta> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery
        .of(context)
        .size
        .height;
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
                  padding:
                  const EdgeInsets.only(bottom: 80, left: 15, right: 15),
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 40),
                      child: Column(
                          children: List.generate(data[0]['chapters'].length, (
                              index) => titleBox(index))
                      ),
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

  int count = 0;

  titleBox(int index) {
    if (count == 6) {
      count = 0;
    }
    count++;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: () {
          chapterIndex = index;
          Navigator.pushNamed(context, '/shlok');
        },
        child: Container(
          height: 90,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            children: [
              Image.asset('asset/img/$count.png'),
              VerticalDivider(
                color: Colors.white54,
                endIndent: 5,
                indent: 5,
              ),
              Expanded(child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(data[0]['chapters'][index]['id']),
                    Text(
                      data[0]['chapters'][index]['name'],
                      style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
