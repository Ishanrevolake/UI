import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

/* Main method  */
void main() {
  runApp(Homepage());
}

/* Homepage class is extended by statefulwidget class */
class Homepage extends StatefulWidget {
  const Homepage({key}) : super(key: key);

  @override
  /*   */
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
        backgroundColor: Colors.white,
        /* Ctreatong App bar */
        appBar: AppBar(
          shadowColor: Colors.transparent,
          title: Text(
            "Billing Detail",
            style: TextStyle(color: Colors.blue[900]),
          ),
          /* Inserting icon buttons for app bar */
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
        /* Creating body  */
        body: Padding(
          /* Padding for the whole body */
          padding: const EdgeInsets.all(10.0),
          child: Container(
            color: Colors.white70,
            /* Adding a column for make the layout of the body */
            child: Column(
              /* Creating containers under the column for insert 
              the google maps and location details  */
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
                    /*  Adding ClipRRect for make corners round in the map layout */
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),

                      /* Adding Google maps */
                      child: GoogleMap(
                        myLocationEnabled: true,
                        onMapCreated: _onMapCreated,
                        zoomControlsEnabled: false,
                        initialCameraPosition: CameraPosition(
                          target: _center,
                          zoom: 11.0,
                        ),
                      ),
                    )),

                /* Creating container for the location details  */
                Container(
                  height: 70,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.blue[900],
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                  ),
                  /* Using a Row to add the address line and the icon at the same line */
                  child: Row(
                    /*Making the space childs of row horizontally  */
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
                    ],
                  ),
                ),

                /* Creating layout for  payment optionss */

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: SizedBox(
                          width: 300,
                          height: 60,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                " Credit/Debit Card",
                                style: TextStyle(
                                    color: Colors.blue[800], fontSize: 20),
                              ),
                              Container(
                                width: 10,
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
                                " Google Pay",
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
                /* Layout for check out option */
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.yellow[600],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 300,
                    child: Row(
                      children: [
                        /*Adding a GestureDetector , Detecting the Gesture of the Widget as a button */
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
