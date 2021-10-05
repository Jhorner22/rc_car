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
                  // child: const Text('Left Wheel Forward'),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Left Wheel \n Forward",
                      style: TextStyle(
                      fontSize: 50,
                      color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(500, 500),
                    animationDuration: kThemeChangeDuration,
                    primary: const Color.fromARGB(215, 255, 245, 61),
                    
                  )
                ),
                const SizedBox(height: 100,),
               ElevatedButton(
                  onPressed: (){},
                  onLongPress: (){},
                  // child: const Text('Left Wheel Forward'),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Left Wheel Backward",
                      style: TextStyle(
                      fontSize: 50,
                      color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(500, 500),
                    animationDuration: kThemeChangeDuration,
                    primary: const Color.fromARGB(215, 255, 245, 61),
                    
                  )
                ),
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
                  // child: const Text('Left Wheel Forward'),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Right Wheel \n Forward",
                      style: TextStyle(
                      fontSize: 50,
                      color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(500, 500),
                    animationDuration: kThemeChangeDuration,
                    primary: const Color.fromARGB(215, 255, 245, 61),
                    
                  )
                ),
                const SizedBox(height: 100,),
                ElevatedButton(
                  onPressed: (){},
                  onLongPress: (){},
                  // child: const Text('Left Wheel Forward'),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Right Wheel Backward",
                      style: TextStyle(
                      fontSize: 50,
                      color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(500, 500),
                    animationDuration: kThemeChangeDuration,
                    primary: const Color.fromARGB(215, 255, 245, 61),
                    
                  )
                ),
              ],
            )
          ],
        ), 
    );
  }
}