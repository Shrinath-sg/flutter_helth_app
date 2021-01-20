import 'package:doctor/size.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return HomeState() ;
  }

}
class HomeState extends State<HomePage>{
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold,);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
      style: optionStyle,
    ),
    Text(
      'Doctors',
      style: optionStyle,
    ),
    Text(
      'Blog',
      style: optionStyle,),
    Text(
      'Indicator',
      style: optionStyle,),
    Text(
      'Profile',
      style: optionStyle,),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   // throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
        title: Text("Health Care"),
        centerTitle: true,backgroundColor: Colors.indigoAccent[100],
      ),
      drawer: Drawer(

      ),

      body: Container(
        child: ListView(
          children:<Widget> [
            Container(
              child: Text("Hello ,",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
              padding: const EdgeInsets.all(8),
            ),
            Container(
              child: Text("How Can We Take Care Yourself?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.grey[500]),
              ),
              padding: const EdgeInsets.only(left: 12.0,right: 0.0,top: 0.0,bottom: 0.0),),
            Container(
              //color: Colors.deepPurpleAccent,
              padding: const EdgeInsets.only(left: 35.0,right: 30.0,top: 90.0,bottom: 30.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                 
                       Container(
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Column(
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                  ListTile(
                                     leading: Icon(Icons.account_circle,size: 40.0,),
                                   ),
                                     Padding(
                                         padding: const EdgeInsets.only(left: 0.0,right: 45.0,top: 35.0,bottom: 0.0),
                                         child: Text("Find Doctor",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),),

                                    Padding(
                                      padding:const EdgeInsets.only(left: 0.0,right: 46.0,top: 2.0,bottom: 0.0),
                                      child: Text("210 Doctors",style: TextStyle(color: Colors.white),),
                                    ),

                                  ],
                                ),
                                  //
                                  //
                                height: 130,
                                width: 150,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.indigoAccent[100],
                                ),
                              ),
                              SizedBox(
                                height: 6 ,
                              ),
                              Container(
                                child:Column(
                                  children: [
                                    ListTile(
                                      leading: Icon(Icons.add_to_photos,size: 40.0,color: Colors.white,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 0.0,right: 45.0,top: 35.0,bottom: 0.0),
                                      child: Text("Appointment",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),),),

                                    Padding(
                                      padding:const EdgeInsets.only(left: 0.0,right: 46.0,top: 2.0,bottom: 0.0),
                                      child: Text("60 Available",style: TextStyle(color: Colors.white),),
                                    ),

                                  ],
                                ),
                                height: 130,
                                width: 150,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey[700],
                                ),


                              ),
                            ],
                          ),
                        ),
                      ),
                    

                      Container(
                      child: Column(
                        children: [
                          Container(
                            child: Column(
                              children: [
                                ListTile(
                                  leading: Icon(Icons.apartment_outlined,size: 40.0,color: Colors.white),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 0.0,right: 45.0,top: 35.0,bottom: 0.0),
                                  child: Text("Find Hospital",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),),),

                                Padding(
                                  padding:const EdgeInsets.only(left: 0.0,right: 46.0,top: 2.0,bottom: 0.0),
                                  child: Text("30 Hospitals",style: TextStyle(color: Colors.white),),
                                ),

                              ],
                            ),
                            height: 130,

                            width: 150,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey[700],
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Container(
                            child: Column(
                              children: [
                                ListTile(
                                  leading: Icon(Icons.calendar_today_outlined,size: 40.0,color: Colors.white),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 0.0,right: 50.0,top: 35.0,bottom: 0.0),
                                  child: Text("Drug List",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),),),

                                Padding(
                                  padding:const EdgeInsets.only(left: 0.0,right: 46.0,top: 2.0,bottom: 0.0),
                                  child: Text("22 Lists",style: TextStyle(color: Colors.white),),
                                ),
                              ],
                            ),
                            height: 130,
                            width: 150,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey[700],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Container(
              child: Center(
                child: _widgetOptions.elementAt(_selectedIndex),
              ),

            )


          ],
        ),

      ),
            bottomNavigationBar: new Theme(
            data: Theme.of(context).copyWith(
            // sets the background color of the `BottomNavigationBar
            canvasColor: const Color(0xFF6d8cd7),
            ),
      child: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline_outlined),
            label: 'Doctors',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.airplay),
            label: 'Blog',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apps_rounded,),
            label: 'Indicators',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
       onTap: _onItemTapped,
      ),
            ),

    );


  }

}