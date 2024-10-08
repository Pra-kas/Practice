import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc/container_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => ContainerBloc(),
      child: const MaterialApp(
        home: Helper(),
      ),
    ),
  );
}

class Helper extends StatelessWidget {
  final Color color = Colors.red;

  const Helper({super.key});

  @override
  Widget build(BuildContext context) {
    final ContainerBloc c = context.read<ContainerBloc>();
    print("Build");
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: color,
        title: const Text("Sample"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, 
            children: [

              BlocBuilder<ContainerBloc, ContainerState>(
                builder: (context, state) {
                  if (state is FirstContainerState) {
                    return const CircularProgressIndicator();
                  }
                  return Container(
                    padding: const EdgeInsets.all(12), 
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(12), 
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 8, 
                          spreadRadius: 2,
                          offset: Offset(4, 4),
                        )
                      ],
                    ),
                    width: 150,
                    height: 150,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black, backgroundColor: Colors.white, 
                        textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {
                        c.add(FirstContainerEvent());
                      },
                      child: const Text("Click Me"),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
