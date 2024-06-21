import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  final List<int> numberList;
  const Screen2({super.key, required this.numberList});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Simple State Management in Screen 2',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          backgroundColor: Colors.deepPurple,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 12,
            ),
            Text('Last element is: ${widget.numberList.last.toString()}'),
            SizedBox(
              width: double.maxFinite,
              height: 600,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.numberList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text(widget.numberList[index].toString()),
                    );
                  }),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                }, child: const Text('Go to Previous Screen')),
            const SizedBox(
              height: 16,
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            int lastItem = widget.numberList.last;
            setState(() {
              widget.numberList.add(lastItem + 1);
            });
          },
          child: const Icon(Icons.add),
        ));
  }
}
