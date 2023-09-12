// ignore_for_file: camel_case_types, file_names
import 'package:flutter/material.dart';
import 'package:hamidye_water_example/const/texts.dart';
import 'package:hamidye_water_example/core/tabbarViewScreen/tabbar_business/tabbar_business.dart';
import 'package:hamidye_water_example/core/tabbarViewScreen/tabbar_widgets/divider.dart';
import 'package:hamidye_water_example/core/tabbarViewScreen/tabbar_widgets/subtitle_row.dart';
import 'package:hamidye_water_example/core/tabbarViewScreen/tabbar_widgets/texts.dart';

class petScreen extends StatefulWidget {
  const petScreen({super.key});

  @override
  State<petScreen> createState() => _petScreenState();
}

class _petScreenState extends State<petScreen> with PetBackend {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                    textAlign: TextAlign.center,
                    tumuText1,
                    style: Theme.of(context).textTheme.titleSmall),
                Text(tumuText2, style: Theme.of(context).textTheme.bodyLarge),
              ],
            )),
        Expanded(
            flex: 8,
            child: StreamBuilder(
              stream: petStream,
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return const Placeholder();
                }
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }
                final docs = snapshot.data!.docs;
                return ListView.builder(
                  itemCount: docs.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListTile(
                          leading: SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.2,
                            child: Image.network(
                              docs[index]['image'],
                            ),
                          ),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ProductsTitle(title: docs[index]['name']),
                              ProductsUnit(
                                  unit: '${docs[index]['unit']} $unitText'),
                              ProductsValue(
                                  value: '${docs[index]['value']} $tl'),
                            ],
                          ),
                          subtitle: const subtitleRow(),
                        ),
                        dividerMethod()
                      ],
                    );
                  },
                );
              },
            ))
      ],
    );
  }
}
