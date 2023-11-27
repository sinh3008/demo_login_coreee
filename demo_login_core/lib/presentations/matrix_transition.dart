import 'dart:math';

import 'package:demo_login_core/bloc/image_cat/image_cat_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../model/image_cat_model/image_cat_model.dart';

class MatrixTransitionExample extends StatefulWidget {
  const MatrixTransitionExample({super.key});

  @override
  State<MatrixTransitionExample> createState() =>
      _MatrixTransitionExampleState();
}

/// [AnimationController]s can be created with `vsync: this` because of
/// [TickerProviderStateMixin].
class _MatrixTransitionExampleState extends State<MatrixTransitionExample>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat();
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.linear,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MatrixTransition'),
      ),
      body: BlocBuilder<ImageCatBloc, ImageCatState>(
        builder: (context, state) {
          return state.when(
            initial: () => Container(),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (List<ImageCatModel> list) => Center(
              child: MatrixTransition(
                animation: _animation,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                      width: 300,
                      height: 300,
                      image: NetworkImage('${list[0].url}')),
                ),
                onTransform: (double value) {
                  return Matrix4.identity()
                    ..setEntry(3, 2, 0.004)
                    ..rotateY(pi * 2.0 * value);
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
