import 'package:flutter/material.dart';
import './ui/CustuminputFiels.dart';

void main() {
  runApp(MaterialApp(
    title: 'login app',
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.blue,
        child: Center(
          child: Container(
            width: 400,
            height: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Material(
                    elevation: 10.0,
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    child: Image.asset(
                      'images/acp.jpg',
                      width: 100,
                      height: 100,
                    )),
                CustumInputFiels(
                    Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    'USERNAME'),
                CustumInputFiels(
                    Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                    'PASSWORD'),
                Container(
                  width: 150,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext contex) {
                        return new SecondScreen();
                      }));
                    },
                    color: Colors.deepOrange,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: Text(
                      'login',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext contex) {
                        return new Registartionpage();
                      }));
                    },
                    color: Colors.deepOrange,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: Text(
                      'SIGNUP',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
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

class Registartionpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.blue,
        child: Container(
          width: 200,
          height: 800,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CustumInputFiels(
                  Icon(
                    Icons.create,
                    color: Colors.white,
                  ),
                  'FIRST NAME'),
              CustumInputFiels(
                  Icon(
                    Icons.create,
                    color: Colors.white,
                  ),
                  'LAST NAME'),
              CustumInputFiels(
                  Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                  'EMAIL'),
              CustumInputFiels(
                  Icon(
                    Icons.contacts,
                    color: Colors.white,
                  ),
                  'CONTACT NUMBER'),
              CustumInputFiels(
                  Icon(
                    Icons.local_activity,
                    color: Colors.white,
                  ),
                  'ADDRESS'),
              CustumInputFiels(
                  Icon(
                    Icons.location_city,
                    color: Colors.white,
                  ),
                  'CITY'),
              Container(
                width: 150,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (BuildContext contex) {
                      return new HomeScreen();
                    }));
                  },
                  color: Colors.deepOrange,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: Text(
                    'SIGNUP',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}



////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////Drawerlayout/////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('second')),
      body: Center(child: Text('second screen')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('list of items'),
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.collections),
              title: Text('data'),
              onLongPress: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext contex) {
                  return new Tabbar();
                }));
              },
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.vpn_key),
              title: Text('photos'),
              onLongPress: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext contex) {
                  return new OrintationList();
                }));
              },
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class OrintationList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: Text('Photos')),
        body: OrientationBuilder(
          builder: (context, Orientation) {
            return GridView.count(
              crossAxisCount: 2,
              children: List.generate(100, (index) {
                return Center(
                  child: Text(
                    'items $index',
                    style: Theme.of(context).textTheme.headline,
                  ),
                );
              }),
            );
          },
        ));
  }
}

class Tabbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: "ADD", icon: Icon(Icons.add)),
                Tab(text: "image", icon: Icon(Icons.image)),
                Tab(text: "Received", icon: Icon(Icons.call_received)),
              ],
            ),
            title: Text('Tabs Demo'),
          ),
          body: TabBarView(
            children: [
              Image.asset(
                'images/book.jpg',
                height: 1000.00,
                width: 1000.00,
              ),
              GridView.count(
                crossAxisCount: 2,
                children: List.generate(20, (index) {
                  return Center(
                    child: Image.asset('images/girl.jpg'),
                  );
                }),
              ),
              Icon(Icons.call_missed),
            ],
          ),
        ),
      ),
    );
  }
}
