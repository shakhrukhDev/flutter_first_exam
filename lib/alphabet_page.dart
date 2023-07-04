import 'package:flutter/material.dart';

class Alphabet extends StatefulWidget {
  const Alphabet({Key? key}) : super(key: key);

  @override
  State<Alphabet> createState() => _AlphabetState();
}

class _AlphabetState extends State<Alphabet> {
  List<String> text = [];

  @override
  Widget build(BuildContext context) {
    List<String> alphabet = [];
    List.generate(26, (index) => alphabet.add(String.fromCharCode(index + 65)));
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Column(
        children: [
          GridView.builder(
              shrinkWrap: true,
              itemCount: alphabet.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
              ),
              itemBuilder: (BuildContext context, int index) {
                return TextButton(
                  onPressed: () {
                    setState(() {
                      text.add(alphabet[index]);
                    });
                  },
                  child: Container(
                    color: text.contains(alphabet[index])
                        ? text.indexOf(alphabet[index]) == index
                            ? Colors.green
                            : Colors.red
                        : const Color(0xfff1f4fa),
                    height: 200,
                    width: 200,
                    alignment: Alignment.center,
                    child: Text(alphabet[index],
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 24)),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
