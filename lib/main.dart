
import 'package:flutter/material.dart';
import './age1.dart';
main(){
  runApp(myapp());
}
class myapp extends StatefulWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  _myappState createState() => _myappState();
}

class _myappState extends State<myapp> {
  var myController = TextEditingController();
  int  str = 0;
  String strtext = 'Your age:0  ';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[4000],
          title:  Text(
            'calculate age',
          ),

        ),
        body: Container(
          margin: EdgeInsets.all(8.0),
          child: Column(
            children:<Widget> [
              SizedBox(height: 40,),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(
                        width: 2,
                      )
                    ),
                    labelText: 'Birht year',
                    labelStyle: TextStyle(
                      fontSize: 30,
                      color: Colors.green[400],
                    ),
                    hintText: 'Enter your Birth Year',
                    hintStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black38,
                    )
                  ),
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    fontSize: 20,

                  ),
                  controller: myController,
                ),
              ),
              SizedBox(height: 40,),
              Container(
                alignment: Alignment.center,
                child: Text(
                  strtext,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.green[400],
                  ),
                ),
              ),
              SizedBox(height: 40,),
              Container(
                child: RaisedButton(onPressed: ()=> setState(() {
                  if(myController.text.isNotEmpty){
                    int birth = int.parse(myController.text);
                    if(birth <= DateTime.now().year){
                      AgeCalculator( birth);
                      str = AgeCalculator.age;
                      strtext = ' Your Age: $str';

                    }else{

                      strtext = ' Invalid Number Please Try Again';

                    }
                  }else{
                    str = 0;
                    strtext = ' Your Age : $str';

                  }
                }),
                  splashColor: Colors.red,
                  color: Colors.green[400],
                  padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  child: Text(
                    'Get Age',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black38,

                    ),

                  ),




                )



              ),

            ],
          ),

        ),
      ),
    );

  }
}
