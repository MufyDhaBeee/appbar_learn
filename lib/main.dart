// import 'package:flutter/material.dart';
//
// /// Flutter code sample for [AppBar].
// /// //Example 1:
//
// void main() => runApp(const AppBarApp());
//
// class AppBarApp extends StatelessWidget {
//   const AppBarApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(home: AppBarExample());
//   }
// }
//
// class AppBarExample extends StatelessWidget {
//   const AppBarExample({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('AppBar Demo'),
//         actions: <Widget>[
//           IconButton(
//             icon: const Icon(Icons.add_alert),
//             tooltip: 'Show Snackbar',
//             onPressed: () {
//               ScaffoldMessenger.of(context).showSnackBar(
//                 const SnackBar(content: Text('This is a snackbar')),
//               );
//             },
//           ),
//           IconButton(
//             icon: const Icon(Icons.navigate_next),
//             tooltip: 'Go to the next page',
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute<void>(
//                   builder: (BuildContext context) {
//                     return Scaffold(
//                       appBar: AppBar(title: const Text('Next page')),
//                       body: const Center(
//                         child: Text(
//                           'This is the next page',
//                           style: TextStyle(fontSize: 24),
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               );
//             },
//           ),
//         ],
//       ),
//       body: const Center(
//         child: Text('This is the home page', style: TextStyle(fontSize: 24)),
//       ),
//     );
//   }
// }

///Example 2:

// import 'package:flutter/material.dart';
//
// /// Flutter code sample for [AppBar].
//
// final List<int> _items = List<int>.generate(51, (int index) => index);
//
// void main() => runApp(const AppBarApp());
//
// class AppBarApp extends StatelessWidget {
//   const AppBarApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(colorSchemeSeed: const Color(0xff6750a4)),
//       home: const AppBarExample(),
//     );
//   }
// }
//
// class AppBarExample extends StatefulWidget {
//   const AppBarExample({super.key});
//
//   @override
//   State<AppBarExample> createState() => _AppBarExampleState();
// }
//
// class _AppBarExampleState extends State<AppBarExample> {
//   bool shadowColor = false;
//   double? scrolledUnderElevation;
//
//   @override
//   Widget build(BuildContext context) {
//     final ColorScheme colorScheme = Theme.of(context).colorScheme;
//     final Color oddItemColor = colorScheme.primary.withValues(alpha: 0.05);
//     final Color evenItemColor = colorScheme.primary.withValues(alpha: 0.15);
//
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('AppBar Demo'),
//         scrolledUnderElevation: scrolledUnderElevation,
//         shadowColor: shadowColor ? Theme.of(context).colorScheme.shadow : null,
//       ),
//       body: GridView.builder(
//         itemCount: _items.length,
//         padding: const EdgeInsets.all(8.0),
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 3,
//           childAspectRatio: 2.0,
//           mainAxisSpacing: 10.0,
//           crossAxisSpacing: 10.0,
//         ),
//         itemBuilder: (BuildContext context, int index) {
//           if (index == 0) {
//             return Center(
//               child: Text(
//                 'Scroll to see the Appbar in effect.',
//                 style: Theme.of(context).textTheme.labelLarge,
//                 textAlign: TextAlign.center,
//               ),
//             );
//           }
//           return Container(
//             alignment: Alignment.center,
//             // tileColor: _items[index].isOdd ? oddItemColor : evenItemColor,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(20.0),
//               color: _items[index].isOdd ? oddItemColor : evenItemColor,
//             ),
//             child: Text('Item $index'),
//           );
//         },
//       ),
//       bottomNavigationBar: BottomAppBar(
//         child: Padding(
//           padding: const EdgeInsets.all(8),
//           child: OverflowBar(
//             overflowAlignment: OverflowBarAlignment.center,
//             alignment: MainAxisAlignment.center,
//             overflowSpacing: 5.0,
//             children: <Widget>[
//               ElevatedButton.icon(
//                 onPressed: () {
//                   setState(() {
//                     shadowColor = !shadowColor;
//                   });
//                 },
//                 icon: Icon(
//                   shadowColor ? Icons.visibility_off : Icons.visibility,
//                 ),
//                 label: const Text('shadow color'),
//               ),
//               const SizedBox(width: 5),
//               ElevatedButton(
//                 onPressed: () {
//                   if (scrolledUnderElevation == null) {
//                     setState(() {
//                       // Default elevation is 3.0, increment by 1.0.
//                       scrolledUnderElevation = 4.0;
//                     });
//                   } else {
//                     setState(() {
//                       scrolledUnderElevation = scrolledUnderElevation! + 1.0;
//                     });
//                   }
//                 },
//                 child: Text(
//                   'scrolledUnderElevation: ${scrolledUnderElevation ?? 'default'}',
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
///Example 3:
// import 'package:flutter/material.dart';
//
// /// Flutter code sample for [AppBar].
//
// void main() => runApp(const AppBarApp());
//
// class AppBarApp extends StatelessWidget {
//   const AppBarApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(home: AppBarExample());
//   }
// }
//
// class AppBarExample extends StatelessWidget {
//   const AppBarExample({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final ButtonStyle style = TextButton.styleFrom(
//       foregroundColor: Theme.of(context).colorScheme.onPrimary,
//     );
//     return Scaffold(
//       appBar: AppBar(
//         actions: <Widget>[
//           TextButton(
//             style: style,
//             onPressed: () {},
//             child: const Text('Action 1'),
//           ),
//           TextButton(
//             style: style,
//             onPressed: () {},
//             child: const Text('Action 2'),
//           ),
//         ],
//       ),
//     );
//   }
// }
///Example 4:
import 'package:flutter/material.dart';

