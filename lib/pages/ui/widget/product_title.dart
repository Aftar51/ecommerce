part of 'widget.dart';

class ProductTitle extends StatelessWidget {
  const ProductTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/image_shoes.png',
              width: 120,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Shoes Mountain Papandayan V2 - Black Orange',
                  style: primaryTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 16,
                    letterSpacing: 1,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                Text(
                  NumberFormat.currency(
                    symbol: 'IDR ',
                    locale: 'id_ID',
                    decimalDigits: 0,
                  ).format(
                    750000,
                  ),
                  style: priceTextStyle.copyWith(
                    fontSize: 15,
                    fontWeight: medium,
                    color: primaryColor
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
