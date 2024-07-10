import 'package:flutter/material.dart';
import 'package:svg_path_parser/svg_path_parser.dart';

/// A Stateful widget that paints flutter logo using [CustomPaint] and [Path].
class MapaSVG extends StatefulWidget {
  MapaSVG({super.key});
  @override
  State<MapaSVG> createState() => _MapaSVGState();
  final paths = [
    ['m48.75 95.97-25.91-25.74 14.32-14.57 40.39 40.31z', Color(0xff02539a)],
    ['m22.52 70.25 25.68-25.68h28.87l-39.95 39.95z', Color(0xd745d1fd)],
    ['m.29 47.85 14.58 14.57 62.2-62.2h-29.02z', Color(0xff45d1fd)],
    //['M2,5 S2,-2 4,5 S7,8 8,4', Colors.blue],
    /* [
      'M317.91,66.52a7.09,7.09,0,0,0-.39-.78,24.06,24.06,0,0,0-4-5.44c-1.57-1.77-2.86-3.76-4.44-5.51a22.88,22.88,0,0,0-2.74-2.56,24.47,24.47,0,0,1-2.53-1.82A72.29,72.29,0,0,0,297,44.62a40.37,40.37,0,0,0-8.35-4.9,85.76,85.76,0,0,0-12.1-4.89,72.32,72.32,0,0,0-10.17-2.32c-2.31-.31-4.6-.68-6.9-1a73.37,73.37,0,0,0-7.7-.67c-1.78-.05-3.56-.15-5.35-.21-.36,0-.62,0-.64-.51a31.17,31.17,0,0,0-.89-5.64c3.82.64,7.54,1.36,11.23,2.25,2.32.55,4.64,1.16,7,1.71a8.89,8.89,0,0,0,2.36.38c.4,0,.62-.14.64-.56,0-.22.07-.44.06-.65a18.6,18.6,0,0,0-1.21-6.48,14.3,14.3,0,0,0-5.08-6.27c-3.15-2.22-6.67-2.48-10.33-1.69-.23.05-.45.19-.76,0l.76-.78c3.49-3.36,6.85-6.85,10.54-10,.65-.55.61-.85-.15-1.07A26.82,26.82,0,0,0,252.43,0c-1.31,0-2.61,0-3.92.13a16.82,16.82,0,0,0-11,5.1,9.8,9.8,0,0,0-3,6.6,12.9,12.9,0,0,0,0,2.17,16.08,16.08,0,0,0-6.29-2.34,12.43,12.43,0,0,0-7.86,1.66,24.13,24.13,0,0,0-6.39,5.56,6.08,6.08,0,0,0-1.39,2.69c-.24,1-.12,1.18.89,1.12.61-.05,1.22-.18,1.84-.22,2-.13,3.94-.57,5.91-.8a33.31,33.31,0,0,1,5.63-.52c1,.06,2.06,0,3.09,0a3.41,3.41,0,0,1-.85.71,18.41,18.41,0,0,0-3.59,3,18,18,0,0,0-3.78,7.89c-.1.45-.22.7-.72.75-.24,0-.49.11-.74.15-2.07.4-4.13.79-6.2,1.22a97.69,97.69,0,0,0-9.59,2.86c-4.54,1.42-8.89,3.35-13.27,5.21A78.83,78.83,0,0,0,182,47.45a65.26,65.26,0,0,0-5.76,4.08A39,39,0,0,0,171.71,47a88.86,88.86,0,0,0-17.57-12,15.33,15.33,0,0,0,.69-3.48A8.21,8.21,0,0,0,153.5,26a5.14,5.14,0,0,0-4.8-2.38c-2.07.12-4.12.48-6.47.79.77-3.1,2-5.87,2.72-9l-.06,0-10.35,1.75a18.76,18.76,0,0,0-1.54,3.7c.66.5,1.46-.08,2.1.32.44.39.26.86.12,1.3l-1.41,4.33c-1.44-.43-2.9-.82-4.36-1.19l2.05-6.16c.17-.5.55-.95.32-1.64-2.3,0-4.5,1-6.81,1-1.38.73-3,.36-4.47,1.2a20,20,0,0,0-1.22,3.44c.76.47,1.66-.32,2.42.5a.07.07,0,0,1,0,.05,104.76,104.76,0,0,0-11-1.26c-1-2-3.16-2.68-5.54-1.49a9.75,9.75,0,0,0-1.94,1.32c-2.7,0-5.4.15-8.11.4-3.25.31-6.49.74-9.7,1.33-.74.13-1.47.29-2.2.44a10.08,10.08,0,0,0-4.94-5.35,11.49,11.49,0,0,0-9.17-.6,16.89,16.89,0,0,0-7.25,3.71c-1.44,1.18-2.81,2.45-4.23,3.69a6,6,0,0,0-5.13-2.79,6.37,6.37,0,0,0-5.75,3.52A20.5,20.5,0,0,0,37,26c1-1.53,2.07-2.84,3.11-4.13a72.7,72.7,0,0,1,7.62-8.26c1-.92,2-1.85,3-2.82a.83.83,0,0,0-.36-1.48c-.9-.28-1.81-.52-2.7-.81a8,8,0,0,0-4.4-.14,22.71,22.71,0,0,0-5.69,2.13,20.19,20.19,0,0,0-10.08,11.8c-.3.92-.5,1.88-.78,2.92l-.36-.52a16.37,16.37,0,0,0-4.31-4.43,27.13,27.13,0,0,0-7.42-3.6,11.25,11.25,0,0,0-10,1.54,13.65,13.65,0,0,0-4,4.69,9.82,9.82,0,0,0-.6,1.27c-.23.58-.11.87.43,1.12a3.19,3.19,0,0,0,.73.21c2.92.59,5.78,1.36,8.65,2.15,3,.83,6,1.94,9,2.83.19.06.47,0,.44.35-.05,0-.09.12-.15.14A28.76,28.76,0,0,0,11,35.16a17.94,17.94,0,0,0-7.1,9.15A26.5,26.5,0,0,0,2.43,51a19.18,19.18,0,0,0,.85,7.61,78.21,78.21,0,0,0,3.65,8.28,2,2,0,0,0,.21.38c.33.42.61.43,1,0A5.68,5.68,0,0,0,8.9,66c1.68-3.39,3.45-6.73,5.35-10C16,52.9,18,50,20,47.06c.13-.18.2-.41.54-.5-.05.26-.08.44-.13.61a15.85,15.85,0,0,0-.73,5.37A12.15,12.15,0,0,0,23.42,61a2.69,2.69,0,0,0,.71.5c.74.35,1,.27,1.17-.5s.33-1.49.49-2.23c1-4.54,2.1-9.06,3.43-13.51a15,15,0,0,1,1-2.85,21.27,21.27,0,0,1,1.05,3.65c.59,2.21,1.43,4.35,1.94,6.58a1.7,1.7,0,0,1-.46,1.73,84.33,84.33,0,0,0-7.44,9.81,25.35,25.35,0,0,0-2.06,3.47c-.37.82-.13,1.14.77,1.16a2.09,2.09,0,0,0,2.32-1.18c.06-.13.13-.28.39-.23.76,2.06,1.57,4.15,2.3,6.27,1.3,3.82,1.87,7.83,2.78,11.75.09.39,0,.62-.4.73-.78.2-1,.76-1.1,1.54-.07,1-.06,1.89,0,2.84,0,1.64-.51,2,2,2.18.42,0,.58.16.62.56a20.06,20.06,0,0,0,.3,2c1,4.32,1.45,8.73,2.18,13.09.45,2.72.82,5.45,1.3,8.17.57,3.14.91,6.31,1.32,9.48.27,2,.44,4.11.72,6.16.46,3.37,1,6.75,1.49,10.12a31.46,31.46,0,0,0,.87,4.59c.29.94.64,1.21,1.56,1.11,2.45-.24,4.92-.31,7.36-.65h.05a4.43,4.43,0,0,0-.81,2.46,1,1,0,0,0,.68,1,3.35,3.35,0,0,0,1.26.22,22.29,22.29,0,0,1,4.32.17,9,9,0,0,0,1.64.2,16.67,16.67,0,0,0,4.61-.71c1.59-.44,3.14-1,4.7-1.58.66-.24,1.28-.58,1.93-.85a2,2,0,0,0,.91-.74c.21-.34-.16-.56-.22-.84s-.06-.31-.09-.46c-.08-.41-.15-.82-.22-1.23.76-.06,1.52-.13,2.28-.17,1.22-.08,2.44-.18,3.67-.28l-.33-1.05a7.08,7.08,0,0,1-.36-2.62,2.49,2.49,0,0,1,1.56-2.4,2.43,2.43,0,0,1,2.94.72,21.15,21.15,0,0,1,2.91,4.54c.53,1.07,1,2.16,1.44,3.26,1.11-.16,2.2-.38,3.32-.46,1.28-.09,2.56-.26,3.83-.44a21.35,21.35,0,0,0,4.53-1.45,4,4,0,0,0,1.28-.88,1.07,1.07,0,0,0,.18-.19l1.15,0c1.22-.05,2.44-.08,3.66-.1a4.4,4.4,0,0,0,.58,1.49,2,2,0,0,0,.82.76q1.92-3.9,4.16-7.66a71.77,71.77,0,0,1,6.13-8.64A52.52,52.52,0,0,1,118,124a5.5,5.5,0,0,1,1.48-.95,1.49,1.49,0,0,0,.87-.59c.15-.29.48-.28.78-.3,2.32-.14,4.62-.45,6.92-.71,2.08-.23,4.17-.44,6.26-.54,1.12-.05,2.24-.13,3.36-.2-.1-1.51-.19-3-.28-4.54-.05-1-.24-2-.37-3s.09-1.2.95-1.32a15.24,15.24,0,0,1,2.61-.22,59.62,59.62,0,0,0,8.75-.76c3.37-.4,6.75-.85,10.12-1.29,3.57-.46,7.17-.41,10.76-.6,2.81-.15,5.63,0,8.44-.24,3.18-.31,6.37-.13,9.54-.3,2.77-.15,5.54-.08,8.3-.26,4.69-.31,9.4-.34,14.09-.57,5.13-.25,10.25-.07,15.38-.25,1.19,0,2.38-.22,3.58-.26,1.44,0,1.45,0,2,1.37a3.85,3.85,0,0,1,.32,1.76,71.88,71.88,0,0,0,0,7.34c0,.55,0,1.11,0,1.66.53,0,1.06.05,1.58,0,2.17,0,4.33.15,6.49.22a28.68,28.68,0,0,1,6.89,1,2.25,2.25,0,0,1,1.51,1.1c.56,1,1.29,1.89,1.89,2.87a96.81,96.81,0,0,1,5.94,11,95.26,95.26,0,0,1,5.59,15.27l.53.21c-.13.13-.25.26-.37.4.26,1,.51,2,.72,3,.61,2.85,1.35,5.67,2,8.51a2.29,2.29,0,0,1,.12.37.21.21,0,0,0,.17.2c.15,0,.23-.06.29-.2.18-.45.36-.91.57-1.35a32,32,0,0,1,5.84-8.34,28.07,28.07,0,0,1,4.09-3.69,3.29,3.29,0,0,1,1.87-.8c.73,0,1,.26.82.95a10.1,10.1,0,0,1-.65,1.65,85.86,85.86,0,0,0-3.93,10.48,40.18,40.18,0,0,0,8.13.71,24.42,24.42,0,0,0,2.59-.28c.52-.19,1.05-.37,1.58-.54a29.48,29.48,0,0,1,3.2-.83c.29-.12.58-.22.86-.35a3.42,3.42,0,0,0,1.07-.7c.64-.67.64-1-.15-1.46a39.64,39.64,0,0,0-7.65-3.47c-.65-.21-1.67,0-1.89-.61s.2-1.41.35-2.13a3.74,3.74,0,0,0,.12-.45c.09-.85.6-1.22,1.4-1.42a2.24,2.24,0,0,0,1.87-2.35,9.45,9.45,0,0,1,.42-2.18c.3-1,.55-2,.79-3,1.91,0,3.81-.09,5.72-.18.8,0,1.6,0,2.4,0a34.06,34.06,0,0,0,5.61-.64c.6-.09.76-.35.56-.88a2.18,2.18,0,0,1-.05-1c.1-1.3.22-2.59.35-3.89.17-1.66.17-3.34.32-5,.38-4.15,1-8.27,1.67-12.39.49-2.86.95-5.72,1.54-8.56s1.24-5.46,1.8-8.19c.37-1.84.64-3.71,1-5.56,1.1.1,1.21.06,1.54-1,.45-1.42.91-2.83,1.25-4.29.23-1,.1-2,.42-3,1.18-3.59,2.06-7.27,2.9-10.94.76-3.27,1.45-6.56,1.88-9.89.27,0,.35.19.49.3a1.44,1.44,0,0,0,1.68,0C318.06,67.59,318.16,67.22,317.91,66.52ZM39.07,47.71c-1.57-3-3.38-5.87-5.18-8.7,1-.14,8.73,2,11.46,3.26C43.16,44,41.11,45.81,39.07,47.71ZM70.51,28.26a5.46,5.46,0,0,1,3.36-1.15C72.74,27.48,71.62,27.86,70.51,28.26Zm78.28,3.2c0,.28-.09.55-.15.82l-.2-.1q-1.33-.6-2.67-1.17c.18-.53.36-1.07.55-1.61a3.32,3.32,0,0,1,2,0A1.94,1.94,0,0,1,148.79,31.46Zm89.81-.37c-1.23.08-2.45.16-3.88.16,1.32-1.83,2.35-3.7,3.72-5.48a9.51,9.51,0,0,1,.51,2.67,11.6,11.6,0,0,0,.14,2C239.19,30.86,239.06,31.06,238.6,31.09Z',
       'M317.91,66.52c.74.35,1,.27,1.17-.5s.33-1.49.49-2.23',
      'M-90,20a2.69,2.69,0,0,0,.71.5c.74.35,1,.27,1.17-.5s.33-1.49.49-2.23c1-4.54,2.1-9.06,3.43-13.51',
      'M -90 20 Q -89.06 20 -88.12 20 Q -87.875 18.885 -86 19 t 1.63 2.23 T -81 20 t -9 -3',
      'M -90 20 A 2.69 2.69 0 0 0 -89.29 20.5 C -88.55 20.85 -88.29 20.77 -88.12 20 S -87.79 18.51 -87.63 17.77 C -86.63 13.23 -85.53 8.71 -84.2 4.26',
      Colors.amber
    ], */
  ];
}

class _MapaSVGState extends State<MapaSVG> {
  bool showBorder = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mapa SVG'),
        centerTitle: true,
      ),
      body: Transform.scale(
        scale: 2.0,
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            setState(() {
              // hide/show border
              showBorder = !showBorder;
            });
          },
          child: Center(
            child: SizedBox(
              width: 100,
              height: 100,
              child: Stack(
                children: widget.paths.map((e) {
                  return CustomPaint(painter: MyPainter(parseSvgPath(e[0] as String), e[1] as Color, showPath: showBorder));
                }).toList(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  final Path path;
  final Color color;
  final bool showPath;
  MyPainter(this.path, this.color, {this.showPath = true});

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = color
      ..strokeWidth = 4.0;
    canvas.drawPath(path, paint);
    if (showPath) {
      var border = Paint()
        ..color = Colors.black
        ..strokeWidth = 0.2
        ..style = PaintingStyle.stroke;
      canvas.drawPath(path, border);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
