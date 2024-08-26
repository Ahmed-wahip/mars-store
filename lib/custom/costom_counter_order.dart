import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mars/bloc/counter_order/counter_bloc.dart';
import 'package:mars/core/color_app.dart';

class CustomCounterOrders extends StatelessWidget {
  const CustomCounterOrders({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            context.read<CounterBloc>().add(IncrementEvent());
          },
          icon: Icon(
            Icons.add,
            color: ColorApp.textColor,
            size: 25,
          ),
        ),
        BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            if (state is CounterInitial) {
              return Text(
                "0",
                style: Theme.of(context).textTheme.headlineMedium,
              );
            } else if (state is CounterValuoChengeState) {
              return Text(
                state.counter.toString(),
                style: Theme.of(context).textTheme.headlineMedium,
              );
            } else {
              return const SizedBox();
            }
          },
        ),
        IconButton(
          onPressed: () {
            context.read<CounterBloc>().add(DecrmentEvent());
          },
          icon: Icon(
            Icons.remove,
            color: ColorApp.textColor,
            size: 25,
          ),
        ),
      ],
    );
  }
}