/// Flutter code sample for [AppBar].

List<String> titles = <String>['Cloud', 'Beach', 'Sunny'];

void main() => runApp(const AppBarApp());

class AppBarApp extends StatelessWidget {
  const AppBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorSchemeSeed: const Color(0xff6750a4)),
      home: const AppBarExample(),
    );
  }
}

class AppBarExample extends StatelessWidget {
  const AppBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color oddItemColor = colorScheme.primary.withValues(alpha: 0.05);
    final Color evenItemColor = colorScheme.primary.withValues(alpha: 0.15);
    const int tabsCount = 3;

    return DefaultTabController(
      initialIndex: 1,
      length: tabsCount,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('AppBar Sample'),
          // This check specifies which nested Scrollable's scroll notification
          // should be listened to.
          //
          // When `ThemeData.useMaterial3` is true and scroll view has
          // scrolled underneath the app bar, this updates the app bar
          // background color and elevation.
          //
          // This sets `notification.depth == 1` to listen to the scroll
          // notification from the nested `ListView.builder`.
          notificationPredicate: (ScrollNotification notification) {
            return notification.depth == 1;
          },
          // The elevation value of the app bar when scroll view has
          // scrolled underneath the app bar.
          scrolledUnderElevation: 4.0,
          shadowColor: Theme.of(context).shadowColor,
          bottom: TabBar(
            tabs: <Widget>[
              Tab(icon: const Icon(Icons.cloud_outlined), text: titles[0]),
              Tab(icon: const Icon(Icons.beach_access_sharp), text: titles[1]),
              Tab(icon: const Icon(Icons.brightness_5_sharp), text: titles[2]),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView.builder(
              itemCount: 25,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  tileColor: index.isOdd ? oddItemColor : evenItemColor,
                  title: Text('${titles[0]} $index'),
                );
              },
            ),
            ListView.builder(
              itemCount: 25,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  tileColor: index.isOdd ? oddItemColor : evenItemColor,
                  title: Text('${titles[1]} $index'),
                );
              },
            ),
            ListView.builder(
              itemCount: 25,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  tileColor: index.isOdd ? oddItemColor : evenItemColor,
                  title: Text('${titles[2]} $index'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
