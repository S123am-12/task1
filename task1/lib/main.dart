import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biding',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen),
        useMaterial3: true,
        canvasColor: Colors.lightGreen.shade100
      ),
      home: const maximumeBid(title: 'Biding Page'),
    );
  }
}
class maximumeBid extends StatefulWidget {
 const maximumeBid({super.key, required this.title});
  final String title;
  @override
  State<maximumeBid> createState() => _maximumeBidState();
}

class _maximumeBidState extends State<maximumeBid> {
  double bid=0.0;
  void  setBid(){
    setState(() {
      bid +=50;
    });
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
            Theme(
              data:Theme.of(context).copyWith(cardColor:Colors.lightGreen),
                  child:Card(
                    color:Colors.lightGreen.shade200,
                  child:Text(
                    'Your current bid is''\$' '$bid',
                    ),
                  )
            ),
            const Text(
              'Press the button to increase the bid',
            ),
            
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: setBid,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }
}


