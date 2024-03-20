import 'package:flutter/material.dart';
import 'package:gita_app/utils/gitalist.dart';

class Geeta_saar extends StatefulWidget {
  const Geeta_saar({super.key});

  @override
  State<Geeta_saar> createState() => _Geeta_saarState();
}

class _Geeta_saarState extends State<Geeta_saar> {
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
                            data[1]['chapters'].length, (index) => titleBox(index))
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
}
titleBox(int index){
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
          SizedBox(height:30),
          Text(data[1]['chapters'][index]['id']),
          SizedBox(height:5),
          Text(
            data[1]['chapters'][index]['name'],
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w400),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 46, vertical: 20),
            child: Text(
                data[1]['chapters'][index]['meaning'],
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 21)),
          ),
          Container(
            height: 15,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
          )
        ],
      ),
    ),
  );
}