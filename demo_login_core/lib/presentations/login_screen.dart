import 'package:demo_login_core/bloc/breeds/breeds_bloc.dart';
import 'package:demo_login_core/model/breeds_model/breeds_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 400,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(40),
                ),
                height: 400,
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
                              return Container(
                                margin: const EdgeInsets.all(10),
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                    border: Border.all(color: Colors.black)),
                                child: Row(
                                  children: [
                                    Text('Cat $index: '),
                                    Expanded(child: Text(breeds[index].name!)),
                                    const Text('Origin: '),
                                    Expanded(
                                        child: Text(breeds[index].origin!)),
                                  ],
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      context
                          .read<BreedsBloc>()
                          .add(const BreedsEvent.started());
                    },
                    child: const Text('Login'),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Register'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
