import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project/number_state.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberState>(
      builder: (context, value, child) => Scaffold(
          appBar: AppBar(
            title: const Text(
              'Provider State Management in Screen 2',
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
              SizedBox(
                width: double.maxFinite,
                height: 600,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: value.numberList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text(value.numberList[index].toString()),
                      );
                    }),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Go to Previous Screen')),
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
