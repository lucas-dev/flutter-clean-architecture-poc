import 'package:flutter/material.dart';
import 'package:universities_presentation/presentation.dart';

class UniversityListView extends StatelessWidget {
  final List<UniversityView> universities;

  const UniversityListView({Key? key, required this.universities})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
        fit: FlexFit.tight,
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: universities.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  leading: CircleAvatar(
                    child: Text("$index"),
                  ),
                  title: Column(
                    children: [
                      Text("University=>${universities[index].name}"),
                      Text("Id=>${universities[index].id}"),
                    ],
                  ),
                  trailing: const Icon(Icons.image),
                  onTap: () => {
                    // serviceLocator<CountriesNavigation>().toUniversities(universities[index])
                  },
                ),
              );
            }));
  }
}
