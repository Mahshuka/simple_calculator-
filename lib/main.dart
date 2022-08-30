
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
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),debugShowCheckedModeBanner: false,
      home:const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);




  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
TextEditingController controller1 =TextEditingController();
TextEditingController controller2 =TextEditingController();
int? result=0,num1=0,num2=0;
add(){
  setState(() {

    num1=int.parse(controller1.text);
    num2=int.parse(controller2.text);
    result=num1!+num2!;
  });
}
sub(){
  setState(() {

    num1=int.parse(controller1.text);
    num2=int.parse(controller2.text);
    result=num1!-num2!;
  });
}
mul(){
  setState(() {

    num1=int.parse(controller1.text);
    num2=int.parse(controller2.text);
    result=num1!*num2!;
  });
}
div(){
  setState(() {

    num1=int.parse(controller1.text);
    num2=int.parse(controller2.text);
    result=num1!%num2!;
  });
}
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: const Text('Simple Calculator '),
        centerTitle: true,
      ),
      body: Padding(padding: const EdgeInsets.all(20),
      child: Column(
       children:[
          Text('result:$result',style: const TextStyle(fontSize: 36,fontWeight: FontWeight.bold),),
         const SizedBox(height: 20,),
          TextField(
controller: controller1,
            decoration: InputDecoration(
              labelText: 'Enter First Number',
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))

            ),
          ),
          const SizedBox(height: 20,),
          TextField(
controller: controller2,
            decoration: InputDecoration(
                labelText: 'Enter Second Number',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))

            ),
          ),
        const  SizedBox(height: 20,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){
                add();
                controller1.clear();controller2.clear();
              }, child: const Text('Add')),

              ElevatedButton(onPressed: (){
                sub();
                controller1.clear();controller2.clear();
              }, child: const Text('Sub')),
            ],
          ),
         const  SizedBox(height: 20,),

         Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             ElevatedButton(

                 onPressed: (){
                   mul();
                   controller1.clear();controller2.clear();
                 }, child: const Text('Mul')),

             ElevatedButton(onPressed: (){
               div();
               controller1.clear();controller2.clear();
             }, child: const Text('Div')),
           ],
         ),
         const  SizedBox(height: 20,),
        ],
      ),

      ),
    );
  }
}
