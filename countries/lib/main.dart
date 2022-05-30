import 'dart:convert';

import 'package:countries/models/country.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Country> _countries = [];

  List<Country> _correctCountries = [];
  List<Country> _openCountries = [];

  Future<void> _incrementCounter() async {
    final String countriesJson = await DefaultAssetBundle.of(context)
        .loadString('assets/countries.json');

    final Iterable countriesFromJson = json.decode(countriesJson) as List;

    final countries = countriesFromJson
        .map((i) => Country.fromJson(i as Map<String, dynamic>))
        .where((element) => element.independent ?? true)
        .toList();

    setState(() {
      _countries = countries;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        physics: const AlwaysScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: _countries.length,
        itemBuilder: (context, index) => Column(
          children: [
            ListTile(
              leading: Image.asset(
                'assets/png/${_countries[index].cca2.toLowerCase()}.png',
                width: 32,
              ),
              title: Text(
                _countries[index].translations['deu']?.common ??
                    _countries[index].name.common,
                style: const TextStyle(fontWeight: FontWeight.w700),
              ),
              trailing: Text(
                '+${_countries[index].unMember}',
                style: const TextStyle(fontWeight: FontWeight.w700),
              ),
              onTap: () {},
            ),
            const Divider(thickness: 1),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _incrementCounter();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
