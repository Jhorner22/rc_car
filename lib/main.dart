import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RC Car Controller',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'RC Car Controller'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
      
        title: Text(widget.title),
      ),

        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: (){},
                  onLongPress: (){},
                  child: const Text('Left Wheel Forward'),
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(500, 500),
                    animationDuration: kThemeChangeDuration
                  )
                ),
                const SizedBox(height: 100,),
                ElevatedButton(
                  onPressed: (){},
                  onLongPress: (){},
                  child: const Text('Left Wheel Backwards'),
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(500, 500),
                    animationDuration: kThemeChangeDuration
                  )
                )
              ],
            ),
            const SizedBox(width: 100,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: (){},
                  onLongPress: (){},
                  child: const Text('Right Wheel Forward'),
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(500, 500),
                    animationDuration: kThemeChangeDuration
                  )
                  ),
                const SizedBox(height: 100,),
                ElevatedButton(
                  onPressed: (){},
                  onLongPress: (){},
                  child: const Text('Right Wheel Backwards'),
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(500, 500),
                    animationDuration: kThemeChangeDuration
                  )
                )
              ],
            )
          ],
        ), 
    );
  }
}