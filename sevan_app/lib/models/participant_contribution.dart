class ParticipantContribution {
  final String id;
  final String title;
  final double amount;
  final int cardNumber;
  final DateTime contributionDate;


  ParticipantContribution({
    required this.id,
    required this.title,
    required this.amount,
    required this.contributionDate,
    required this.cardNumber
  });
}