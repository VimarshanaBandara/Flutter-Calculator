import 'package:calculator/buttons.dart';
import 'package:flutter/material.dart';
void main(){
 runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var userQuestion ="";
  var userAnswers ="";


  final List<String> buttons= [
    'C','DEL','%','/',
    '9','8','7','x',
    '6','5','4','-',
    '3','2','1','+',
    '0','.','ANS','=',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Column(
        children: [
          Expanded(
              child:Container(
                child: Column(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(height: 10.0,),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.all(20.0),
                      child: Text(userQuestion,style: TextStyle(fontSize: 20.0),),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.all(20.0),
                      child: Text(userAnswers,style: TextStyle(fontSize: 20.0),),
                    )
                  ],
                ),
              )
          ),
          Expanded(
            flex: 4,
            child: Container(
              child: GridView.builder(
                itemCount: buttons.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                  itemBuilder: (BuildContext context , int index){
                  if(index==0){
                    return MyButton( buttons[index],Colors.green ,Colors.white,(){
                    setState((){
                    userQuestion +=buttons[index];
                    });
                    },);
                  }
                  else if(index==1){
                    return MyButton(buttons[index],Colors.red ,Colors.white,
                      (){
                    setState((){
                    userQuestion +=buttons[index];
                    });
                    }, );
                  }
                  else{
                    return MyButton(


                        buttons[index],isOprerator(buttons[index])? Colors.deepPurple:Colors.deepPurple[50] ,
                        isOprerator(buttons[index])? Colors.white:Colors.deepPurple ,(){
                    setState((){
                    userQuestion +=buttons[index];
                    });
                    },);
                  }



                  }
              ),
            ),
          )
        ],
      ),
    );
  }
  bool isOprerator(String x){
   if(x=='%'||x=='/'||x=='x'||x=='-'||x=='+'||x=='='){
     return true;
   }
   return false;
  }


}
