import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_user/screens/home/provider/random_provider.dart';

class RandomView extends StatefulWidget {
  const RandomView({Key? key}) : super(key: key);

  @override
  State<RandomView> createState() => _RandomViewState();
}

class _RandomViewState extends State<RandomView> {
  RandomProvider? proTrue;
  RandomProvider? proFalse;

  @override
  void initState() {
    super.initState();
    Provider.of<RandomProvider>(context, listen: false).Caller();
  }

  @override
  Widget build(BuildContext context) {
    proTrue = Provider.of<RandomProvider>(context, listen: true);
    proFalse = Provider.of<RandomProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Random user"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "${proTrue!.random?.results[0].picture.medium}"),
                  radius: 70,
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  title: Text(
                      "Name: ${proTrue!.random?.results[0].name.title}. ${proTrue!.random?.results[0].name.first} ${proTrue!.random?.results[0].name.last}"),
                ),
                ListTile(
                  title: Text(
                      "Address: ${proTrue!.random?.results[0].location.street.number} - ${proTrue!.random?.results[0].location.street.name}, ${proTrue!.random?.results[0].location.city}, ${proTrue!.random?.results[0].location.state},\n ${proTrue!.random?.results[0].location.country}"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
