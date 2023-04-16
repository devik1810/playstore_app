import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/home_provider.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => SecondScreenState();
}

class SecondScreenState extends State<SecondScreen> {
  PlayStoreProvider? playStoreProviderT;
  PlayStoreProvider? playStoreProviderF;
  @override
  Widget build(BuildContext context) {
    playStoreProviderT = Provider.of<PlayStoreProvider>(context,listen: true);
    playStoreProviderF = Provider.of<PlayStoreProvider>(context,listen: false);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'detail',arguments: index);
                  },
                  child: ListTile(
                    leading: Container(
                      height: 70,width: 55,decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),),
                      child: Image.asset("${playStoreProviderT!.image[index]}",fit: BoxFit.cover,),
                    ),
                    title: Text("${playStoreProviderF!.name[index]}"),
                    subtitle: Text("${playStoreProviderF!.subtitle[index]}"),
                  ),
                );
              },itemCount: playStoreProviderT!.image.length,),
            ),
          ],
        ),
      ),
    );
  }
}