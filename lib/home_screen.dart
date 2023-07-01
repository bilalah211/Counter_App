import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/example_one.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    final vProvider = Provider.of<ExampleOne>(context,listen: false);
    if (kDebugMode) {
      print('Build');
    }
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<ExampleOne>(builder: (context,value,child){
            return Slider(
                min: 0,
                max: 1,
                value: vProvider.value, onChanged: (val){
              vProvider.setValue(val);

            });
          }),
          Consumer<ExampleOne>(builder: (context,value,child){
            return Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    color: Colors.green.withOpacity(vProvider.value),
                    child: const Center(child: Text('Container 1',)),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 50,
                    color: Colors.red.withOpacity(vProvider.value),
                    child: const Center(child: Text('Container 2',)),
                  ),
                ),
              ],
            );
          }),


        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
