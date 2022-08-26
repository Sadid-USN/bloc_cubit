import 'package:flutter/material.dart';

class FutureAndStreamBuilder extends StatefulWidget {
  const FutureAndStreamBuilder({Key? key}) : super(key: key);
  @override
  State<FutureAndStreamBuilder> createState() => _FutureAndStreamBuilderState();
}

class _FutureAndStreamBuilderState extends State<FutureAndStreamBuilder> {
  int _count = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Difference between Future & Stream Builder',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildFutureBuilder(),
          const SizedBox(
            height: 50,
          ),
          _buildStream(),
        ],
      ),
    );
  }

  Widget _buildFutureBuilder() {
    return Center(
      child: FutureBuilder(
          future: _futureSquer(100),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Text('Squer = ${snapshot.data}');
            }
            return const CircularProgressIndicator();
          }),
    );
  }

  Future<int> _futureSquer(int num) async {
    await Future.delayed(const Duration(seconds: 1));

    return num * num;
  }

  Widget _buildStream() {
    return Center(
      child: StreamBuilder<int>(
          stream: _strimBuilder(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.active) {
              return Text('Stream incriment number = ${snapshot.data}');
            }
            return const Text('Complited');
          }),
    );
  }

  Stream<int> _strimBuilder() async* {
    while (_count <= 11) {
      await Future.delayed(const Duration(seconds: 1));

      yield _count++;
    }
  }
}
