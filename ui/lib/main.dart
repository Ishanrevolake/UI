import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(Homepage());
}

class Homepage extends StatefulWidget {
  const Homepage({key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  GoogleMapController mapController;
  int _value = 1;
  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          shadowColor: Colors.transparent,
          title: Text(
            "Billing Detail",
            style: TextStyle(color: Colors.blue[900]),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.blue[900],
            ),
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.notifications_active,
                color: Colors.blue[900],
              ),
              onPressed: () {},
            ),
          ],
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            color: Colors.white70,
            child: Column(
              children: [
                Container(
                    height: 160,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      child: GoogleMap(
                        onMapCreated: _onMapCreated,
                        initialCameraPosition: CameraPosition(
                          target: _center,
                          zoom: 11.0,
                        ),
                      ),
                    )),
                Container(
                  height: 70,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.blue[900],
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "2461 West Drive",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text("Chicago, IL  60605",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                      Container(
                        width: 70,
                      ),

                      MaterialButton(
                        onPressed: () {},
                        color: Colors.yellow[600],
                        textColor: Colors.blue[900],
                        child: Icon(
                          Icons.border_color,
                          size: 24,
                        ),
                        padding: EdgeInsets.all(12),
                        shape: CircleBorder(),
                      )
                      // IconButton(
                      //   icon: Icon(

                      //     Icons.border_color,
                      //     color: Colors.blue[900],
                      //   ),
                      //   onPressed: () {},
                      // ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            // BoxShadow(color: Colors.black12, blurRadius: 5)
                          ],
                        ),
                        child: SizedBox(
                          width: 300,
                          height: 60,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                " Credit/Debit",
                                style: TextStyle(
                                    color: Colors.blue[800], fontSize: 20),
                              ),
                              Container(
                                width: 50,
                              ),
                              Radio(
                                  value: 1,
                                  groupValue: _value,
                                  onChanged: (value) {
                                    setState(
                                      () {
                                        _value = value;
                                      },
                                    );
                                  }),
                            ],
                          ),
                        ),
                      ),
                    ],

                    // children: [Text("Credit/Debiit Card")],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            // BoxShadow(color: Colors.black12, blurRadius: 5)
                          ],
                        ),
                        child: SizedBox(
                          height: 60,
                          width: 300,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                " PayPal",
                                style: TextStyle(
                                    color: Colors.blue[800], fontSize: 20),
                              ),
                              Container(
                                width: 90,
                              ),
                              Radio(
                                  value: 2,
                                  groupValue: _value,
                                  onChanged: (value) {
                                    setState(() {
                                      _value = value;
                                    });
                                  }),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            // BoxShadow(color: Colors.black12, blurRadius: 5)
                          ],
                        ),
                        child: SizedBox(
                          height: 60,
                          width: 300,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                " Google Play",
                                style: TextStyle(
                                    color: Colors.blue[800], fontSize: 20),
                              ),
                              Container(
                                width: 50,
                              ),
                              Radio(
                                  value: 3,
                                  groupValue: _value,
                                  onChanged: (value) {
                                    setState(() {
                                      _value = value;
                                    });
                                  }),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.yellow[600],
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        // BoxShadow(color: Colors.black12, blurRadius: 5)
                      ],
                    ),
                    width: 300,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        new GestureDetector(
                            onTap: () {
                              print("Heading to Check Out");
                            },
                            child: Container(
                              height: 45,
                              width: 200,
                              decoration: BoxDecoration(
                                color: Colors.blue[900],
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  // BoxShadow(color: Colors.black12, blurRadius: 5)
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Checkout   ",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.arrow_forward_ios_outlined,
                                          color: Colors.white.withOpacity(0.3),
                                          size: 18,
                                        ),
                                        Icon(
                                          Icons.arrow_forward_ios_outlined,
                                          color: Colors.white.withOpacity(0.5),
                                          size: 18,
                                        ),
                                        Icon(
                                          Icons.arrow_forward_ios_outlined,
                                          color: Colors.white..withOpacity(1),
                                          size: 18,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )),
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height: 45,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.yellow[600],
                                  borderRadius: BorderRadius.circular(20)),
                              child: Text("\$29",
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 22)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // child: Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //   children: [
                  //     Container(
                  //         height: 45,
                  //         width: 300,
                  //         decoration: BoxDecoration(
                  //           color: Colors.grey[300],
                  //           borderRadius: BorderRadius.circular(20),
                  //         ))
                  //   ],
                  // ),
                )

                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: [
                //     Container(
                //       decoration: BoxDecoration(
                //         color: Colors.grey[300],
                //         borderRadius: BorderRadius.circular(20),
                //         // boxShadow: [
                //         //   BoxShadow(color: Colors.black12, blurRadius: 5)
                //         // ],
                //       ),
                //       child: SizedBox(
                //         width: 300,
                //         height: 65,
                //         child: Row(
                //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //           children: [
                //             Text(
                //               " Google Play",
                //               style: TextStyle(
                //                   color: Colors.blue[800], fontSize: 20),
                //             ),
                //             Radio(
                //                 value: 3,
                //                 groupValue: _value,
                //                 onChanged: (value) {
                //                   setState(() {
                //                     _value = value;
                //                   });
                //                 }),
                //           ],
                //         ),
                //       ),
                //     ),
                //   ],
              ],

              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: <Widget>[
              //     Expanded(
              //       flex: 3,
              //       child: Container(
              //         alignment: Alignment.center,
              //         color: Colors.blue[200],
              //         child: SizedBox(
              //           height: 200,
              //           child: Image.asset("assests/back.jpg"),
              //         ),
              //       ),
              //     ),
              //     Expanded(
              //       flex: 2,
              //       child: Container(
              //         alignment: Alignment.center,
              //         color: Colors.red,
              //         child: Text("Middle"),
              //       ),
              //     ),
              //     Expanded(
              //       flex: 2,
              //       child: Container(
              //         alignment: Alignment.center,
              //         color: Colors.green,
              //         child: Text("Middle"),
              //       ),
              //     ),
              //     Expanded(
              //       flex: 2,
              //       child: Container(
              //         alignment: Alignment.center,
              //         color: Colors.blue[100],
              //         child: Text("Middle"),
              //       ),
              //     ),
              //     Expanded(
              //       flex: 1,
              //       child: Container(
              //         alignment: Alignment.center,
              //         color: Colors.pink,
              //         child: Text("last"),
              //       ),
              //     ),
              //   ],
            ),
          ),
        ),
      ),
    );
  }
}
