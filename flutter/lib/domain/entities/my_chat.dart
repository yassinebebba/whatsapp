class MyChatEntity {
  final String senderName;
  final String senderUId;
  final String recipientName;
  final String recipientUId;
  final String channelId;
  final String profileUrl;
  final String recipientPhoneNumber;
  final String senderPhoneNumber;
  final String recentTextMessage;
  final bool isRead;
  final bool isArchived;
  final String time;

  MyChatEntity({
    required this.senderName,
    required this.senderUId,
    required this.recipientName,
    required this.recipientUId,
    required this.channelId,
    required this.profileUrl,
    required this.recipientPhoneNumber,
    required this.senderPhoneNumber,
    required this.recentTextMessage,
    required this.isRead,
    required this.isArchived,
    required this.time,
  });
}
