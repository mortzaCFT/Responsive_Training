import 'package:adminpanel/responsive/res.dart';
import 'package:adminpanel/theme/color_config.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Set different paddings for mobile and desktop
    final EdgeInsets responsivePadding = Responsive.isMobile(context)
        ? const EdgeInsets.fromLTRB(16, 16, 16, 0) 
        : const EdgeInsets.fromLTRB(240, 16, 240, 0); 

    return Scaffold(
      drawer: Responsive.isDesktop(context)
          ? Drawer(
              backgroundColor: Colors.black45,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ListTile(),
                  ListTile(),
                  ListTile(),
                  ListTile(),
                ],
              ),
            )
          : null, 
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Text('Responsive Layout'),
        actions: [
          if (!Responsive.isDesktop(context))
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer(); // Open drawer on mobile
              },
            )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: responsivePadding, 
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Responsive.isMobile(context)
                        ? Column(
                            children: [
                              buildFlexible1(),
                              SizedBox(height: 15),
                              buildFlexible2(),
                            ],
                          )
                        : Row(
                            children: [
                              Flexible(
                                flex: 1,
                                child: buildFlexible1(),
                              ),
                              SizedBox(width: 15),
                              Flexible(
                                flex: 1,
                                child: buildFlexible2(),
                              ),
                            ],
                          ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Stack(
                children: [
                  Responsive.isMobile(context)
                      ? Column(
                          children: [
                            buildFlexible3(),
                            SizedBox(height: 12),
                            buildFlexible4(),
                            SizedBox(height: 12),
                            buildFlexible5(),
                          ],
                        )
                      : Row(
                          children: [
                            Flexible(
                              flex: 1,
                              child: buildFlexible3(),
                            ),
                            SizedBox(width: 12),
                            Flexible(
                              flex: 1,
                              child: buildFlexible4(),
                            ),
                            SizedBox(width: 12),
                            Flexible(
                              flex: 1,
                              child: buildFlexible5(),
                            ),
                          ],
                        ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  // Extracted widgets for flexible layout components
  Widget buildFlexible1() {
    return Column(
      children: [
        Container(
          height: 355,
          color: Colors.black38,
        ),
        SizedBox(height: 15),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 150,
                color: Colors.black38,
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Container(
                height: 150,
                color: Colors.black38,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildFlexible2() {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 100,
              width: 214,
              color: Colors.black38,
            ),
            SizedBox(width: 15),
            Container(
              height: 100,
              width: 214,
              color: Colors.black38,
            ),
            SizedBox(width: 15),
            Container(
              height: 100,
              width: 214,
              color: Colors.black38,
            ),
          ],
        ),
        SizedBox(height: 15),
        Row(
          children: [
            Container(
              height: 100,
              width: 214,
              color: Colors.black38,
            ),
            SizedBox(width: 15),
            Container(
              height: 100,
              width: 214,
              color: Colors.black38,
            ),
            SizedBox(width: 15),
            Container(
              height: 100,
              width: 214,
              color: Colors.black38,
            ),
          ],
        ),
        SizedBox(height: 10),
        Container(
          height: 300,
          color: Colors.black38,
        ),
      ],
    );
  }

  Widget buildFlexible3() {
    return Container(
      height: 640,
      width: double.infinity,
      color: Colors.black38,
    );
  }

  Widget buildFlexible4() {
    return Container(
      height: 640,
      width: double.infinity,
      color: Colors.black38,
    );
  }

  Widget buildFlexible5() {
    return Container(
      height: 640,
      width: double.infinity,
      color: Colors.black38,
    );
  }
}
