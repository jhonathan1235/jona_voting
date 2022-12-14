import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Vote());
  }
}

class Vote extends StatefulWidget {
  const Vote({super.key});

  @override
  State<Vote> createState() => _VoteState();
}

class _VoteState extends State<Vote> {
  String? vote; //no radio button will be selected
  //String gender = "male"; //if you want to set default value
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("For President"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 180.0),
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Text(
                  "President?",
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    color: Colors. blue,
                    fontSize: 30.0,
                    letterSpacing: 2.5,
                  ),
                ),
                const Divider(
                  color: Colors.black,
                ),
                RadioListTile(
                  title: const Text(
                    "Jam Sunshine Salazar",
                    style: TextStyle(
                      fontFamily: 'Calibri',
                      color: Colors.black54,
                      fontSize: 20.0,
                      letterSpacing: 2.5,
                    ),
                  ),
                  value: "1",
                  groupValue: vote,
                  onChanged: (value) {
                    setState(() {
                      vote = value.toString();
                    });
                  },
                ),
                RadioListTile(
                  title: const Text(
                    "Federico Salosagcol",
                    style: TextStyle(
                      fontFamily: 'Calibri',
                      color: Colors.black54,
                      fontSize: 20.0,
                      letterSpacing: 2.5,
                    ),
                  ),
                  value: "2",
                  groupValue: vote,
                  onChanged: (value) {
                    setState(() {
                      vote = value.toString();
                    });
                  },
                ),
                RadioListTile(
                  title: const Text(
                    "Alyssa Cristobal",
                    style: TextStyle(
                      fontFamily: 'Calibri',
                      color: Colors.black54,
                      fontSize: 20.0,
                      letterSpacing: 2.5,
                    ),
                  ),
                  value: "3",
                  groupValue: vote,
                  onChanged: (value) {
                    setState(() {
                      vote = value.toString();
                    });
                  },
                ),
                const SizedBox(height: 12.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/vpres');
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text('Next'),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.forward,
                        size: 20.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _VPresState extends State<Vote> {
  String? vote; //no radio button will be selected
  //String gender = "male"; //if you want to set default value
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[900],
      appBar: AppBar(
        title: const Text("For Vice President"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 180.0),
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Text(
                  "Who is your Vice President?",
                  style: TextStyle(
                    fontFamily: 'Calibri',
                    color: Colors.white,
                    fontSize: 30.0,
                    letterSpacing: 2.5,
                  ),
                ),
                const Divider(
                  color: Colors.black,
                ),
                RadioListTile(
                  title: const Text(
                    "Laurenz Idos",
                    style: TextStyle(
                      fontFamily: 'Calibri',
                      color: Colors.white,
                      fontSize: 20.0,
                      letterSpacing: 2.5,
                    ),
                  ),
                  value: "1",
                  groupValue: vote,
                  onChanged: (value) {
                    setState(() {
                      vote = value.toString();
                    });
                  },
                ),
                RadioListTile(
                  title: const Text(
                    "Dianne Nicole Tumanan",
                    style: TextStyle(
                      fontFamily: 'Calibri',
                      color: Colors.white,
                      fontSize: 20.0,
                      letterSpacing: 2.5,
                    ),
                  ),
                  value: "2",
                  groupValue: vote,
                  onChanged: (value) {
                    setState(() {
                      vote = value.toString();
                    });
                  },
                ),
                RadioListTile(
                  title: const Text(
                    "James Carl Tamayo",
                    style: TextStyle(
                      fontFamily: 'Calibri',
                      color: Colors.white,
                      fontSize: 20.0,
                      letterSpacing: 2.5,
                    ),
                  ),
                  value: "3",
                  groupValue: vote,
                  onChanged: (value) {
                    setState(() {
                      vote = value.toString();
                    });
                  },
                ),
                const SizedBox(height: 12.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/vpres');
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text('Next'),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.forward,
                        size: 20.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}