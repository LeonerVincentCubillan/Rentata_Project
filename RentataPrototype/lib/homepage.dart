import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rentataPrototype/cartpage.dart';
import 'package:rentataPrototype/rentpage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light
        .copyWith(statusBarColor: Colors.transparent));
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            searchBarSection(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: filterSection(),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: gadgetSection(),
              ),
            ),
            bottomBarSection(),
          ],
        ),
      ),
    );
  }

  Container searchBarSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0),
      height: 150.0,
      decoration: BoxDecoration(
        color: Colors.lightBlue[400],
        image: DecorationImage(
          image: AssetImage('assets/images/Colored_logo.png'),
          alignment: Alignment(0.0, -0.35),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        margin: EdgeInsets.only(top: 40.0),
        child: Center(
          child: TextFormField(
            cursorColor: Colors.black,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(40.0)),
              contentPadding:
                  new EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
              prefixIcon: Icon(Icons.search, color: Colors.black),
              hintText: "Search...",
              hintStyle: TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container filterSection() {
    return Container(
      child: Row(
        children: <Widget>[
          FlatButton(
            onPressed: () {},
            child: Center(
              child: Text("All",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ),
          FlatButton(
            onPressed: () {},
            child: Center(
              child: Text("Cellphones",
                  style: TextStyle(
                    fontSize: 18.0,
                  )),
            ),
          ),
          FlatButton(
            onPressed: () {},
            child: Center(
              child: Text("Headphones",
                  style: TextStyle(
                    fontSize: 18.0,
                  )),
            ),
          ),
          FlatButton(
            onPressed: () {},
            child: Center(
              child: Text("Speackers",
                  style: TextStyle(
                    fontSize: 18.0,
                  )),
            ),
          ),
        ],
      ),
    );
  }

  Container gadgetSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black)),
                width: 160.0,
                height: 300.0,
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 158.0,
                      child: Center(
                        child: Image.asset('assets/images/oppo.png'),
                      ),
                    ),
                    Container(
                      child: Text(
                        "OPPO A37",
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      height: 48.0,
                      child: Text(
                        "Rent as low as: \n ₱ 2,100 for 3-Weeks \n ₱ 250 extend a day",
                        style: TextStyle(
                          color: Colors.grey[800],
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      child: FlatButton(
                        onPressed: () {
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      RentPage()),
                              (Route<dynamic> route) => false);
                        },
                        child: Container(
                          width: 100.0,
                          height: 30.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Colors.lightBlue[400],
                                  Colors.indigo[900]
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Center(
                            child: const Text(
                              'RENT NOW!',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black)),
                width: 160.0,
                height: 300.0,
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 158.0,
                      child: Center(
                        child: Image.asset('assets/images/vivoY20i.jpg'),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Vivo Y20i",
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      height: 48.0,
                      child: Text(
                        "Rent as low as: \n ₱ 1,850 for 3-Weeks \n ₱ 250 extend a day",
                        style: TextStyle(
                          color: Colors.grey[800],
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      child: FlatButton(
                        onPressed: () {},
                        child: Container(
                          width: 100.0,
                          height: 30.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Colors.lightBlue[400],
                                  Colors.indigo[900]
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Center(
                            child: const Text(
                              'RENT NOW!',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black)),
                width: 160.0,
                height: 300.0,
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 158.0,
                      child: Center(
                        child: Image.asset('assets/images/Samsung_A21s.jpg'),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Samsung A21s",
                        style: TextStyle(
                          fontSize: 23.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      height: 48.0,
                      child: Text(
                        "Rent as low as: \n ₱ 2,660 for 3-Weeks \n ₱ 250 extend a day",
                        style: TextStyle(
                          color: Colors.grey[800],
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      child: FlatButton(
                        onPressed: () {},
                        child: Container(
                          width: 100.0,
                          height: 30.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Colors.lightBlue[400],
                                  Colors.indigo[900]
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Center(
                            child: const Text(
                              'RENT NOW!',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black)),
                width: 160.0,
                height: 300.0,
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 158.0,
                      child: Center(
                        child: Image.asset('assets/images/realme5pro.jpg'),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Realme 5 Pro",
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      height: 48.0,
                      child: Text(
                        "Rent as low as: \n ₱ 1,100 for 3-Weeks \n ₱ 250 extend a day",
                        style: TextStyle(
                          color: Colors.grey[800],
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      child: FlatButton(
                        onPressed: () {},
                        child: Container(
                          width: 100.0,
                          height: 30.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Colors.lightBlue[400],
                                  Colors.indigo[900]
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Center(
                            child: const Text(
                              'RENT NOW!',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black)),
                width: 160.0,
                height: 300.0,
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 158.0,
                      child: Center(
                        child: Image.asset('assets/images/xiamipocox3.jpg'),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Xiaomi Poco X3",
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      height: 48.0,
                      child: Text(
                        "Rent as low as: \n ₱ 2,200 for 3-Weeks \n ₱ 250 extend a day",
                        style: TextStyle(
                          color: Colors.grey[800],
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      child: FlatButton(
                        onPressed: () {},
                        child: Container(
                          width: 100.0,
                          height: 30.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Colors.lightBlue[400],
                                  Colors.indigo[900]
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Center(
                            child: const Text(
                              'RENT NOW!',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black)),
                width: 160.0,
                height: 300.0,
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 158.0,
                      child: Center(
                        child: Image.asset('assets/images/Huawei-P40-Lite.jpg'),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Huawei P40 Lite",
                        style: TextStyle(
                          fontSize: 21.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      height: 48.0,
                      child: Text(
                        "Rent as low as: \n ₱ 1,100 for 3-Weeks \n ₱ 250 extend a day",
                        style: TextStyle(
                          color: Colors.grey[800],
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      child: FlatButton(
                        onPressed: () {},
                        child: Container(
                          width: 100.0,
                          height: 30.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Colors.lightBlue[400],
                                  Colors.indigo[900]
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Center(
                            child: const Text(
                              'RENT NOW!',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container bottomBarSection() {
    return Container(
      padding: EdgeInsets.all(12.0),
      height: 60,
      width: double.maxFinite,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.blue[400], Colors.blue[900]],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ButtonTheme(
            minWidth: 150.0,
            child: RaisedButton(
              onPressed: () {},
              color: Colors.white,
              child: Center(
                child: Text("Filter",
                    style: TextStyle(
                      color: Colors.indigo[900],
                      fontSize: 18.0,
                    )),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0)),
            ),
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                      builder: (BuildContext context) => CartPage()),
                  (Route<dynamic> route) => false);
            },
          ),
          IconButton(
            icon: Icon(Icons.person_outline, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
