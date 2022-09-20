import 'package:flutter/material.dart';
import 'package:transicion_app/src/pages/page2.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('pagina 1'),
      ),
      appBar: AppBar(
        title: Text("pagina 1"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.access_time),
        onPressed: () {
          Navigator.push(context, _crearRuta());
        },
      ),
    );
  }

  Route _crearRuta() {
    return PageRouteBuilder(
      pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) =>
          Page2(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final curvedAnimation =
            CurvedAnimation(parent: animation, curve: Curves.easeInOut);

        /*return SlideTransition(
          position: Tween<Offset>(begin: Offset(0.5, 1.0), end: Offset.zero)
              .animate(curvedAnimation),
          child: child,
        );*/

        //   return ScaleTransition(
        //       child: child,
        //       scale:
        //           Tween<double>(begin: 0.0, end: 1.0).animate(curvedAnimation));
        // },
        //transitionDuration: Duration(seconds: 2)
        // return RotationTransition(
        //     child: child,
        //     turns: Tween(begin: 0.0, end: 1.0).animate(curvedAnimation));
        return FadeTransition(
            child: child,
            opacity:
                Tween<double>(begin: 0.0, end: 1.0).animate(curvedAnimation));
      },
    );
  }
}
