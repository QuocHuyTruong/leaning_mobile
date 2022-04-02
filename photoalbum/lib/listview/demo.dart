import 'package:flutter/material.dart';


class Demo extends StatelessWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chichi'),
      ),
      body: GridView.extent(
        maxCrossAxisExtent:150,
        padding: const EdgeInsets.all(5),
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        children: List.generate(100,
                (index) => Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue)
              ),
              child: Center(
                child: Text("${index+1}",
                  style:const TextStyle(fontSize: 20),),
              ),
            )
        ),
      ),
    );
  }
}
