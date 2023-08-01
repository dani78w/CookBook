import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      checkerboardOffscreenLayers: false,
      checkerboardRasterCacheImages: false,
      showSemanticsDebugger: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      // Deshabilitar el banner "Debug" en la esquina superior derechad
      debugShowMaterialGrid: false,
      // Deshabilitar la cuadrícula de Material
      showPerformanceOverlay: false,
      // Deshabilitar el rendimiento de la superposición
      home: firstScreen(),
    );
  }

  @override
  Widget firstScreen() {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 12,
          elevation: 100,
          shadowColor: Colors.black,
          color: Colors.white,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          surfaceTintColor: Colors.white,
          height: 72,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.home, size: 30, color: Colors.black),
                    onPressed: () {
                      1;
                    },
                  ),

                  SizedBox(width: 58), // Espacio vacío para el ícono central
                  IconButton(
                    icon: Icon(Icons.person, size: 30, color: Colors.black),
                    onPressed: () {
                      2;
                    },
                  ),
                ],
              ),
              const Spacer(
                flex: 1,
              ),
            ],
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        highlightElevation: 0,
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 40,
        ),
        shape: const StadiumBorder(),
        elevation: 100,
        backgroundColor: Colors.black,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            clipBehavior: Clip.none,
              forceMaterialTransparency: true,
              title:
              GestureDetector(
                onTap: () {

                },

                child: Container(
                  width: 200,
                  padding: EdgeInsets.all(7),
                  decoration:
                  BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),

                  ),


                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 25,
                      ),
                      Container(
                        width: 10,),
                      Text(
                        'Buscar',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,

                        ),
                      ),

                    ],
                  ),
                ),
              ),

            actions: [

            ],
            surfaceTintColor: Colors.transparent,
            foregroundColor: Colors.blueAccent,
            floating: true,
            // Establece como true para que la AppBar se oculte en el desplazamiento hacia abajo
            pinned: false,
            // Establece como false para que la AppBar se oculte completamente al desplazarse hacia abajo
            snap:
                true, // Establece como true para que la AppBar vuelva a aparecer al desplazarse hacia arriba
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  height: 30,
                ),
                dateofPost(),
                postwid(),
                dateofPost(),
                postwid(),
                postwid(),
                postwid(),
                postwid(),
                dateofPost(),
                postwid(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget postwid() {
    return Expanded(
      flex: 1,
      child: Container(
        clipBehavior: Clip.antiAlias,
        margin: EdgeInsets.all(25),
        height: 500,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 1.5),
          borderRadius: BorderRadius.circular(13),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(1),
              spreadRadius: 5,
              blurRadius: 34,
              offset: const Offset(10, 10), // changes position of shadow
            ),
            BoxShadow(
              color: Colors.white.withOpacity(1),
              spreadRadius: 10,
              blurRadius: 30,
              offset: const Offset(-10, -10), // changes position of shadow
            ),
          ],
          gradient: LinearGradient(
              colors: [Colors.cyanAccent, Colors.orangeAccent],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              transform: GradientRotation(1)),
        ),
        child: Flex(
          direction: Axis.vertical,
          children: [
            Expanded(
              flex: 7,
              child: Container(),
            ),
            Expanded(
              flex: 1,
              child: Container(
                  foregroundDecoration: BoxDecoration(
                    /*
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 10,
                        blurRadius: 10,
                        offset:
                            const Offset(0, 10), // changes position of shadow
                      ),
                      BoxShadow(
                        color: Colors.white.withOpacity(0.1),
                        spreadRadius: 10,
                        blurRadius: 10,
                        offset:
                            const Offset(10, 0), // changes position of shadow
                      ),

                    ],
                    */
                    borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(13), top: Radius.circular(0)),
                    border: Border.all(
                        color: Colors.white, width: 1, strokeAlign: 1.5),
                  ),
                  color: Colors.white,
                  child: Flex(
                    direction: Axis.horizontal,
                    children: [
                      Expanded(
                        flex: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.account_circle,
                                  size: 15,
                                ),
                                Container(
                                  width: 5,
                                ),
                                Text("Daniel Arribas"),
                                Spacer(
                                  flex: 10,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 10,
                                ),
                                Text("Tortilla de patatas ".toUpperCase(),
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Row(children: [
                          Text("24K",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12)),
                          Icon(
                            Icons.message,
                            color: Colors.black,
                            size: 18,
                          ),
                          Spacer(
                            flex: 1,
                          ),
                          Text("24K",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12)),
                          Icon(
                            Icons.favorite,
                            color: Colors.black,
                            size: 18,
                          ),
                          Spacer(
                            flex: 1,
                          ),
                        ]),
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget dateofPost() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        height: 50,
      ),
      Text(
        "14-05-2023",
        style: TextStyle(color: Colors.black, fontSize: 13),
      ),
    ]);
  }
}
