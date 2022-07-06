import 'package:algoriza_testt/features/presentation/cubit/cubit.dart';
import 'package:algoriza_testt/features/presentation/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatefulWidget {
  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        return CounterCubit();
      },
      child: BlocConsumer<CounterCubit, CounterStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xff55b1f0),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                        onPressed: () {
                          CounterCubit.get(context).deCrement();
                        },
                        child: Icon(
                          Icons.minimize_outlined,
                        ),
                        backgroundColor: Color(0xff55b1f0)),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      '${CounterCubit.get(context).Counter}',
                      style: TextStyle(fontSize: 30.0),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        CounterCubit.get(context).inCrement();

                      },
                      child: Icon(
                        Icons.add,
                      ),
                      backgroundColor: Color(0xff55b1f0),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
