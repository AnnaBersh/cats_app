import 'package:flutter/material.dart';

class BaseScreen extends StatefulWidget {
  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  @override
  Widget build(BuildContext context) {
    bool _isFavorited = false;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cats App',
          style: TextStyle(color: Colors.black87, fontStyle: FontStyle.italic),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/image/3.jpg'), fit: BoxFit.cover)),
        child: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) => Container(),
        )
            ),
          
        
        bottomNavigationBar: BottomNavigationBar(
        iconSize: 30.0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Cats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorited',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.amber[800],
        //onTap: _onItemTapped,
      ),
    );
  }
}

// class BaseScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     bool _isFavorited = false;
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Cats App',
//           style: TextStyle(color: Colors.black87, fontStyle: FontStyle.italic),
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.white,
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//             image: DecorationImage(
//                 image: AssetImage('assets/image/3.jpg'), fit: BoxFit.cover)),
//         child: Column(
//           children: [
//             IconButton(
//               icon: (_isFavorited
//                   ? Icon(Icons.favorite)
//                   : Icon(Icons.favorite_border)),
//               onPressed: () {},
//               color: Colors.amber,
//             ),
//             BottomNavigationBar(
//               iconSize: 30.0,
//               items: const <BottomNavigationBarItem>[
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.list),
//                   label: 'Cats',
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.favorite),
//                   label: 'Favorited',
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.person),
//                   label: 'Profile',
//                 ),
//               ],
//               selectedItemColor: Colors.amber[800],
//               //onTap: _onItemTapped,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
