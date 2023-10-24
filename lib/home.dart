import 'package:flutter/material.dart';
import 'package:new_app/pages/pageOne.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("OneAPP"),
          centerTitle: true,
        ),
        body: _body(context),
        drawer: Container(color: Colors.green),
        floatingActionButton: FloatingActionButton(
            onPressed: () {}, child: const Icon(Icons.add)));
  }

  // _body(context) {
  //   Size size = MediaQuery.of(context).size;

  //   return Container(
  //     // height: size.height,
  //     // width: size.width,
  //     color: Colors.white,
  //     child: Center(
  //       child: Column(
  //         // mainAxisAlignment: MainAxisAlignment.center,
  //         mainAxisSize: MainAxisSize.min,
  //         children: [
  //           _button(),
  //           _button(),
  //           _button(),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  _img(String path) {
    // return Image.network(
    //   "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",
    return Image.asset(
      path,
      height: 250,
      width: 250,
    );
  }

  _button(BuildContext context, String text) {
    return ElevatedButton(
      // onPressed: () => _onclickMe();,
      // onPressed: null, desabilita o botão
      // onPressed: _onClickMe, // sem parenteses
      onPressed: () {
        _onClickMe(context);
      },
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    );
  }

  _onClickMe(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(
      builder: (BuildContext context) {
        return const PageOne();
      },
    ));
  }

  _text() {
    return const Center(
      child: Text(
        "IFMS - TL",
        style: TextStyle(
          fontSize: 30,
          color: Color.fromARGB(255, 18, 106, 21),
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          // letterSpacing: 5,
          wordSpacing: 10,
        ),
      ),
    );
  }

  // _body(context) {
  //   Size size = MediaQuery.of(context).size;

  //   return SingleChildScrollView(
  //     padding: const EdgeInsets.all(8.0),
  //     child: Container(
  //       // height: size.height,
  //       // width: size.width,
  //       color: Colors.white,
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: [
  //           _text(),
  //           _pageView(),
  //           _buttons(),
  //           _text(),
  //           _pageView(),
  //           _buttons(),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  _body(context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      width: size.width,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _text(),
          _pageView(),
          _buttons(context),
        ],
      ),
    );
  }

  Container _pageView() {
    return Container(
      margin: const EdgeInsets.all(20),
      height: 300,
      child: PageView(
        children: [
          _img("assets/images/fachada_ifms.webp"),
          _img("assets/images/ifms.png"),
          _img("assets/images/rogerio.jpg"),
        ],
      ),
    );
  }

  Column _buttons(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _button(context, "Page 1"),
            _button(context, "Page 2"),
            _button(context, "Page 3"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _button(context, "Page 4"),
            _button(context, "Page 5"),
            _button(context, "Page 6"),
          ],
        ),
      ],
    );
  }
}
