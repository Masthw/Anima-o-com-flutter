import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home/widgets/list_data.dart';

class AnimatedListView extends StatelessWidget {
  final Animation<EdgeInsets> listSlidePosition;

  const AnimatedListView({super.key, required this.listSlidePosition});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ListData(
          title: "Tarefa 1",
          subtitle: "descrição",
          image: const AssetImage("images/silva.png"),
          margin: listSlidePosition.value * 5,
        ),
        ListData(
          title: "Tarefa 2",
          subtitle: "descrição",
          image: const AssetImage("images/silva.png"),
          margin: listSlidePosition.value * 4,
        ),
        ListData(
          title: "Tarefa 3",
          subtitle: "descrição",
          image: const AssetImage("images/silva.png"),
          margin: listSlidePosition.value * 3,
        ),
        ListData(
          title: "Tarefa 4",
          subtitle: "descrição",
          image: const AssetImage("images/silva.png"),
          margin: listSlidePosition.value * 2,
        ),
        ListData(
          title: "Tarefa 5",
          subtitle: "descrição",
          image: const AssetImage("images/silva.png"),
          margin: listSlidePosition.value * 1,
        ),
        ListData(
          title: "Tarefa 6",
          subtitle: "descrição",
          image: const AssetImage("images/silva.png"),
          margin: listSlidePosition.value * 0,
        ),
      ],
    );
  }
}
