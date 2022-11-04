import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

class SlivProds extends StatefulWidget {
  final String img;
  const SlivProds({super.key, required this.img});

  @override
  State<SlivProds> createState() => _SlivProdsState();
}

class _SlivProdsState extends State<SlivProds> {
  Color klike3 = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(0),
      child: Card(
        child: Column(
          children: [
            Image(
              image: AssetImage(widget.img),
              height: 200, 
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(CupertinoIcons.shopping_cart)),
                GestureDetector(
                  onDoubleTap: () {
                    setState(() {
                      klike3 = Colors.grey;
                    });
                  },
                  onTap: () {
                    setState(() {
                      klike3 = Colors.red;
                    });
                  },
                  child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Icon(
                        CupertinoIcons.heart_fill,
                        color: klike3,
                        size: 25,
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
