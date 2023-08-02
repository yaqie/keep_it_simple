import 'package:flutter/material.dart';
import 'package:keep_it_simple/keep_it_simple.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Row(
              children: [
                Text('hallo'),
                AddWidth(10),
                Text('hallo2'),
              ],
            ),
            const AddHeight(10),
            GestureDetector(
              onTap: () {
                snackBar(context, text: 'Hallo');
              },
              child: Corner(
                corner: 10,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return const PreviewImage(
                      iconBackColor: Colors.white,
                      bgColor: Colors.green,
                      appBarColor: Colors.red,
                      image:
                          'https://docs.flutter.dev/assets/images/shared/brand/flutter/logo/flutter-lockup.png',
                    );
                  }));
                },
                child: const Text('click to preview')),
            const SimpleShimmer(),
            Text(rupiah(1000).toString())
          ],
        ),
      ),
    );
  }
}
