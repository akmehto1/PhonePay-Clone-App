class Notification {
  final String title;
  final String icon;
  final String description;
  final String time;
  final String subdescription;
  Notification(this.title, this.icon, this.description, this.time, this.subdescription);
}



  List<Notification> listNotification = [
    Notification(
        "New Message",
        "assets/images/notification/n1.png",
        "You have a new message from John Doe.",
        "10:00 AM",
        "Tap to view"
    ),
    Notification(
        "Reminder",
        "assets/images/notification/n1.png",
        "Don't forget to attend the meeting at 3:00 PM.",
        "Yesterday",
        ""
    ),
    Notification(
        "Payment Received",
        "assets/images/notification/n1.png",
        "You've received a payment of \$50 from Jane Smith.",
        "2 days ago",
        ""
    ),
    // Add more dummy data objects here
  ];
