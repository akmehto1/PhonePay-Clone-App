class User {
  final String name;
  final String country;
  final String phone;
  final String profile;
  final String address;
  final String state;
  final String city;
  final bool upiSet;
  final String balance;
  final bool loan;
  final int creditScore;

  const User({
    required this.name,
    required this.country,
    required this.phone,
    required this.profile,
    required this.address,
    required this.state,
    required this.city,
    required this.upiSet,
    required this.balance,
    required this.loan,
    required this.creditScore,
  });
}

  List<User> userList = [
    User(
      name: "Abhishek Kumar Mehto",
      country: "India",
      phone: "935498330",
      profile: "assets/images/profile/abhishek.jpg",
      address: "123 Main Street",
      state: "State",
      city: "City",
      upiSet: true,
      balance: "\$500.00",
      loan: false,
      creditScore: 720,
    ),
    User(
      name: "John Doe",
      country: "USA",
      phone: "1234567890",
      profile: "assets/images/profile/john.jpg",
      address: "456 Park Avenue",
      state: "New York",
      city: "New York City",
      upiSet: false,
      balance: "\$200.50",
      loan: true,
      creditScore: 680,
    ),
    User(
      name: "Pankaj",
      country: "India",
      phone: "9354983360",
      profile: "assets/images/profile/john.jpg",
      address: "A-303 Agar Nagar",
      state: "Delhi",
      city: "New Delhi",
      upiSet:true,
      balance: "\$200.50",
      loan: true,
      creditScore: 680,
    ),
    User(
      name: "Jane Smith",
      country: "Canada",
      phone: "9876543210",
      profile: "assets/images/profile/jane.jpg",
      address: "789 Maple Street",
      state: "Ontario",
      city: "Toronto",
      upiSet: true,
      balance: "\$1000.75",
      loan: false,
      creditScore: 750,
    ),
    // Adding more dummy data objects
  ];
