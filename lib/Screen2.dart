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
            Expanded(
              child: ListView.builder(
                  itemCount: widget.numberList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                        title: Text(widget.numberList[index].toString()));
                  }),
            ),
            ElevatedButton(
                onPressed: () {}, child: const Text('Go to Next Screen')),
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
