import 'package:flutter/material.dart';

class FeedsProduct extends StatefulWidget {
  const FeedsProduct({Key? key}) : super(key: key);

  @override
  _FeedsProductState createState() => _FeedsProductState();
}

class _FeedsProductState extends State<FeedsProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(

              constraints: BoxConstraints(
                minHeight: 105,
                maxHeight:MediaQuery.of(context).size.height*0.4
              ),

              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSWTrwMHb2WXaAhoTRtw7CQ1AcafyGgAkluA&usqp=CAU',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text("Description")
          ],
        ),
      ),
    );
  }
}
