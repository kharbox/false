import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:schoolproject/pages/panier.dart';
import 'package:schoolproject/pages/products.dart';
import 'package:schoolproject/widgets/scroller_wid.dart';
import 'package:schoolproject/widgets/user_icon.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 223, 223, 223),
        fontFamily: GoogleFonts.montserrat().fontFamily,
        textTheme: GoogleFonts.montserratTextTheme(),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      title: 'app',
      home: const MyApp(),
    ));

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color klike0 = Colors.grey;
  Color klike1 = Colors.grey;
  Color klike2 = Colors.grey;
  Color klike3 = Colors.grey;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        // leading:  Row(children: const [Icon(CupertinoIcons.radiowaves_left),Icon(CupertinoIcons.radiowaves_left)]),
        title: Container(
            margin: const EdgeInsets.fromLTRB(40, 0, 0, 0),
            child: const Center(
                child: Text(
              "Bien Etre",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 1),
            ))),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PanierPage()));
              },
              icon: const Icon(
                CupertinoIcons.shopping_cart,
              )),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: IconButton(
              onPressed: () {},
              icon: const UserIcon(
                img: "images/biofive.png",
                size: 44,
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.all(Radius.circular(33)),
              ),
              accountName: Text("walid Lotfi"),
              accountEmail: Text("walidlotfi@gmail.com"),
              currentAccountPicture: UserIcon(
                img: "images/biotwo.jpg",
                size: 59,
              ),
            ),
            const ListTile(
              title: Text('Home'),
              trailing: Icon(CupertinoIcons.home),
            ),
            ListTile(
              title: const Text('Coffret'),
              trailing: const Icon(Icons.shop_2_outlined),
              onTap: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context)=> const ProdsCatigure()),
                );
              },
            ),
            ListTile(
              title: Text('Shop shap'),
              trailing: Icon(CupertinoIcons.shopping_cart),
              onTap: (() => Navigator.push(context, 
                MaterialPageRoute(builder: (context)=>const PanierPage()),
              )),
            ),
            const ListTile(
              title: Text('Blogs'),
              trailing: Icon(Icons.mark_chat_read_outlined),
            ),
            const ListTile(
              title: Text('Help'),
              trailing: Icon(Icons.help_outline),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: const Text(
                    'OUR PRODUCTS',
                    style: TextStyle(
                        fontSize: 25,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Colors.black12,
                        letterSpacing: 2),
                  )),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                padding: const EdgeInsets.all(3),
                height: 270,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  // color: Colors.white,
                ),
                child: const Scrollerdiv(),
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: const Text(
                    'Premieme Product',
                    style: TextStyle(
                        fontSize: 25,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Colors.black12,
                        letterSpacing: 2),
                  )),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                padding: const EdgeInsets.all(3),
                height: 270,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  // color: Colors.white,
                ),
                child: const Scrollerdiv(),
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: const Text(
                    'Meak Up Product',
                    style: TextStyle(
                        fontSize: 25,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Colors.black12,
                        letterSpacing: 2),
                  )),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                padding: const EdgeInsets.all(3),
                height: 270,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  // color: Colors.white,
                ),
                child: const Scrollerdiv(),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                alignment: Alignment.center,
                child: const Text('over had more than ather',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w200),),
              ),
              Container(
                margin: const EdgeInsets.all(0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(0),
                        child: Card(
                          child: Column(
                            children: [
                              const Image(image: AssetImage('images/biotwilve.jpg'),height: 230,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(onPressed: (){}, 
                                    icon: const Icon(CupertinoIcons.shopping_cart)
                                  ),
                                  // IconButton(
                                  //   onPressed: (){
                                  //     setState(() {
                                  //       klike0 = Colors.red;
                                  //     });
                                  //   },
                                  //   icon:  Icon(CupertinoIcons.heart_fill,color: klike0 ,),
                                  // ),
                                  GestureDetector(
                                    onDoubleTap: (){
                                      setState(() {
                                        klike0 = Colors.grey;
                                      });
                                    },
                                    onTap: (){
                                      setState(() {
                                        klike0 = Colors.red;
                                      });
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                                      child: Icon(CupertinoIcons.heart_fill,color: klike0,size: 25,)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(0),
                        child: Card(
                          child: Column(
                            children:  [
                              const Image(image: AssetImage('images/biotwilve.jpg'),height: 230,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(onPressed: (){}, 
                                    icon: const Icon(CupertinoIcons.shopping_cart)
                                  ),
                                  // IconButton(
                                  //   onPressed: (){
                                  //     setState(() {
                                  //       klike1 = Colors.red;
                                  //     });
                                  //   },
                                  //   icon: Icon(CupertinoIcons.heart_fill,color: klike1,)
                                  // )
                                  GestureDetector(
                                    onDoubleTap: (){
                                      setState(() {
                                        klike1 = Colors.grey;
                                      });
                                    },
                                    onTap: (){
                                      setState(() {
                                        klike1 = Colors.red;
                                      });
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                                      child: Icon(CupertinoIcons.heart_fill,color: klike1,size: 25,)),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(0),
                        child: Card(
                          child: Column(
                            children: [
                              const Image(image: AssetImage('images/biotwilve.jpg'),height: 230,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(onPressed: (){}, 
                                    icon: const Icon(CupertinoIcons.shopping_cart)
                                  ),
                                  // IconButton(
                                  //   onPressed: (){
                                  //     setState(() {
                                  //       klike2 = Colors.red;
                                  //     });
                                  //   },
                                  //   icon:  Icon(CupertinoIcons.heart_fill,color: klike2 ,),
                                  // ),
                                  GestureDetector(
                                    onDoubleTap: (){
                                      setState(() {
                                        klike2 = Colors.grey;
                                      });
                                    },
                                    onTap: (){
                                      setState(() {
                                        klike2 = Colors.red;
                                      });
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                                      child: Icon(CupertinoIcons.heart_fill,color: klike2,size: 25,)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(0),
                        child: Card(
                          child: Column(
                            children:  [
                              const Image(image: AssetImage('images/biotwilve.jpg'),height: 230,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(onPressed: (){}, 
                                    icon: const Icon(CupertinoIcons.shopping_cart)
                                  ),
                                  GestureDetector(
                                    onDoubleTap: (){
                                      setState(() {
                                        klike3 = Colors.grey;
                                      });
                                    },
                                    onTap: (){
                                      setState(() {
                                        klike3 = Colors.red;
                                      });
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                                      child: Icon(CupertinoIcons.heart_fill,color: klike3,size: 25,)),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: const Text(
                    'This Month',
                    style: TextStyle(
                        fontSize: 25,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Colors.black12,
                        letterSpacing: 2),
                  )),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                padding: const EdgeInsets.all(3),
                height: 270,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  // color: Colors.white,
                ),
                child: const Scrollerdiv(),
              ),
            ],
          ),
          Positioned(
              left: 10,
              bottom: 10,
              child: Container(
                  width: 130,
                  height: 50,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProdsCatigure(),
                        ),
                      );
                    },
                    icon: const Icon(
                      CupertinoIcons.add,
                    ),
                    label: const Text('See More'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black38,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20)))),
                  ))
            ),
          
        ],
      ),
    );
  }
}































































































































































































// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
// theme: ThemeData(

//   // appBarTheme: const AppBarTheme(backgroundColor: kBackGround,),
//   // scaffoldBackgroundColor: kBackGround,
//   primaryColor: const Color.fromARGB(255, 223, 223, 223),
//   // ignore: deprecated_member_use
//   // accentColor: kAccCol,
//   fontFamily: GoogleFonts.montserrat().fontFamily,
//   textTheme: GoogleFonts.montserratTextTheme(),
//   iconTheme: const IconThemeData(color: Colors.black),
// ),
//       home: Scaffold(
//         appBar: AppBar(
//           iconTheme: const IconThemeData(color: Colors.black),
//           backgroundColor: Colors.white,
//           elevation: 0,
//           // leading:  Row(children: const [Icon(CupertinoIcons.radiowaves_left),Icon(CupertinoIcons.radiowaves_left)]),
//           title: Container(
//             margin: const EdgeInsets.fromLTRB(40, 0, 0, 0),
//             child: const Center(child: Text("Bien Etre",style: TextStyle(color: Colors.black,fontSize: 27,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,letterSpacing: 1),))),
//           actions: [
//             IconButton(
//               onPressed: (){
//                 Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => const PanierPage())
//                 );
//               },
//               icon: const Icon(
//                 CupertinoIcons.shopping_cart,
//               )
//             ),
//             Padding(
//               padding: const EdgeInsets.all(3.0),
//               child: IconButton(onPressed: (){}, icon: const UserIcon(img: "images/biofive.png",size: 44,),),
//             ),
//           ],
//         ),
//         drawer: Drawer(
//           backgroundColor: Colors.white,
//           child: Column(
//             children: const [
//               UserAccountsDrawerHeader(
//                 accountName: Text("walid Lotfi"),
//                 accountEmail: Text("walidlotfi@gmail.com"),
//                 currentAccountPicture: UserIcon(img: "images/biotwo.jpg",size: 59,),
//               )
//             ],
//           ),
//         ),
//         // body: PanierPage(),
//       ),
//     );
//   }
// }



// void main() => runApp(const MaterialApp(
//   title: 'app',
//   home: App(),
// ));

// class App extends StatelessWidget {
//   const App({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           iconTheme: const IconThemeData(color: Colors.black),

//         leading: IconButton(
//           onPressed:() => Navigator.push(context,
//             MaterialPageRoute(builder: (context)=> PanierPage()),
//           ),
//           icon: Icon(CupertinoIcons.add),
//         ),
//       ),

//     );
//   }
// }