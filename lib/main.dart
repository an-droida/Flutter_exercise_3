import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Planets", theme: ThemeData.dark(), home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String planetImg =
      "https://i.pinimg.com/736x/66/dc/ac/66dcacbd4d54ca59eabe38090dcb0933.jpg";
  String planetName = "Earth";

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(
        title: Text("Galaxy"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        if (Orientation.portrait == orientation) {
          return portraitScreen(planetImg,planetName);
        } else {
          return landscapeScreen(planetImg,planetName);
        }
      }),
    );
  }
}

class portraitScreen extends StatefulWidget {
   String planetImg;
   String planetName;

  portraitScreen( this.planetImg, this.planetName);

  @override
  _portraitScreenState createState() => _portraitScreenState();
}

class _portraitScreenState extends State<portraitScreen> {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "${widget.planetName}",
          style: TextStyle(fontSize: 25, color: Colors.blue),
        ),
        SizedBox(
          height: 30,
        ),
        Image.network(
          widget.planetImg,
          height: 300,
          width: 300,
        ),
        SizedBox(
          height: 30,
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    widget.planetImg =
                    "https://i.pinimg.com/736x/66/dc/ac/66dcacbd4d54ca59eabe38090dcb0933.jpg";
                    widget.planetName = "Earth";
                  });
                },
                child: Text("Earth"),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    widget.planetImg =
                    "https://netrinoimages.s3.eu-west-2.amazonaws.com/2008/04/08/10527/49648/planet_jupiter_3d_model_c4d_max_obj_fbx_ma_lwo_3ds_3dm_stl_372826.jpg";
                    widget.planetName = "Jupiter";
                  });
                },
                child: Text("Jupiter"),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    widget.planetImg =
                    "https://preview.free3d.com/img/2018/12/2269259007468242389/tdpea9h9-900.jpg";
                    widget.planetName = "Mars";
                  });
                },
                child: Text("Mars"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}


class landscapeScreen extends StatefulWidget {
  String planetImg;
  String planetName;

  landscapeScreen( this.planetImg, this.planetName);

  @override
  _landscapeScreenState createState() => _landscapeScreenState();
}

class _landscapeScreenState extends State<landscapeScreen> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            Image.network(
              widget.planetImg,
              height: 250,
              width: 250,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "${widget.planetName}",
              style: TextStyle(fontSize: 25, color: Colors.blue),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  widget.planetImg =
                  "https://i.pinimg.com/736x/66/dc/ac/66dcacbd4d54ca59eabe38090dcb0933.jpg";
                  widget.planetName = "Earth";
                });
              },
              child: Text("Earth"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  widget.planetImg =
                  "https://netrinoimages.s3.eu-west-2.amazonaws.com/2008/04/08/10527/49648/planet_jupiter_3d_model_c4d_max_obj_fbx_ma_lwo_3ds_3dm_stl_372826.jpg";
                  widget.planetName = "Jupiter";
                });
              },
              child: Text("Jupiter"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  widget.planetImg =
                  "https://preview.free3d.com/img/2018/12/2269259007468242389/tdpea9h9-900.jpg";
                  widget.planetName = "Mars";
                });
              },
              child: Text("Mars"),
            ),
          ],
        )
      ],
    );
  }
}


