part of 'widget.dart';

class CustomCardPopular extends StatelessWidget {
  const CustomCardPopular({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<RoutesCubit>().emit(RoutesDetailScreen());
      },
      child: Container(
        width: 150,
        height: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey,
        ),
      ),
    );
  }
}
