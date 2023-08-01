import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
      initialRoute: '/landing',
      routes: {
        '/first': (context) => FirstScreen(),
        '/second': (context) => SecondScreen(),
        '/third': (context) => ThirdScreen(),
        '/fourth': (context) => FourthScreen(),
        '/landing': (context) => LandingScreen(),
      },
      navigatorKey: null,
    );
  }


}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 12,
          elevation: 10,
          shadowColor: Colors.black,
          color: Colors.black,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          surfaceTintColor: Colors.transparent,
          height: 82,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconButton(
                    highlightColor: Colors.cyan,
                    icon: Icon(Icons.home, size: 30, color: Colors.white),
                    onPressed: () {
                      1;
                    },
                  ),
                  IconButton(
                    highlightColor: Colors.purple,
                    icon: Icon(Icons.location_searching_rounded,
                        size: 30, color: Colors.white),
                    onPressed: () {
                      Navigator.pushNamed(
                          context, '/second'); // Navega a la Segunda Pantalla
                    },
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 39),
                    width: 98,
                    child: Text(
                      "COOKBOOK",
                      style: TextStyle(
                          letterSpacing: 2.0,
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w900),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  // Espacio vacío para el ícono central
                  IconButton(
                    highlightColor: Colors.green,
                    icon: Icon(Icons.person, size: 30, color: Colors.white),
                    onPressed: () {
                      Navigator.pushNamed(
                          context, '/third'); // Navega a la Segunda Pantalla
                    },
                  ),
                  IconButton(
                    highlightColor: Colors.orange,
                    icon: Icon(Icons.settings, size: 30, color: Colors.white),
                    onPressed: () {
                      Navigator.pushNamed(
                          context, '/fourth'); // Navega a la Segunda Pantalla
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
            automaticallyImplyLeading: false,
            clipBehavior: Clip.none,
            forceMaterialTransparency: true,
            title: GestureDetector(
              onTap: () {},
              child: Container(
                width: 200,
                padding: EdgeInsets.all(7),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 25,
                    ),
                    Container(
                      width: 10,
                    ),
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

            actions: [],
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
                historias(),
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
    return Container(
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.all(25),
      constraints: BoxConstraints(
        minHeight: 500,
        minWidth: 500,
      ),
      height: 500,
      width: 30,
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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

  @override
  Widget historias() {
    var iconos = [
      Icon(
        Icons.cookie,
        color: Colors.white,
        size: 40,
      ),
      Icon(
        Icons.cake,
        color: Colors.white,
        size: 40,
      ),
      Icon(
        Icons.fastfood,
        color: Colors.white,
        size: 34,
      ),
      Icon(
        Icons.biotech,
        color: Colors.white,
        size: 40,
      ),
      Icon(
        Icons.spoke_outlined,
        color: Colors.white,
        size: 40,
      ),
      Icon(
        Icons.food_bank,
        color: Colors.white,
        size: 40,
      ),
      Icon(
        Icons.person_2_rounded,
        color: Colors.white,
        size: 40,
      ),
    ];
    return Container(
      height: 70,
      child: ListView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          // Configuramos el scroll horizontal

          children: [
            Container(
              width: 20,
            ),
            for (int i = 0; i < iconos.length; i++)
              Container(
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.black,
                  gradient: LinearGradient(
                    colors: [Colors.cyanAccent, Colors.greenAccent],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter, // Punto final del degradado
                  ),
                ),
                width: 60,
                height: 60,
                child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                          color: Colors.blue,
                          width: 1,
                        ),
                        color: Colors.black,
                      ),
                      width: 55,
                      height: 55,
                      child: iconos[i],
                    )),
              ),
          ]),
    );
  }

}

class SecondScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            notchMargin: 12,
            elevation: 10,
            shadowColor: Colors.black,
            color: Colors.black,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            surfaceTintColor: Colors.transparent,
            height: 82,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    IconButton(
                      highlightColor: Colors.cyan,
                      icon: Icon(Icons.home, size: 30, color: Colors.white),
                      onPressed: () {
                        Navigator.popAndPushNamed(
                            context, '/first'); // Navega a la Segunda Pantalla
                      },
                    ),
                    IconButton(
                      highlightColor: Colors.purple,
                      icon: Icon(Icons.location_searching_rounded,
                          size: 30, color: Colors.white),
                      onPressed: () {
                        1;
                      },
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 39),
                      width: 98,
                      child: Text(
                        "COOKBOOK",
                        style: TextStyle(
                            letterSpacing: 2.0,
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w900),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    // Espacio vacío para el ícono central
                    IconButton(
                      highlightColor: Colors.green,
                      icon: Icon(Icons.person, size: 30, color: Colors.white),
                      onPressed: () {
                        Navigator.popAndPushNamed(
                            context, '/third'); // Navega a la Segunda Pantalla

                      },
                    ),
                    IconButton(
                      highlightColor: Colors.orange,
                      icon: Icon(Icons.settings, size: 30, color: Colors.white),
                      onPressed: () {
                        Navigator.popAndPushNamed(
                            context, '/fourth'); // Navega a la Segunda Pantalla

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
        body: Center(
          child: Expanded(
            child: Container(
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.search, size: 100, color: Colors.black),
                  Text("DISCOVER",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  Text("NEW RECIPES",
                      style: TextStyle(
                          letterSpacing: 8.0,
                          color: Colors.black,
                          fontSize: 10,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
        ));
  }
}

class ThirdScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            notchMargin: 12,
            elevation: 10,
            shadowColor: Colors.black,
            color: Colors.black,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            surfaceTintColor: Colors.transparent,
            height: 82,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    IconButton(
                      highlightColor: Colors.cyan,
                      icon: Icon(Icons.home, size: 30, color: Colors.white),
                      onPressed: () {
                        Navigator.popAndPushNamed(
                            context, '/first'); // Navega a la Segunda Pantalla
                      },
                    ),
                    IconButton(
                      highlightColor: Colors.purple,
                      icon: Icon(Icons.location_searching_rounded,
                          size: 30, color: Colors.white),
                      onPressed: () {
                        Navigator.popAndPushNamed(
                            context, '/second'); // Navega a la Segunda Pantalla

                      },
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 39),
                      width: 98,
                      child: Text(
                        "COOKBOOK",
                        style: TextStyle(
                            letterSpacing: 2.0,
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w900),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    // Espacio vacío para el ícono central
                    IconButton(
                      highlightColor: Colors.green,
                      icon: Icon(Icons.person, size: 30, color: Colors.white),
                      onPressed: () {
                        2;
                      },
                    ),
                    IconButton(
                      highlightColor: Colors.orange,
                      icon: Icon(Icons.settings, size: 30, color: Colors.white),
                      onPressed: () {
                        Navigator.popAndPushNamed(
                            context, '/fourth'); // Navega a la Segunda Pantalla

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
        body: Center(
          child: Expanded(
            child: Container(
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.person, size: 100, color: Colors.black),
                  Text("USER",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  Text("WHERE YOU ARE",
                      style: TextStyle(
                          letterSpacing: 8.0,
                          color: Colors.black,
                          fontSize: 10,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
        ));
  }
}

class FourthScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            notchMargin: 12,
            elevation: 10,
            shadowColor: Colors.black,
            color: Colors.black,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            surfaceTintColor: Colors.transparent,
            height: 82,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    IconButton(
                      highlightColor: Colors.cyan,
                      icon: Icon(Icons.home, size: 30, color: Colors.white),
                      onPressed: () {
                        Navigator.popAndPushNamed(
                            context, '/first'); // Navega a la Segunda Pantalla
                      },
                    ),
                    IconButton(
                      highlightColor: Colors.purple,
                      icon: Icon(Icons.location_searching_rounded,
                          size: 30, color: Colors.white),
                      onPressed: () {
                        Navigator.popAndPushNamed(
                            context, '/second'); // Navega a la Segunda Pantalla
                      },
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 39),
                      width: 98,
                      child: Text(
                        "COOKBOOK",
                        style: TextStyle(
                            letterSpacing: 2.0,
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w900),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    // Espacio vacío para el ícono central
                    IconButton(
                      highlightColor: Colors.green,
                      icon: Icon(Icons.person, size: 30, color: Colors.white),
                      onPressed: () {
                        Navigator.popAndPushNamed(
                            context, '/third'); // Navega a la Segunda Pantalla

                      },
                    ),
                    IconButton(
                      highlightColor: Colors.orange,
                      icon: Icon(Icons.settings, size: 30, color: Colors.white),
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
        body: Center(
          child: Expanded(
            child: Container(
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.settings, size: 100, color: Colors.black),
                  Text("SETTINGS",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  Text("ALL THE PREFERENCES",
                      style: TextStyle(
                          letterSpacing: 8.0,
                          color: Colors.black,
                          fontSize: 10,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
        ));
  }
}

class LandingScreen extends StatelessWidget {
  int _currentStep = 0;


  List<Widget> steps = [
    // Paso 1
    Card(
      color: Colors.blue,
      child: Center(
        child:
          Icon(Icons.home_outlined, size: 100, color: Colors.white),
      ),
    ),
    // Paso 2
    Card(
      color: Colors.green,
      child: Center(
        child:
          Icon(Icons.location_searching_rounded, size: 100, color: Colors.white),
      ),
    ),
    // Paso 3
    Card(
      color: Colors.redAccent,
      child: Center(
        child:
        Icon(Icons.food_bank, size: 100, color: Colors.white),

      ),
    ),
    Card(
      elevation: 0,
      color: Colors.white,
      child: Center(
        child:
        //StepperPage(),
        Loggin()
      ),
    ),


  ];

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
          bottomSheet:
          BottomSheet(
            builder: (BuildContext context) {
                return Container(
                  height: 82,
                  color: Colors.black,
                  child: Center(
                    child: Text(
                      "GETTING STARTED",
                      style: TextStyle(
                          letterSpacing: 2.0,
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w900),
                      textAlign: TextAlign.center,
                    ),
                  ),
                );
              },
            onClosing: () {
            Navigator.popAndPushNamed(context, '/first');
          },

          ),

          extendBody: true,
          body: Expanded(
            child:
          Center(
            child:
            CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 1.0, // Relación de aspecto
                enableInfiniteScroll: false, // Desplazamiento infinito
                viewportFraction: 0.8, // Hace que el ancho ocupe todo el espacio
                pageSnapping: true, // Hace que el scroll se detenga en cada paso
                enlargeStrategy: CenterPageEnlargeStrategy.scale,
                // Agrandar el paso
                onScrolled: (value) {
                  // Cuando se desplaza
                      if (value == 3) {
                        Navigator.popAndPushNamed(context, '/first');
                      }
                },
                pauseAutoPlayOnTouch: true,
                scrollPhysics: BouncingScrollPhysics(), // Física del scroll
                autoPlay: true, // Establece en 'false' si deseas que no se mueva automáticamente
                autoPlayInterval: Duration(seconds:1), // Intervalo entre cada paso
                enlargeCenterPage: true, // Hace que el paso actual sea más grande
                pauseAutoPlayInFiniteScroll: true,
              ),
              items: steps,
            ),
            )
            ,)


      );
  }
}
class Loggin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
          child: Icon(Icons.arrow_forward_ios),
          onPressed: () {
            Navigator.popAndPushNamed(context, '/first');
          },
        );
  }
}
/*
class StepperPage extends StatefulWidget {
  @override
  _StepperPageState createState() => _StepperPageState();
}

class _StepperPageState extends State<StepperPage> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return
      Stepper(

          onStepCancel: () {
            if (_currentStep > 0) {
              setState(() {
                _currentStep--;
              });
            }
          },
        onStepContinue: () {
          if (_currentStep >= 2) {
            Navigator.popAndPushNamed(context, '/first');
          } else {
            setState(() {
              _currentStep++;
            });
          }
        },

          elevation:0,

        physics: ScrollPhysics(),
        onStepTapped: (step) => setState(() => _currentStep = step)
        , currentStep: _currentStep,
        controlsBuilder: null,
        steps: [

        Step(
          title: new Text('Email'),
          content: Column(
            children: <Widget>[
              TextFormField(
                decoration:
                InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide(color:Colors.black)),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color:Colors.black))),
              ),
            ],
          ),
        ),
        Step(
          title: new Text('Password'),
          content: Column(
            children: <Widget>[
              TextFormField(
                decoration:
                InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide(color:Colors.black)),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color:Colors.black))),
              ),

            ],
          ),
        ),
        Step(

            state: StepState.complete,
          title: new Text('Verify'),
          content: Column(
            children: <Widget>[
              Container(
                  padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,

                  borderRadius: BorderRadius.circular(10),
                ),
                child:
                Column(
                  children: [
                    Icon(Icons.email_outlined, size: 40, color: Colors.black,),
                    Text("CHECK YOUR EMAIL",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            letterSpacing: 2.0,
                            color: Colors.black,

                            fontSize: 20,
                            fontWeight: FontWeight.w200)),
                  ],
                )
              )


            ],
          ),
        ),
      ],);
  }
} // Move the initialization to the constructor body

*/

