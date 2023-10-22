/// [Map] containing the card number patterns
Map<CardTypes, Set<List<String>>> cardNumPatterns =
    <CardTypes, Set<List<String>>>{
  CardTypes.visa: <List<String>>{
    <String>['4'],
  },
  CardTypes.rupay: <List<String>>{
    <String>['60'],
    <String>['6521'],
    <String>['6522'],
  },
  CardTypes.americanExpress: <List<String>>{
    <String>['34'],
    <String>['37'],
  },
  CardTypes.unionpay: <List<String>>{
    <String>['62'],
  },
  CardTypes.discover: <List<String>>{
    <String>['6011'],
    <String>['622126', '622925'], // China UnionPay co-branded
    <String>['644', '649'],
    <String>['65'],
  },
  CardTypes.mastercard: <List<String>>{
    <String>['51', '55'],
    <String>['2221', '2229'],
    <String>['223', '229'],
    <String>['23', '26'],
    <String>['270', '271'],
    <String>['2720'],
  },
  CardTypes.elo: <List<String>>{
    <String>['401178'],
    <String>['401179'],
    <String>['438935'],
    <String>['457631'],
    <String>['457632'],
    <String>['431274'],
    <String>['451416'],
    <String>['457393'],
    <String>['504175'],
    <String>['506699', '506778'],
    <String>['509000', '509999'],
    <String>['627780'],
    <String>['636297'],
    <String>['636368'],
    <String>['650031', '650033'],
    <String>['650035', '650051'],
    <String>['650405', '650439'],
    <String>['650485', '650538'],
    <String>['650541', '650598'],
    <String>['650700', '650718'],
    <String>['650720', '650727'],
    <String>['650901', '650978'],
    <String>['651652', '651679'],
    <String>['655000', '655019'],
    <String>['655021', '655058'],
  },
  CardTypes.hipercard: <List<String>>{
    <String>['606282'],
  },
};

/// Card Types
enum CardTypes {
  /// Other brand
  otherBrand,

  /// Mastercard
  mastercard,

  /// Visa
  visa,

  /// RuPay
  rupay,

  /// AmericanExpress
  americanExpress,

  /// UnionPay
  unionpay,

  /// Discover
  discover,

  /// Elo
  elo,

  /// Hipercard
  hipercard,
}
