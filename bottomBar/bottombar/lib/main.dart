import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}
class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key: key);
  @override
_HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage>{
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List <Widget> _pages = [
        Center(
          child: Text('Home page', 
          style: TextStyle(fontSize: 50, backgroundColor: Colors.amber),
          ),
        ),
        Center(
          child: Text('Message page', 
          style: TextStyle(fontSize: 50, backgroundColor: Colors.red),
          ),
        ),
        Center(
          child: Text('Acount page', 
          style: TextStyle(fontSize: 50, backgroundColor: Colors.blue),
          ),
        ),
        Center(
          child: Text('Setting page', 
          style: TextStyle(fontSize: 50, backgroundColor: Colors.green),
          ),
        ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateBottomBar,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Message'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Person'),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
          ],
          ),
      ), 
    );
  }
}
