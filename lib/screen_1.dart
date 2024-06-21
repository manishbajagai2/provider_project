import 'package:flutter/material.dart';
import 'package:provider_project/screen_2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  List<int> numberList = [1, 2, 3, 4, 5];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Simple State Management in Screen 1',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          backgroundColor: Colors.deepPurple,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 12,
            ),
            Text('Last element is: ${numberList.last.toString()}'),
            Expanded(
              child: ListView.builder(
                  itemCount: numberList.length,
                  itemBuilder: (context, index) {
                    return ListTile(title: Text(numberList[index].toString()));
                  }),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Screen2(numberList: numberList)));
                },
                child: const Text('Go to Next Screen')),
            const SizedBox(
              height: 16,
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            int lastItem = numberList.last;
            setState(() {
              numberList.add(lastItem + 1);
            });
          },
          child: const Icon(Icons.add),
        ));
  }
}
