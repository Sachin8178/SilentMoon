import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MediaQueryExample(),
    );
  }
}

class MediaQueryExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var screenSize = mediaQuery.size;
    var orientation = mediaQuery.orientation;
    var padding = mediaQuery.padding;
    var textScaleFactor = mediaQuery.textScaleFactor;
    var platformBrightness = mediaQuery.platformBrightness;

    return Scaffold(
      appBar: AppBar(
        title: Text('MediaQuery Example'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Screen Size: ${screenSize.width} x ${screenSize.height}'),
            Text('Orientation: $orientation'),
            Text('Padding: $padding'),
            Text('Text Scale Factor: $textScaleFactor'),
            Text('Platform Brightness: $platformBrightness'),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: OrientationResponsiveScreen(),
//     );
//   }
// }

// class OrientationResponsiveScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var mediaQuery = MediaQuery.of(context);
//     var orientation = mediaQuery.orientation;

//     return Scaffold(
//       appBar: AppBar(title: Text('Orientation Responsive UI')),
//       body: orientation == Orientation.portrait
//           ? PortraitLayout()
//           : LandscapeLayout(),
//     );
//   }
// }

// class PortraitLayout extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Container(
//             color: Colors.blue,
//             width: 100,
//             height: 100,
//             child: Center(child: Text('Portrait')),
//           ),
//           SizedBox(height: 20),
//           Container(
//             color: Colors.green,
//             width: 100,
//             height: 100,
//             child: Center(child: Text('UI')),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class LandscapeLayout extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Container(
//             color: Colors.blue,
//             width: 100,
//             height: 100,
//             child: Center(child: Text('Landscape')),
//           ),
//           SizedBox(width: 20),
//           Container(
//             color: Colors.green,
//             width: 100,
//             height: 100,
//             child: Center(child: Text('UI')),
//           ),
//         ],
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomeScreen(),
//       routes: {
//         '/landscape': (context) => LandscapeScreen(),
//       },
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Home Screen')),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.pushNamed(context, '/landscape');
//           },
//           child: Text('Go to Landscape Screen'),
//         ),
//       ),
//     );
//   }
// }

// class LandscapeScreen extends StatefulWidget {
//   @override
//   _LandscapeScreenState createState() => _LandscapeScreenState();
// }

// class _LandscapeScreenState extends State<LandscapeScreen> {
//   @override
//   void initState() {
//     super.initState();
//     SystemChrome.setPreferredOrientations([
//       DeviceOrientation.landscapeLeft,
//       DeviceOrientation.landscapeRight,
//     ]);
//   }

//   @override
//   void dispose() {
//     SystemChrome.setPreferredOrientations([
//       DeviceOrientation.portraitUp,
//       DeviceOrientation.portraitDown,
//     ]);
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Landscape Screen')),
//       body: Center(child: Text('Landscape Orientation Locked')),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'TabBar Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage>
//     with SingleTickerProviderStateMixin {
//   late TabController _tabController;

//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 3, vsync: this);
//   }

//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }

//   String dropdownvalue = 'a';
//   var items = ['a', 'b', 'c'];
//   List<String> products = ["abc", "cdi", "yfg"];
//   List<String> productdetails = ["snjdnfjf", "djcnjdn", "fnjn"];
//   List<int> price = [300, 56, 788];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('TabBar Demo'),
//         bottom: TabBar(
//           controller: _tabController,
//           tabs: [
//             Tab(
//               text: 'tab1',
//               icon: Icon(Icons.home),
//             ),
//             Tab(
//               text: 'tab2',
//               icon: Icon(Icons.stop),
//             ),
//             Tab(
//               text: 'tab3',
//               icon: Icon(Icons.border_bottom),
//             ),
//           ],
//         ),
//       ),
//       body: TabBarView(
//         controller: _tabController,
//         children: [
//           _buildButtonExamples(),
//           _buildDropdownExample(),
//           _buildListViewExample(),
//         ],
//       ),
//     );
//   }

//   Widget _buildButtonExamples() {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           ElevatedButton(
//             onPressed: () {
//               // Action to perform when the button is pressed
//               print('Elevated Button pressed');
//             },
//             child: Text('Elevated Button'),
//           ),
//           SizedBox(height: 10),
//           OutlinedButton(
//             onPressed: () {
//               // Action to perform when the button is pressed
//               print('Outlined Button pressed');
//             },
//             child: Text('Outlined Button'),
//           ),
//           SizedBox(height: 10),
//           TextButton(
//             onPressed: () {
//               // Action to perform when the button is pressed
//               print('Text Button pressed');
//             },
//             child: Text('Text Button'),
//           ),
//           SizedBox(height: 10),
//           IconButton(
//             icon: Icon(Icons.star),
//             onPressed: () {
//               // Action to perform when the button is pressed
//               print('Icon Button pressed');
//             },
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildDropdownExample() {
//     return Center(
//       child: DropdownButton<String>(
//         value: dropdownvalue,
//         icon: Icon(Icons.keyboard_arrow_down_outlined),
//         items: items.map((String item) {
//           return DropdownMenuItem<String>(
//             value: item,
//             child: Text(item),
//           );
//         }).toList(),
//         onChanged: (String? newValue) {
//           setState(() {
//             dropdownvalue = newValue!;
//           });
//         },
//       ),
//     );
//   }

//   Widget _buildListViewExample() {
//     return ListView.builder(
//       itemCount: products.length,
//       itemBuilder: (context, index) {
//         return ListTile(
//           title: Text(products[index]),
//           subtitle: Text(productdetails[index]),
//           trailing: Text(price[index].toString()),
//         );
//       },
//     );
//   }
// }
