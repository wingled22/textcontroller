import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _num1Controller = TextEditingController();
  final TextEditingController _num2Controller = TextEditingController();
  String _result = '0';

  void _addNumbers() {
    double num1 = double.tryParse(_num1Controller.text) ?? 0.0;
    double num2 = double.tryParse(_num2Controller.text) ?? 0.0;
    setState(() {
      _result = (num1 + num2).toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange.shade300,
        title: const Text('Simple Add App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 20.0),
            Text(
              'Result: $_result',
              style: const TextStyle(fontSize: 24),
            ),
             TextField(
              controller: _num1Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Enter First number',
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: _num2Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Enter second number',
              ),
            ),
            const SizedBox(height: 20.0),
            GestureDetector(
              onTap: _addNumbers,
              child: const Text('Add'),
            ),
            
          ],
        ),
      ),
    );
  }

}
