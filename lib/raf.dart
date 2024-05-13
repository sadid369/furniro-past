import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Builder(
          builder: (context) => Center(
            child: ElevatedButton(
              child: const Text('123'),
              onPressed: () {
                showGeneralDialog(
                  barrierDismissible: true,
                  barrierLabel: "Close",
                  context: context,
                  pageBuilder: (_, __, ___) => Stack(
                    children: [
                      Positioned(
                        top: 20,
                        right: 20,
                        child: Container(
                          width: 300,
                          height: 500,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  barrierColor: Colors.transparent,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
