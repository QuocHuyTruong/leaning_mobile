
import 'package:flutter/material.dart';

List<String> trai =["nho","mam","saurieng"];


class Demo1 extends StatefulWidget {
  const Demo1({Key? key}) : super(key: key);

  @override
  State<Demo1> createState() => _Demo1State();
}

class _Demo1State extends State<Demo1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chichi'),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              leading: const Icon(Icons.card_giftcard),
              title: Text(trai[index]),
              subtitle: const Text('cuahang traicay'),
            );
          },
          separatorBuilder: (context, index)=>const Divider(thickness: 2,),
          itemCount: trai.length),
      );
  }
}
