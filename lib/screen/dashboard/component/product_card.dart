
import '../../../const/export.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key, required this.name, required this.image,  required this.price,
  });
  final String name,image;
  final double price;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(image),
      title: Text(name),
      subtitle: Text('\$${price}'),
    );
  }
}
