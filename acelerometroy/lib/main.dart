import 'package:flutter/material.dart';
import 'package:sensors/sensors.dart';

main() => runApp(Principal());

class Principal extends StatefulWidget{
  @override
  State<StatefulWidget>createState(){
    return CambioTema();
  }
}

class CambioTema extends State{

  AccelerometerEvent acelerometro;

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: tema,
      home: Scaffold(
          appBar: AppBar(
            title: Text('Tema Acelerometro'),
          ),
          body:

          Column(
            children: <Widget>[
              Center(
                child: Text('\n\n\n\n\n\n\n\n\n\nTema en color: $text', style: ts),
              ),

              Text('Funcionamiento: La aplicacion cambiara de color de tema gracias a la ayuda del acelerador del telefono'
                  ' en este caso se usa el eje y.\n')

            ],
          )

      ),
    );
  }

  @override
  void initState(){
    super.initState();
    accelerometerEvents.listen(
            (AccelerometerEvent event){
          setState(() {
            acelerometro = event;

            switch(acelerometro.y.round()){
              case 0:
                tema = tema1;
                text = text1;
                ts = ts1;
                break;
              case 1:
                tema = tema1;
                text = text1;
                ts = ts1;
                break;
              case 3:
                tema = tema2;
                text = text2;
                ts = ts2;
                break;
              case 4:
                tema = tema2;
                text = text2;
                ts = ts2;
                break;
              case 6:
                tema = tema3;
                text = text3;
                ts = ts3;
                break;
              case 7:
                tema = tema3;
                text = text3;
                ts = ts3;
                break;
              case 9:
                tema = tema4;
                text = text4;
                ts = ts4;
                break;
              case 10:
                tema = tema4;
                text = text4;
                ts = ts4;
                break;
              default:
                tema= tema0;
                text = text0;
                ts = ts0;
                break;
            }
          });
        });
  }

}

var tema = ThemeData(primarySwatch: Colors.deepPurple);
var tema0 = ThemeData(primarySwatch: Colors.deepPurple);
var tema1 = ThemeData(primarySwatch: Colors.red);
var tema2 = ThemeData(primarySwatch: Colors.orange);
var tema3 = ThemeData(primarySwatch: Colors.green);
var tema4 = ThemeData(primarySwatch: Colors.blue);

var ts  = TextStyle(color: Colors.deepPurple, fontSize: 30);
var ts0 = TextStyle(color: Colors.deepPurple, fontSize: 30);
var ts1 = TextStyle(color: Colors.red, fontSize: 30);
var ts2 = TextStyle(color: Colors.orange, fontSize: 30);
var ts3 = TextStyle(color: Colors.green, fontSize: 30);
var ts4 = TextStyle(color: Colors.blue, fontSize: 30);

String text = 'Purpura';
String text0 = 'Purpura';
String text1 = 'Rojo';
String text2 = 'Naranja';
String text3 = 'Verde';
String text4 = 'Azul';
