import 'dart:convert';
import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Test8(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// 1-26
class Test1 extends StatefulWidget {
  const Test1({super.key});

  @override
  State<Test1> createState() => _Test1State();
}

class _Test1State extends State<Test1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
                 Text("hello world",style: TextStyle(backgroundColor: Colors.red,decoration:TextDecoration.lineThrough
                 ,shadows: [
Shadow(color: Colors.blue,offset: Offset(10.0,10.2),blurRadius: 1)
                 ])),

                 Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                        color: Colors.green,
                        border: Border.all(color: Colors.red,width: 2,),
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(image: NetworkImage("https://i.ytimg.com/vi/2wOmtVYaob8/maxresdefault.jpg"),
                        
                        fit: BoxFit.fill)

                  ),
                  child: Text("Container"),
                 ),
                 Container(
                  margin: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                  height: 200,
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                        color: Colors.green,
                        border: Border.all(color: Colors.red,width: 2,),
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(image: AssetImage("images/R.jpg"),
                        
                        fit: BoxFit.cover)

                  ),
                  child: Text("Container"),
                 ),
                 Container(
                  child: Text("Shadow"),
                  
                  decoration: BoxDecoration(
                      color: Colors.red,
                      boxShadow: [BoxShadow(color: Colors.red,blurRadius: 10,offset: Offset(10.0,10.0))]

                  ),
                 ),
               Opacity(opacity: 0.5,child: Image.asset("images/R.jpg"),),
               Card(
                child: Text("hello world"),
                shape: Border.all(color: Colors.black,width: 1),elevation: 10,
               ),
               Container(
                height: 400,
                color: Colors.green,
                child: 
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    color: Colors.red,
                    child: Text("Columan 1"),
                  ),
                  Container(
                    color: Color.fromARGB(255, 107, 181, 28),
                    child: Text("Columan 2"),
                  )
                  ,
                  Container(
                    color: Color.fromARGB(255, 33, 146, 232),
                    child: Text("Columan 3"),
                  )
                ],
               ),
               ),
               Container(
                color: Colors.purple,
                child: Row(children: [
                    Text("hello world"),
                    Text("hello world22"),
                ]),
               )
              ,
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    color: Colors.green,
                    width: 300,
                    height: 300,
                    child: Text("line 1"),
                  ),
                   Container(
                    color: Colors.red,
                    width: 200,
                    height: 200,
                    child: Text("line 2"),
                  )
                ],
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(child: Text("position 1"),left: 0),
                   Positioned(child: Text("position 2"),right: 0),
                    Positioned(child: Text("position 3"))
                ],
              ),
              Container(
                height: 300,
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                      color: Color.fromARGB(255, 0, 255, 42),
                      child: Text("child 1"),
                    )),
                   Expanded(
                      flex: 1,
                      child: Container(
                      color: Colors.red,
                      child: Text("child 1"),
                    )),
                    Divider(
                      color: Colors.black,
                      height: 100,
                      thickness: 10,
                    )
                    ,
                    Expanded(
                      flex: 2,
                      child: Container(
                      color: Color.fromARGB(255, 0, 85, 255),
                      child: Icon(Icons.arrow_back_ios),
                    )),
                  ],
                ),
              )

        ],
      ),
    );
  }
}
//26-28
class Test2 extends StatefulWidget {
  const Test2({super.key});

  @override
  State<Test2> createState() => _Test2State();
}

class _Test2State extends State<Test2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(),
      drawer: Drawer(),
      body: Container(child: Column(
        children: [
          Divider(
            height: 180,
          ),
          Container(
            width: double.infinity,
            
            padding: EdgeInsets.all(14),
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: Text("Striraberry Providers Recipe",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(width: 4)
            ),
          ),
          Divider(
            height: 10,
          )
          ,
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: Text("hello world how are you my friend are you ok if you ok then nothing else impotaint  hello world how are you my friend are you ok if you ok then nothing else impotaint hello world how are you my friend are you ok if you ok then nothing else impotaint",textAlign: TextAlign.center),
          ),
          Container(
            
            width: double.infinity,
            
            padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
            margin: EdgeInsets.symmetric(horizontal: 16,vertical: 5),
            child: Column(
              children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.star,color: Colors.yellow),
                          Icon(Icons.star,color: Colors.yellow,),
                          Icon(Icons.star,color: Colors.yellow,),
                          Icon(Icons.star),
                          Icon(Icons.star)
                        ],
                      ),
                      Text("17 Review")
                    ],
                  ),
                  Divider(
                    height: 30,
                    color: Colors.transparent,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.format_strikethrough_rounded,size: 40,),
                          Text("Food"),
                          Text("2 - 4")
                        ],
                      ),
                       Column(
                        children: [
                          Icon(Icons.format_strikethrough_rounded,size: 40,),
                          Text("Food"),
                          Text("2 - 4")
                        ],
                      )
                      , Column(
                        children: [
                          Icon(Icons.format_strikethrough_rounded,size: 40,),
                          Text("Food"),
                          Text("2 - 4")
                        ],
                      )
                    ],
                  )
              ],
            ),
            decoration: BoxDecoration(
              
              border: Border.all(width: 2)
            ),
          )
        ],
      ),),

    );
  }
}
//29-54
class Test3 extends StatefulWidget {
  const Test3({super.key});

