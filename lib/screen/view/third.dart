import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/home_provider.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreen();
}

class _ThirdScreen extends State<ThirdScreen> {
  PlayStoreProvider? playStoreProviderT;
  PlayStoreProvider? playStoreProviderF;

  @override
  Widget build(BuildContext context) {
    playStoreProviderT = Provider.of<PlayStoreProvider>(context, listen: true);
    playStoreProviderF = Provider.of<PlayStoreProvider>(context, listen: false);
    int index = ModalRoute.of(context)!.settings.arguments as int;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(leading: IconButton(onPressed: () {

        }, icon: Icon(Icons.arrow_back,color: Colors.black),),
          backgroundColor: Colors.white,
          actions: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.more_vert,
                  color: Colors.black,
                ),
              ],
            ),
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Container(
                    height: 60,
                    width: 60,
                    child: Image.asset(
                      "${playStoreProviderF!.image[index]}",
                      fit: BoxFit.fill,
                    ),
                  ),
                  title: Text(
                    "${playStoreProviderF!.name[index]}",
                    style: TextStyle(fontSize: 17),
                  ),
                  subtitle: Text(
                    "${playStoreProviderF!.subtitle[index]}",
                    style: TextStyle(fontSize: 13),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 50),
                          child: Text(
                            "3.0",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                        Text(
                          "1M reviews",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 17,
                  ),
                  Container(height: 45, width: 2, color: Colors.grey),
                  SizedBox(
                    width: 17,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 25),
                        child: Text(
                          "5M+",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Text(
                        "Download",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 17,
                  ),
                  Container(
                    height: 45,
                    width: 2,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 17,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Icon(
                          Icons.add_box,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "Rated for 4+",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                height: 30,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green.shade900,
                ),
                child: Center(
                    child: Text(
                  "Install",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 220,
                width: 320,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black),
                child: Image.asset(
                  "${playStoreProviderF!.image[index]}",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 30,
                child: ListTile(
                  title: Text(
                    "About this app",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 18),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "Match 3 candies to blast sugar...",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      height: 33,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white,
                          border: Border.all(color: Colors.grey, width: 1.5)),
                      child: Center(child: Text("Offline")),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 33,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white,
                          border: Border.all(color: Colors.grey, width: 1.5)),
                      child: Center(child: Text("Puzzle")),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 33,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white,
                          border: Border.all(color: Colors.grey, width: 1.5)),
                      child: Center(child: Text("#2 top free in casual")),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 60,
                width: double.infinity,
                child: ListTile(
                  title: Text(
                    "Ratings & Reviews",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          "5.0",
                          style: TextStyle(
                              fontSize: 57,
                              fontWeight: FontWeight.bold,
                              color: Colors.green.shade900),
                        ),
                        Text(
                          "⭐⭐⭐⭐⭐",
                          style: TextStyle(color: Colors.yellow, fontSize: 40),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 80,
                      width: 280,
                      child: Column(
                        children: [
                          Container(
                            height: 10,
                            width: 170,
                            decoration: BoxDecoration(
                                color: Colors.green.shade900,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(right: 40),
                            child: Container(
                              height: 10,
                              width: 130,
                              decoration: BoxDecoration(
                                  color: Colors.green.shade900,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(right: 90),
                            child: Container(
                              height: 10,
                              width: 80,
                              decoration: BoxDecoration(
                                  color: Colors.green.shade900,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(right: 120),
                            child: Container(
                              height: 10,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.green.shade900,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    Container(
                      height: 80,
                      width: 300,
                      child: Column(
                        children: [
                          Container(
                            height: 10,
                            width: 190,
                            decoration: BoxDecoration(
                                color: Colors.green.shade900,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(right: 40),
                            child: Container(
                              height: 10,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: Colors.green.shade900,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(right: 90),
                            child: Container(
                              height: 10,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.green.shade900,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(right: 120),
                            child: Container(
                              height: 10,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: Colors.green.shade900,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
