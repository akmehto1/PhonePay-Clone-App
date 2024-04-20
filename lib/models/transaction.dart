class Transaction{
  final String name;
  final String receive_date;
  final String time;
  final String amount;
  final String banking_name;
  final String transaction_id;
  final String utr;
  final String received_bank_number;
  final bool transaction_done;
  final bool receive;
  final String image;
  Transaction(this.image,this.receive,this.name, this.receive_date,this.time,this.amount, this.banking_name, this.transaction_id, this.utr, this.received_bank_number, this.transaction_done,);
}


List<Transaction> transactions = [
  Transaction("assets/images/transactions/u1.jpg", true, "Pankaj", "11 mar 2024", "10:22 pm", "1,500", "Kotak", "T2403112121112121212123573234", "44374232323", "XXXXXXXXXX7619", true),
  Transaction("assets/images/transactions/u2.jpeg", false, "Amul", "15 mar 2024", "1:55 pm", "8,500", "Kotak", "T24031121288459445945123573234", "44374882323", "XXXXXXXXXX7619", true),
  Transaction("assets/images/transactions/u3.jpg", false, "Uttam", "11 mar 2024", "5:30 pm", "500", "Kotak", "T2403112121195973029533573234", "443748856657", "XXXXXXXXXX7619", true),
  Transaction("assets/images/transactions/u3.png", true, "Akash", "11 mar 2024", "10:02 pm", "1,900", "Kotak", "T2403112121849329569823573234", "44374845673", "XXXXXXXXXX7619", true),
  Transaction("assets/images/transactions/u1.jpg", false, "Papa", "11 mar 2024", "4:22 pm", "1,000", "Kotak", "T2403112129394597890123573234", "44374887654", "XXXXXXXXXX7619", true),
  Transaction("assets/images/transactions/u2.jpeg", true, "Bhai", "11 mar 2024", "6:22 pm", "500", "Kotak", "T2403112121112499687493573234", "44374888765", "XXXXXXXXXX7619", true),
  Transaction("assets/images/transactions/u3.jpg", true, "Garima", "11 mar 2024", "7:22 pm", "10", "Kotak", "T2403112121112121212123573234", "44374889876", "XXXXXXXXXX7619", true),
  Transaction("assets/images/transactions/u1.jpg", false, "Akansha", "11 mar 2024", "9:22 pm", "4000", "Kotak", "T2403112121112121212123573234", "44374889876", "XXXXXXXXXX7619", true),
  Transaction("assets/images/transactions/u2.jpeg", true, "Riya", "11 mar 2024", "7:22 pm", "9500", "Kotak", "T2403112121112121212123573234", "44374887654", "XXXXXXXXXX7619", true),
  Transaction("assets/images/transactions/u3.jpg", false, "Priya", "11 mar 2024", "6:33 pm", "19,500", "Kotak", "T2403112121211212121212123573234", "44374887654", "XXXXXXXXXX7619", true),
  Transaction("assets/images/transactions/u1.jpg", true, "Ramesh Sharma", "11 mar 2024", "9:30 am", "2,300", "SBI", "T2403112121112121212123573234", "44374232323", "XXXXXXXXXX7619", true),
  Transaction("assets/images/transactions/u2.jpeg", false, "Sunita Gupta", "15 mar 2024", "2:15 pm", "7,600", "HDFC", "T24031121288459445945123573234", "44374882323", "XXXXXXXXXX7619", true),
  Transaction("assets/images/transactions/u3.jpg", false, "Vijay Kumar", "11 mar 2024", "5:00 pm", "1,200", "ICICI", "T2403112121195973029533573234", "443748856657", "XXXXXXXXXX7619", true),
  Transaction("assets/images/transactions/u1.jpg", true, "Anjali Mishra", "11 mar 2024", "11:45 pm", "3,700", "Axis", "T2403112121849329569823573234", "44374845673", "XXXXXXXXXX7619", true),
  Transaction("assets/images/transactions/u2.jpeg", false, "Amit Singh", "11 mar 2024", "4:50 pm", "1,500", "Kotak", "T2403112129394597890123573234", "44374887654", "XXXXXXXXXX7619", true),
  Transaction("assets/images/transactions/u3.jpg", true, "Priya Patel", "11 mar 2024", "6:00 pm", "800", "IDBI", "T2403112121112499687493573234", "44374888765", "XXXXXXXXXX7619", true),
  Transaction("assets/images/transactions/u1.jpg", true, "Rajesh Tiwari", "11 mar 2024", "7:30 pm", "250", "Canara", "T2403112121112121212123573234", "44374889876", "XXXXXXXXXX7619", true),
];





