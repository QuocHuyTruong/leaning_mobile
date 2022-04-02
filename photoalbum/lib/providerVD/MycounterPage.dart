import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photoalbum/providerVD/MychangeNotifier.dart';
import 'package:provider/provider.dart';

class MycounterPage extends StatelessWidget {
  const MycounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("demo"),
      ),
      floatingActionButton: IconButton(
        icon: Icon(Icons.star, color: Colors.green[500]),
        onPressed:(){
          var provider=context.read<Counter>();
          provider.increament();
        },
      ),
      body: Center(
        child: Column(
          children: [
            Text("so lan ban bam button"),
            Text("0", style: TextStyle(fontSize: 40),),
            Consumer<Counter>(
                builder: (context, counter, child) {
                  return Text("${counter.value}");
                },
            )
          ],
        ),
      ),
    );
  }
}
