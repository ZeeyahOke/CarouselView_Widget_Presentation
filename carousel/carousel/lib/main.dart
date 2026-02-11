import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              const Text('My Carousel', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 240,
                child: CarouselView(
                  itemExtent: MediaQuery.sizeOf(context).width - 32,
                  itemSnapping: true,
                  elevation: 4,
                  padding: const EdgeInsets.all(8),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                  children: List.generate(10, (int index) {
                    return Container(
                      color: Colors.grey,
                      child: Image.network(
                        'https://picsum.photos/400?random=$index',
                        fit: BoxFit.cover,
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
