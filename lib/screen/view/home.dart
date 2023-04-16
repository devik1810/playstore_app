import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

import '../provider/home_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PlayStoreProvider? playStoreProviderT;
  PlayStoreProvider? playStoreProviderF;
  @override
  Widget build(BuildContext context) {
    playStoreProviderT=Provider.of<PlayStoreProvider>(context,listen: true);
    playStoreProviderF=Provider.of<PlayStoreProvider>(context,listen: false);
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                ListTile(
                  leading: Text("Network App",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black)),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 80,width: 80,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                          child: Image.asset("assets/images/7.jpg"),
                        ),
                        SizedBox(height: 5,),
                        Text("Instagram",style: TextStyle(fontSize: 14,color: Colors.black),),
                        Text("Social-Networking",style: TextStyle(fontSize: 12,color: Colors.black),),
                      ],
                    ),
                    SizedBox(width: 13),
                    Column(
                      children: [
                        Container(
                          height: 80,width: 80,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                          child: Image.asset("assets/images/8.jpg"),
                        ),
                        SizedBox(height: 5,),
                        Text("SnapChat",style: TextStyle(fontSize: 14,color: Colors.black),),
                        Text("Communication-Social-Networking",style: TextStyle(fontSize: 12,color: Colors.black),),
                      ],
                    ),
                    SizedBox(width: 13),
                    Column(
                      children: [
                        Container(
                          height: 80,width: 80,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                          child: Image.asset("assets/images/9.jpg"),
                        ),
                        SizedBox(height: 5,),
                        Text("Whatshap",style: TextStyle(fontSize: 14,color: Colors.black),),
                        Text("Communication-Videochat",style: TextStyle(fontSize: 12,color: Colors.black),),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: 10,),
                ListTile(
                  leading: Text("Music App",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black)),
                ),
                SizedBox(height: 12,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 80,width: 80,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                          child: Image.asset("assets/images/12.jpg"),
                        ),
                        SizedBox(height: 5,),
                        Text("Gaana",style: TextStyle(fontSize: 14,color: Colors.black),),
                        Text("Music-Audio",style: TextStyle(fontSize: 12,color: Colors.black),),
                      ],
                    ),
                    SizedBox(width: 16),
                    Column(
                      children: [
                        Container(
                          height: 80,width: 80,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                          child: Image.asset("assets/images/11.jpg"),
                        ),
                        SizedBox(height: 5,),
                        Text("Resso",style: TextStyle(fontSize: 14,color: Colors.black),),
                        Text("Music-Audio",style: TextStyle(fontSize: 12,color: Colors.black),),
                      ],
                    ),
                    SizedBox(width: 16),
                    Column(
                      children: [
                        Container(
                          height: 80,width: 80,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                          child: Image.asset("assets/images/10.jpg"),
                        ),
                        SizedBox(height: 5,),
                        Text("Spotify",style: TextStyle(fontSize: 14,color: Colors.black),),
                        Text("Music-Audio",style: TextStyle(fontSize: 12,color: Colors.black),),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: 10,),
                ListTile(
                  leading: Text("Games app",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black)),
                ),
                SizedBox(height: 12,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 80,width: 80,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                          child: Image.asset("assets/images/1.jpg"),
                        ),
                        SizedBox(height: 5,),
                        Text("Ludo King",style: TextStyle(fontSize: 14,color: Colors.black),),
                        Text("Gaming-Fun",style: TextStyle(fontSize: 12,color: Colors.black),),
                      ],
                    ),
                    SizedBox(width: 16),
                    Column(
                      children: [
                        Container(
                          height: 80,width: 80,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                          child: Image.asset("assets/images/3.jpg"),
                        ),
                        SizedBox(height: 5,),
                        Text("Hill Climb Racing",style: TextStyle(fontSize: 14,color: Colors.black),),
                        Text("Gaming-Fun",style: TextStyle(fontSize: 12,color: Colors.black),),
                      ],
                    ),
                    SizedBox(width: 16),
                    Column(
                      children: [
                        Container(
                          height: 80,width: 80,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                          child: Image.asset("assets/images/5.jpg"),
                        ),
                        SizedBox(height: 5,),
                        Text("Mini Militia",style: TextStyle(fontSize: 14,color: Colors.black),),
                        Text("Entertainment-Gaming",style: TextStyle(fontSize: 12,color: Colors.black),),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}