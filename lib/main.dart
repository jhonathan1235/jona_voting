import 'package:flutter/material.dart';
import 'vote.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const HomeRoute(),
      '/user': (context) => const UserRoute(),
      '/admin': (context) => const AdminRoute(),
      '/vote': (context) => const MyApp(),
      '/vpres': (context) => const MyApp(),
    },
  )); //MaterialApp
}

class HomeRoute extends StatelessWidget {
  const HomeRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[200],
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 150.0),
            child: Form(
              child: Column(
                children: [
                  const Image(
                    image: AssetImage('images/vote.jpg'),
                  ),
                  const SizedBox(height: 20.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 150.0),
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, '/user');
                      },
                      icon: const Icon(
                        Icons.person,
                        size: 25.0,
                      ),
                      label: const Text('User'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ); // Scaffold
  }
}

class UserRoute extends StatelessWidget {
  const UserRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[300],
      appBar: AppBar(), // AppBar
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 80.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 100.0),
                child: Form(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Student Key:',
                            prefixIcon: Icon(Icons.person),
                            border: UnderlineInputBorder(),
                          ),
                          onChanged: (String value) {},
                          validator: (value) {
                            return value!.isEmpty ? 'Please enter Email' : null;
                          },
                        ),
                      ),
                      const SizedBox(height: 12.0),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/vote');
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Text('Submit'),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.send,
                              size: 25.0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ), // Center
    ); // Scaffold
  }
}

class AdminRoute extends StatelessWidget {
  const AdminRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[300],
      appBar: AppBar(), // AppBar
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Personal Information',
                        style: TextStyle(
                          fontFamily: 'Cooper Black',
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.5,
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      Text(
                        'Name:',
                        style: TextStyle(
                          fontFamily: 'Calibri',
                          color: Colors.black,
                          fontSize: 15.0,
                          letterSpacing: 2.5,
                        ),
                      ),
                      Text(
                        'Jonathan T. Fernandez',
                        style: TextStyle(
                          fontFamily: 'Times New Roman',
                          color: Colors.white,
                          fontSize: 25.0,
                          letterSpacing: 2.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        'Age:',
                        style: TextStyle(
                          fontFamily: 'Calibri',
                          color: Colors.black,
                          fontSize: 15.0,
                          letterSpacing: 2.5,
                        ),
                      ),
                      Text(
                        '24 Years Old',
                        style: TextStyle(
                          fontFamily: 'Calibri',
                          color: Colors.white,
                          fontSize: 25.0,
                          letterSpacing: 2.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        'Sex:',
                        style: TextStyle(
                          fontFamily: 'Calibri',
                          color: Colors.black,
                          fontSize: 15.0,
                          letterSpacing: 2.5,
                        ),
                      ),
                      Text(
                        'Male',
                        style: TextStyle(
                          fontFamily: 'Calibri',
                          color: Colors.white,
                          fontSize: 25.0,
                          letterSpacing: 2.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        'Address:',
                        style: TextStyle(
                          fontFamily: 'Calibri',
                          color: Colors.black,
                          fontSize: 15.0,
                          letterSpacing: 2.5,
                        ),
                      ),
                      Text(
                        'Pangasinan,Lingayen, Pangasinan',
                        style: TextStyle(
                          fontFamily: 'Calibri',
                          color: Colors.white,
                          fontSize: 25.0,
                          letterSpacing: 2.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        'Birth Date:',
                        style: TextStyle(
                          fontFamily: 'Calibri',
                          color: Colors.black,
                          fontSize: 15.0,
                          letterSpacing: 2.5,
                        ),
                      ),
                      Text(
                        'Sep 23, 1998',
                        style: TextStyle(
                          fontFamily: 'Calibri',
                          color: Colors.white,
                          fontSize: 25.0,
                          letterSpacing: 2.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        'Place of Birth:',
                        style: TextStyle(
                          fontFamily: 'Calibri',
                          color: Colors.black,
                          fontSize: 15.0,
                          letterSpacing: 2.5,
                        ),
                      ),
                      Text(
                        'Lingayen,Pangasina',
                        style: TextStyle(
                          fontFamily: 'Calibri',
                          color: Colors.white,
                          fontSize: 25.0,
                          letterSpacing: 2.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        'Citizenship:',
                        style: TextStyle(
                          fontFamily: 'Calibri',
                          color: Colors.black,
                          fontSize: 15.0,
                          letterSpacing: 2.5,
                        ),
                      ),
                      Text(
                        'Filipino',
                        style: TextStyle(
                          fontFamily: 'Calibri',
                          color: Colors.white,
                          fontSize: 25.0,
                          letterSpacing: 2.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        'Civil Status:',
                        style: TextStyle(
                          fontFamily: 'Calibri',
                          color: Colors.black,
                          fontSize: 15.0,
                          letterSpacing: 2.5,
                        ),
                      ),
                      Text(
                        'Single',
                        style: TextStyle(
                          fontFamily: 'Calibri',
                          color: Colors.white,
                          fontSize: 25.0,
                          letterSpacing: 2.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        'Religion:',
                        style: TextStyle(
                          fontFamily: 'Calibri',
                          color: Colors.black,
                          fontSize: 15.0,
                          letterSpacing: 2.5,
                        ),
                      ),
                      Text(
                        'Roman Catholic',
                        style: TextStyle(
                          fontFamily: 'Calibri',
                          color: Colors.white,
                          fontSize: 25.0,
                          letterSpacing: 2.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ), // Center
    ); // Scaffold
  }
}