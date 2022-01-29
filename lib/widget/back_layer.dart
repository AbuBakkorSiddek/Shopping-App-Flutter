import 'package:flutter/material.dart';

class BackLayer extends StatelessWidget {
  const BackLayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        // Transform

        //
        // _rotateBox(
        //   top: -100,
        //   left: -28,
        //   right: 0,
        //   bottom: 0,
        // ),


        _rotateBox(
          top: 100,
          left: 200,
          right: 0,
          bottom: 0,
        ),

        _rotateBox(
          top:-50,
          left: 0,
          right: -100,
          bottom: -28,
        ),

        // _rotateBox(
        //   top:150,
        //   left: 100,
        //   right: 0,
        //   bottom: 0,
        // ),


        SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(
                        'https://cdn1.vectorstock.com/i/1000x1000/43/20/bearded-man-s-face-hipster-character-fashion-vector-18884320.jpg'),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                back_Layer_Button(
                  title: 'Upload Screen',
                  icon: Icons.upload_outlined,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class _rotateBox extends StatelessWidget {

  final double top;
  final double left;
  final double right;
  final double bottom;

  const _rotateBox({
    Key? key,
    required this.top,
    required this.left,
    required this.right,
    required this.bottom,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: Transform.rotate(
        angle: -0.5,
        child: Container(
          width: 200,
          height: 300,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.2),
            borderRadius: BorderRadius.circular(12.0)
          ),
        ),
      ),
    );
  }
}

class back_Layer_Button extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onPressed;

  const back_Layer_Button({
    Key? key,
    required this.title,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        onPressed: onPressed, icon: Icon(icon), label: Text(title));
  }
}
