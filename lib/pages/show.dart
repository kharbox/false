import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/scroller_wid.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

class ShowProd extends StatefulWidget {
  const ShowProd({super.key});

  @override
  State<ShowProd> createState() => _ShowProdState();
}

class _ShowProdState extends State<ShowProd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.black12
                      ),
                      child: IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.text_aligncenter))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.black12
                      ),
                      child: IconButton(onPressed: (){}, icon: const Icon(Icons.price_check))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.black12
                      ),
                      child: IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.wand_rays))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.black12
                      ),
                      child: IconButton(onPressed: (){}, icon: const Icon(Icons.merge_type))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Container(
                      // color: Colors.red,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.black12
                      ),
                      child: IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.chart_pie))),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(33)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0,2),
                      blurRadius: 9,
                      color: Colors.black12
                    )
                  ],
                ),
                height: 600,
                child: const Scrollerdiv())
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          height: 90,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            // color: Colors.green,
          ),
          child: const  Text('this is the place of this product description and for ather thing like the price or some thing alse',style: TextStyle(fontSize: 15,color: Colors.black54),),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("SunFlower",style: TextStyle(fontSize: 25,),),
                  Text("Meak Up", style: TextStyle(fontSize: 15,color: Colors.black12),),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: const Text('23\$'),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: (){}, 
              icon: const Icon(CupertinoIcons.back)
            ),
            Container(
              padding: const EdgeInsets.all(8),
              width: 200,
              height: 70,
              child: ElevatedButton.icon(
                onPressed: (){}, 
                icon: const Icon(CupertinoIcons.shopping_cart), 
                label: const Text("Buy Know",style: TextStyle(fontSize: 17),),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  backgroundColor: Colors.blue[900],
                ),
              ),
            )
          ],
        )
      ],
    ),
    );
  }
}