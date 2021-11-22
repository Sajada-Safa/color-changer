import 'package:flutter/material.dart';
class change_color extends StatefulWidget {
  const change_color({Key? key}) : super(key: key);

  @override
  _change_colorState createState() => _change_colorState();
}

class _change_colorState extends State<change_color> {
  Color outBoxColor=Colors.grey;
  Color triangleColor=Colors.black87;
  Color insideBoxColor=Colors.teal;
  Color circleColor=Colors.brown;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Colour Changer'
        ),
        elevation: 0,
        backgroundColor: Colors.black87,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  margin:EdgeInsets.all(40),
                  height: 300,
                  width: 500,
                  decoration: BoxDecoration(
                    color: outBoxColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                CustomPaint(
                  size: Size(250,250),
                  painter:TriangleShapePainter(triangleColor),
                ),
                Container(
                  margin:EdgeInsets.only(top: 120),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: insideBoxColor,
                ),
                ),
                Container(
                  margin:EdgeInsets.only(top: 120),
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: circleColor,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Outside Box',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                    ElevatedButton(onPressed: (){
                      setState(() {
                        outBoxColor=Colors.lightBlueAccent;
                      });
                    },
                    child: Text('Blue')),
                    ElevatedButton(onPressed: (){
                      setState(() {
                        outBoxColor=Colors.purple;
                      });
                    },
                        child: Text('Purple')),
                    ElevatedButton(onPressed: (){
                      setState(() {
                        outBoxColor=Colors.cyan;
                      });
                    },
                        child: Text('Cyan')),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Inside Box',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                    ElevatedButton(onPressed: (){
                      setState(() {
                        insideBoxColor=Colors.lightGreenAccent;
                      });
                    },
                        child: Text('Green')),
                    ElevatedButton(onPressed: (){
                      setState(() {
                        insideBoxColor=Colors.redAccent;
                      });
                    },
                        child: Text('Red')),
                    ElevatedButton(onPressed: (){
                      setState(() {
                        insideBoxColor=Colors.amber;
                      });
                    },
                        child: Text('Amber')),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Triangle',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                    ElevatedButton(onPressed: (){
                      setState(() {
                        triangleColor=Colors.lime;
                      });
                    },
                        child: Text('Lime')),
                    ElevatedButton(onPressed: (){
                      setState(() {
                        triangleColor=Colors.brown;
                      });
                    },
                        child: Text('Brown')),
                    ElevatedButton(onPressed: (){
                      setState(() {
                        triangleColor=Colors.indigo;
                      });
                    },
                        child: Text('Indigo')),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Circle',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                    ElevatedButton(onPressed: (){
                      setState(() {
                        circleColor=Colors.grey;
                      });
                    },
                        child: Text('Grey')),
                    ElevatedButton(onPressed: (){
                      setState(() {
                        circleColor=Colors.orange;
                      });
                    },
                        child: Text('Orange')),
                    ElevatedButton(onPressed: (){
                      setState(() {
                        circleColor=Colors.pink;
                      });
                    },
                        child: Text('Pink')),

                  ],
                ),
              ],
            ),
              ],
            ),
        ),
      );
  }
}



class TriangleShapePainter extends CustomPainter {
  final Color color;

  TriangleShapePainter(this.color);
  @override
  void paint( Canvas canvas, Size size){
    final paint = Paint();
      paint.color=color;
      var path=Path();
      path.moveTo(size.width/2,0);
      path.lineTo(0,size.height);
      path.lineTo(size.height,size.width);
      path.close();

      canvas.drawPath(path,paint);
  }
  @override
  bool shouldRepaint (CustomPainter oldDelegate){
    return false;
  }
}


