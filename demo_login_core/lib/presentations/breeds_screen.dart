// ignore_for_file: prefer_const_constructors, unnecessary_const

import 'package:demo_login_core/bloc/breeds/breeds_bloc.dart';
import 'package:demo_login_core/bloc/image_cat/image_cat_bloc.dart';
import 'package:demo_login_core/model/breeds_model/breeds_model.dart';
import 'package:demo_login_core/presentations/matrix_transition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BreedScreen extends StatefulWidget {
  const BreedScreen({super.key});

  @override
  State<BreedScreen> createState() => _BreedScreenState();
}

class _BreedScreenState extends State<BreedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Breeds'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.sizeOf(context).height * 0.8,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(40),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.blueGrey, Colors.blueGrey.withOpacity(0.2)],
                  ),
                ),
                child: BlocBuilder<BreedsBloc, BreedsState>(
                  builder: (context, state) {
                    return state.when(
                        initial: () => const Center(
                              child: Text('Null data'),
                            ),
                        loading: () =>
                            const Center(child: CircularProgressIndicator()),
                        loaded: (List<BreedsModel> breeds) {
                          return Center(
                              child: ListView.builder(
                            itemCount: breeds.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const MatrixTransitionExample(),
                                    ),
                                  );
                                  context.read<ImageCatBloc>().add(
                                      ImageCatEvent.started(
                                          '${breeds[index].id}'));
                                },
                                child: Container(
                                  margin: const EdgeInsets.all(10),
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                      border: Border.all(color: Colors.black)),
                                  child: Row(
                                    children: [
                                      Text('Cat $index: '),
                                      Expanded(
                                          child: Text(breeds[index].name!)),
                                      const Text('Origin: '),
                                      Expanded(
                                          child: Text(breeds[index].origin!)),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ));
                        });
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<BreedsBloc>().add(const BreedsEvent.started());
                },
                child: const Text('Get Data'),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {},
                child: Hero(
                    tag: 'ngoahotangran',
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/ngoahotangran.jpg',
                        fit: BoxFit.cover,
                        width: 200,
                        height: 150,
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
