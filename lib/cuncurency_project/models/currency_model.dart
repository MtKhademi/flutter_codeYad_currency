class CurrencyModel {
  final String id;
  final String title;
  final String price;
  final String change;
  final String status;
  CurrencyModel({
    required this.id,
    required this.title,
    required this.price,
    required this.change,
    required this.status,
  });

  bool get Arise => double.parse(change) > 0;

  static List<CurrencyModel> GetAll() => [
        CurrencyModel(
          id: '1',
          title: 'دلار آمریکا',
          price: '57000',
          change: '+25',
          status: 'P',
        ),
        CurrencyModel(
          id: '2',
          title: 'دلار استرالیا',
          price: '56500',
          change: '-3',
          status: 'P',
        ),
        CurrencyModel(
          id: '1',
          title: 'یوروی اروپا',
          price: '33000',
          change: '+32',
          status: 'P',
        ),
        CurrencyModel(
          id: '1',
          title: 'ین چین',
          price: '12000',
          change: '-12',
          status: 'P',
        ),
        CurrencyModel(
          id: '1',
          title: 'ین چین',
          price: '12000',
          change: '+1.0',
          status: 'P',
        ),
        CurrencyModel(
          id: '1',
          title: 'ین چین',
          price: '12000',
          change: '0',
          status: 'P',
        )
      ];
}
