import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// class Home extends StatefulWidget {
//   const Home({super.key});

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   int _selectedIndex=0;
//   PageController _pageController=PageController();
//   void onTapped(int index){
//     setState(() {
//       _selectedIndex=index;
//     });
//     _pageController.jumpToPage(index);
//   }


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blueAccent[100],
//         title: Text("Bottom Navigation Demo"),
//         centerTitle: true,
//       ),
//       body: PageView(
//         controller: _pageController,
//         children: [
//           Container(color: Colors.red,child: Text("Home"),),
//           Container(color: Colors.yellow),
//           Container(color: Colors.green),
//           Container(color: Colors.purple),
//           Container(color: Colors.cyan),
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: <BottomNavigationBarItem>[
//           BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
//           BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
//           BottomNavigationBarItem(icon: Icon(Icons.add),label: "Add"),
//           BottomNavigationBarItem(icon: Icon(Icons.notifications),label: "Notif"),
//           BottomNavigationBarItem(icon: Icon(Icons.person),label: "Person"),
//         ],
//         currentIndex:_selectedIndex,
//         selectedItemColor: Colors.amberAccent,
//         unselectedItemColor: Colors.cyan,
//         onTap:onTapped,
//         ),
//     );
//   }
// }
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  PageController pageController = PageController();
  void onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    pageController.jumpToPage(index);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        centerTitle:true, 
        title: Text('My Application'),
      ),
      body: PageView(
        controller: pageController,
        children: [
          Container(color: Colors.red,
          child: Text("Home"),),
          Container(color: Colors.green,
          child: Text("Search"),),
          Container(color: Colors.blue),
          Container(color: Colors.yellow),
          Container(color: Colors.orange),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notif'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Person')
        ],
         currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepOrangeAccent,
        unselectedItemColor: Colors.grey,
        onTap: onTapped,
        )
    );
  }
}