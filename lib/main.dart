import 'package:flutter/material.dart';

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
        fontFamily: "Pretendard"
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

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;


  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 45, end: 930).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
            const Text(
              "가나다라마바사아자차카타파하",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w100,
              ),
            ),
            const Text(
              "가나다라마바사아자차카타파하",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w200,
              ),
            ),
            const Text(
              "가나다라마바사아자차카타파하",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w300,
              ),
            ),
            const Text(
              "가나다라마바사아자차카타파하",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Text(
              "가나다라마바사아자차카타파하",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Text(
              "가나다라마바사아자차카타파하",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Text(
              "가나다라마바사아자차카타파하",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Text(
              "가나다라마바사아자차카타파하",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w800,
              ),
            ),
            const Text(
              "가나다라마바사아자차카타파하",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            ),
            AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                return Text(
                  "가나다라마바사아자차카타파하",
                  style: TextStyle(
                    fontFamily: 'PretendardVariable',
                    fontVariations: <FontVariation>[
                      FontVariation('wght', _animation.value),
                    ],
                    fontSize: 30,
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