  @override
  State<Test3> createState() => _Test3State();
}

class _Test3State extends State<Test3> {
  dynamic human=false;
  dynamic country;
  dynamic mode=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(children: [
Container(
        child: Column(
          children: [
            IndexedStack(
          index: 0,
          children: [
              Text("1"),
              Text("2"),
        ]),
         Wrap(
          direction: Axis.horizontal,
          children: [
            Container(
              width: 100,
              color: Colors.red,
              child: Text("hello 1"),
            ),
            Container(
              width: 100,
              color: Color.fromARGB(255, 227, 184, 10),
              child: Text("hello 1"),
            ),
            Container(
              width: 100,
              color: Color.fromARGB(255, 171, 97, 92),
              child: Text("hello 1"),
            ),
            Container(
              width: 100,
              color: Color.fromARGB(255, 175, 219, 34),
              child: Text("hello 1"),
            ),
            Container(
              width: 100,
              color: Color.fromARGB(255, 117, 211, 30),
              child: Text("hello 1"),
            )
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
          children: [
            Container(

              width: 100,
              color: Colors.red,
              child: Text("hello 1"),
            ),
            SizedBox(
              width: 100,
            ),
            Container(
              width: 100,
              color: Color.fromARGB(255, 227, 184, 10),
              child: Text("hello 1"),
            ),
            Container(
              width: 100,
              color: Color.fromARGB(255, 171, 97, 92),
              child: Text("hello 1"),
            ),
            Container(
              width: 100,
              color: Color.fromARGB(255, 175, 219, 34),
              child: Text("hello 1"),
            ),
            Container(
              width: 100,
              color: Color.fromARGB(255, 117, 211, 30),
              child: Text("hello 1"),
            )
          ],
        ),
        ),
        
        ElevatedButton(onPressed: () {
          
        }, child: Text("Button")
        ,style: ElevatedButton.styleFrom(
          primary: Colors.red,
          shadowColor: Colors.green,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          

        ),
        ),
        ElevatedButton.icon(onPressed: () {
          
        }, icon: Icon(Icons.read_more), label: Text(""))
       ,
       MaterialButton(onPressed: () {
         
       },
       child: Text("MaterialButton"),
       color: Colors.red,
       elevation: 10,
       splashColor: Colors.green,
       )
         ,
         InkWell(
          child: Text("Inkwell",style: TextStyle(color: Colors.blue)),
          hoverColor: Colors.green,
          
          onLongPress: () {
            print("long press");
          },
         ),
         GestureDetector(
          
          child: Text("GestureDetector"),
          onTap: () {
            print("tap");
          },
          onDoubleTap: () {
            
            print("double");
          },
         ),
         Checkbox(value: human, onChanged: (value) {
          setState(() {
            human=value;
          });
           
         },),
         CheckboxListTile(
          secondary:Icon(Icons.read_more_outlined),
          subtitle:Text("hello"),
          title: Text("Are you human"),
          
          value: human, onChanged: (value) {
            setState(() {
                          human=value;
            });
         },)
         ,
        Column(
          children: [
             RadioListTile(
              title: Text("Usa"),
              selected: country=="usa"?true:false,
              value: "usa", groupValue: country, onChanged: (value) {
           setState(() {
             country=value;
           });
         },),
          RadioListTile(
            title: Text("brazil"),
            selected: country=="brazil"?true:false,
            value: "brazil", groupValue: country, onChanged: (value) {
           setState(() {
             country=value;
           });
         },)
         , RadioListTile(
          secondary: Icon(Icons.kayaking),
          selected: country=="palestine"?true:false,
          subtitle: Text("juresalem"),
          title: Text("palestine"),
          value: "palestine", groupValue: country, onChanged: (value) {
           setState(() {
             country=value;
           });
         },),
         SwitchListTile(
          title: Text("dark or light"),
          hoverColor: Colors.lightBlue,
          secondary: Icon(Icons.receipt_long),
          activeColor: Colors.red,
         
          value: mode, onChanged: (value) {
           setState(() {
             mode=value;
           });
         },)
          ],
        )
        ,
         ListTile(
            title: Text("hello world"),
            subtitle: Text("yes"),
            leading: Icon(Icons.h_plus_mobiledata_outlined),
            tileColor: Colors.green,
            trailing: Icon(Icons.key_off),
         ),
         CircleAvatar(
          child: CircleAvatar(
  radius: 50, // Set the radius according to your needs
  backgroundImage: AssetImage('images/R.jpg'), // Replace with your image path
),

         )
          ],
        ),
      ),
        
      ],)
      
      
    );
  }
}

