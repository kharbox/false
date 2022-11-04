

// import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:schoolproject/pages/panier.dart';
import 'package:schoolproject/pages/show.dart';

import '../widgets/sliver_product.dart';
import '../widgets/user_icon.dart';

// import "package:http/http.dart" as http;

class ProdsCatigure extends StatefulWidget {
  const ProdsCatigure({super.key});

  @override
  State<ProdsCatigure> createState() => _ProdsCatigureState();
}

class _ProdsCatigureState extends State<ProdsCatigure> {

  // List list = [];
  // ignore: non_constant_identifier_names
  // Future GetChildDate()async {
  //   var url = "http://192.168.230.1/schoolprj/allprod.php";
  //   var resultat = await http.get(Uri.parse(url));
    
  //   if(resultat.statusCode == 200) {
  //     var red = json.decode(resultat.body);
  //     list.addAll(red);
  //   }
  //   print(list);
  // }

  // @override
  // void initState() {
  //   super.initState();

  //   GetChildDate();
  // }




  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
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
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: TabBar(
              isScrollable: true,
              tabs: [
                Tab(
                  child: Text(
                    'All Caty',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    'Children',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    'Meak Up',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    'Food & family',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    'Hear',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    'Premieme',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    'Must Asked',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              margin: const EdgeInsets.all(0),
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      height: 50,
                      margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('some Talk one description'),
                          Icon(CupertinoIcons.printer)
                        ],
                      )
                    ),
                  ),
                  SliverGrid.count(
                    crossAxisCount: 2,
                    childAspectRatio: 0.75,
                    mainAxisSpacing: 2,
                    children: [
                      for(int i = 0; i <10; i++)
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context, 
                              MaterialPageRoute(builder: (context)=> const ShowProd())
                            );
                          } ,
                          child: const SlivProds(img: "images/biotwilve.jpg",),
                        )
                        
                    ],
                  )
                ],
              ),
              
            ),
            Container(
              
            ),
            Container(
              
            ),
            Container(
              
            ),
            Container(
              
            ),
            Container(
              
            ),
            Container(
              
            ),
          ]
        ),
      ),
    );
  }
}