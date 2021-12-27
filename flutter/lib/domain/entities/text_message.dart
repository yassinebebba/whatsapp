class TextMessageEntity {
  final String senderName;
  final String sederUID;
  final String recipientName;
  final String recipientUId;
  final String messageType;
  final String message;
  final String messageId;
  final String time;

  TextMessageEntity({
    required this.senderName,
    required this.sederUID,
    required this.recipientName,
    required this.recipientUId,
    required this.messageType,
    required this.message,
    required this.messageId,
    required this.time,
  });

  List<Object> get props => [
        senderName,
        sederUID,
        recipientName,
        recipientUId,
        messageType,
        message,
        messageId,
        time,
      ];
}