class Test4 extends StatefulWidget {
  const Test4({super.key});

  @override
  State<Test4> createState() => _Test4State();
}
//55-56
class _Test4State extends State<Test4> {
  List list=["ali","mohammed","abdeen"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return Divider();
        },
        itemCount: list.length,
        
        itemBuilder: (context, index) {
          return Dismissible(key: Key(list[index]),
          onDismissed: (direction) {
            print(index);
            list.removeAt(index);
          },
           child: ListTile(
            title: Text("${list[index]}"),
            subtitle: Text("hello world"),
            leading: Icon(Icons.kayaking),
          ));
          
      },),
    );
  }
}
//56-63
class Test5 extends StatefulWidget {
  const Test5({super.key});
  @override
  State<Test5> createState() => _Test5State();
}

class _Test5State extends State<Test5> {
  List list=[1,2,3,4,5];
  GlobalKey<ScaffoldState> scaffoldState=new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture:Container(
          child: CircleAvatar(
  radius: 50, // Set the radius according to your needs
  backgroundImage: AssetImage('images/R.jpg'), // Replace with your image path
),

         ),
               decoration: BoxDecoration(
    color: Colors.lightBlue,

  ),
              accountEmail: Text("hello@")
            ,
            accountName: Text("hello"),
            arrowColor: Colors.red,

            ),
            ListTile(
              leading: Icon(Icons.read_more),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Hello world"),
        centerTitle: true,
        backgroundColor: Colors.red,
        leading: IconButton(onPressed: () {
         
        },
        icon: Icon(Icons.read_more),
        ),
      ),
      body: Column(
        children: [
           Container(
            height: 310,
            child:  GridView.builder(
          itemCount: list.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2,childAspectRatio:2,crossAxisSpacing: 10,mainAxisSpacing: 10),
       itemBuilder: (context, index) {
         return Card(   
          child: Container(
            alignment: Alignment.center,
            child: Text("hello")),
         );
       },),
           ),
           Container(
            height: 300,
             child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
             children: [
              Card(
                child: Text("hello"),
              )
             ],
             ),
           )
        ],
       ),
    );
  }
}
//63-66
class Test6 extends StatefulWidget {
  const Test6({super.key});

  @override
  State<Test6> createState() => _Test6State();
}

class _Test6State extends State<Test6> {
  @override
  void initState() {
     print("hello");
    // TODO: implement initState
    super.initState();
   
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child: Scaffold(
      appBar:AppBar(
        bottom: TabBar(
          indicatorColor: Colors.green,
          indicatorWeight: 10,
          tabs: [
          Tab(
            icon: Icon(Icons.read_more),
            
            text: "aa",
          ),
          Tab(
            child: Text("text 2"),
            icon: Icon(Icons.abc_outlined),
          )
        ]),
      ),
      body: TabBarView(children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.red,
          child: Text("Text 1"),
        ),
        Container(
          width: double.infinity,
          height: double.infinity,
          color: Color.fromARGB(255, 0, 255, 76),
          child: Text("Text 2"),
        ),
      ],)
    ));
  }
}

class Test7 extends StatefulWidget {
  const Test7({super.key});
  @override
  State<Test7> createState() => _Test7State();
}

class _Test7State extends State<Test7> {
 
  List list=[PageView(
    onPageChanged: (value) {
      print(value);
    },
    children: [
      Text("Page 1"),
      Text("Page 2"),
      Text("Page 3"),
    ],
  ),Text("Hello world 2")];

   late PageController pc;

   @override
  void initState() {
    // TODO: implement initState
    pc=new PageController(initialPage: 2);
    super.initState();
  }
  int bar=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child:list[bar]
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: bar,
          onTap: (value) {
            setState(() {
              bar=value;
            });
          },
          items: [
          BottomNavigationBarItem(label: "widget one ", icon: Icon(Icons.read_more),),
          BottomNavigationBarItem(label: "widget two ", icon: Icon(Icons.read_more),),
        ]),
    );
  }
}

class Test8 extends StatefulWidget {
  const Test8({super.key});

  @override
  State<Test8> createState() => _Test8State();
}

class _Test8State extends State<Test8> {
  late PageController pc;
  @override
  void initState() {
    // TODO: implement initState
    pc=new PageController(initialPage: 2);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: PageView(
      children: [
           PageView(
            controller: pc,
    onPageChanged: (value) {
      print(value);
    },
    children: [
      Text("Page 1"),
      Text("Page 2"),
      Text("Page 3"),
    ],
  )
      ],
    ),
    floatingActionButton: FloatingActionButton(onPressed: () {
      pc.animateToPage(0, duration: Duration(seconds: 3), curve:Curves.linear);
    },),
    );
  }
}