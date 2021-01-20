import 'package:flutter/material.dart';

class LoginPg extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   // throw UnimplementedError();
    return LoginState();
  }

}
class LoginState extends State<LoginPg>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      body:Container(
        child: ListView(
          children: [
            Container(
                child:Stack(children: <Widget>[ //stack overlaps widgets
                  Opacity( //semi red clippath with more height and with 0.5 opacity
                    opacity: 0.5,
                    child: ClipPath(
                      clipper:WaveClipper(), //set our custom wave clipper
                      child:Container(
                        color:Colors.deepOrangeAccent,
                        height:200,
                      ),
                    ),
                  ),

                  ClipPath(  //upper clippath with less height
                    clipper:WaveClipper(), //set our custom wave clipper.
                    child:Container(
                        padding: EdgeInsets.only(bottom: 50),
                        color:Colors.red,
                        height:180,
                        alignment: Alignment.center,
                        child: Text("", style: TextStyle(
                          fontSize:18, color:Colors.white,
                        ),)
                    ),
                  ),
                ],)
            ),

            ListTile(
              title: Text("Lets get start",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.deepOrangeAccent),),
            ),
            ListTile(
              title: TextField(
                decoration: InputDecoration(
                  labelText: 'Mobile Number',

                ) ,
              ),
            ),
            ListTile(
              title: TextField(
                decoration: InputDecoration(
                  labelText: 'Password',

                ) ,
              ),
            ),
                //
            ListTile(
              title:RaisedButton.icon(
                onPressed: (){ print('Button Clicked.'); },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                label: Text('Button With Left Icon',
                  style: TextStyle(color: Colors.white),),
                icon: Icon(Icons.login_sharp, color:Colors.white,),
                textColor: Colors.white,
                splashColor: Colors.red,
                color: Colors.deepOrangeAccent,),
            ),

            ListTile(
              title: Center(
                  child: Text("Forgot Password?",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)),
            ),

            ListTile(
              title:RaisedButton(
                onPressed: (){ print('Button Clicked.'); },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: Text('Sign up',
                  style: TextStyle(color: Colors.white),),
               // icon: Icon(Icons.login_sharp, color:Colors.white,),
                textColor: Colors.white,
                splashColor: Colors.red,
                color: Colors.deepOrangeAccent,),
            ),

            ListTile(
              title: Center(
                  child: Icon(Icons.account_box,size: 40,)),
            ),
          ],
        ),

      ) ,

    );
  }

}




class WaveClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {

    var path = new Path();
    path.lineTo(0, size.height); //start path with this if you are making at bottom

    var firstStart = Offset(size.width / 5, size.height);
    //fist point of quadratic bezier curve
    var firstEnd = Offset(size.width / 2.25, size.height - 50.0);
    //second point of quadratic bezier curve
    path.quadraticBezierTo(firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart = Offset(size.width - (size.width / 3.24), size.height - 105);
    //third point of quadratic bezier curve
    var secondEnd = Offset(size.width, size.height - 10);
    //fourth point of quadratic bezier curve
    path.quadraticBezierTo(secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

    path.lineTo(size.width, 0); //end with this path if you are making wave at bottom
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false; //if new instance have different instance than old instance
    //then you must return true;
  }
}