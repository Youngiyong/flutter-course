import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int number = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('홈'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.red,
                width: 100,
                height: 100,
              ),
              SizedBox(height: 30,),
              Container(height: 30,),
              Text(
                '숫자',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 40,
                ),
              ),
              Text(
                '$number',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 70,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print('ElevatedButton');
                },
                child: Text('ElevatedButton'),
              ),
              TextButton(
                onPressed: () {
                  print('TextButton');
                },
                child: Text('TextButton'),
              ),
              OutlinedButton(
                onPressed: () {
                  print('OutlineButton');
                },
                child: Text('OutlineButton'),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: '글자',
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (text) {
                        print(text);
                      },
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('login'),
                    ),
                  ),
                ],
              ),
              Image.network(
                'https://d22b51gh5o1q1e.cloudfront.net/bundle/c2d71811-6189-4505-9ff3-8bfd5e85029a.webp?s=436x436&t=crop&q=100&f=webp',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
              Container(
                color: Colors.red,
                width: 120,
                height: 120,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/pic.jpg',
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            number++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
