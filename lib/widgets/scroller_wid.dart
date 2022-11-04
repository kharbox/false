
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';


class Scrollerdiv extends StatelessWidget {
  const Scrollerdiv({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        width: 200,
                        child: const Image(image: AssetImage('images/biotwo.jpg'),width: 200,))
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('Price 23\$'),
                            Text('Argan')
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        width: 200,
                        child: const Image(image: AssetImage('images/biosiven.jpg'),width: 200,))
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('Price 23\$'),
                            Text('Argan')
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        width: 200,
                        child: const Image(image: AssetImage('images/biotwilve.jpg'),width: 200,))
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('Price 23\$'),
                            Text('Argan')
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
    );
  }
}