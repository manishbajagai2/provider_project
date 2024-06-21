import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project/number_state.dart';
import 'package:provider_project/screen_2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberState>(
      builder: (context, value, child) => Scaffold(
          appBar: AppBar(
            title: const Text(
              'Provider State Management in Screen 1',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            backgroundColor: Colors.deepPurple,
          ),
          body: Column(
            children: [
              const SizedBox(
                height: 12,
              ),
              Text('Last element is: ${value.numberList.last.toString()}'),
              Expanded(
                child: ListView.builder(
                    itemCount: value.numberList.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                          title: Text(value.numberList[index].toString()));
                    }),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const Screen2()));
                  },
                  child: const Text('Go to Next Screen')),
              const SizedBox(
                height: 16,
              )
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              value.addOne();
            },
            child: const Icon(Icons.add),
          )),
    );
  }
}
