import 'package:flutter/material.dart';

class Home_geeta extends StatefulWidget {
  const Home_geeta({super.key});

  @override
  State<Home_geeta> createState() => _Home_geetaState();
}

class _Home_geetaState extends State<Home_geeta> {
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
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, '/bhagavad');
                              },
                              child: Container(
                                height: 110,
                                decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset('asset/img/1.png'),
                                    VerticalDivider(
                                      color: Colors.white30,
                                      endIndent: 5,
                                      indent: 5,
                                    ),
                                    Text(
                                      '   भागवत गीता',
                                      style: TextStyle(
                                          fontSize: 35,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, '/saar');
                              },
                              child: Container(
                                height: 110,
                                decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset('asset/img/2.png'),
                                    VerticalDivider(
                                      color: Colors.white30,
                                      endIndent: 5,
                                      indent: 5,
                                    ),
                                    Text(
                                      '   गीता सार',
                                      style: TextStyle(
                                          fontSize: 35,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: InkWell(onTap: (){
                              Navigator.pushNamed(context, '/mahatmya');
                            },
                              child: Container(
                                height: 110,
                                decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset('asset/img/4.png'),
                                    VerticalDivider(
                                      color: Colors.white30,
                                      endIndent: 5,
                                      indent: 5,
                                    ),
                                    Text(
                                      '   गीता माहात्म्य',
                                      style: TextStyle(
                                          fontSize: 35,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: InkWell(
                              onTap: (){
                                Navigator.pushNamed(context, '/aarti');
                              },
                              child: Container(
                                height: 110,
                                decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset('asset/img/3.png'),
                                    VerticalDivider(
                                      color: Colors.white30,
                                      endIndent: 5,
                                      indent: 5,
                                    ),
                                    Text(
                                      '   गीता आरती',
                                      style: TextStyle(
                                          fontSize: 35,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
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
