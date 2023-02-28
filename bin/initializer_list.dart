class Customer {
  String firstName = '';
  String lastName = '';
  String fullName = '';

  // Merubah field sebelum block constructor
  Customer(this.fullName)
      : firstName = fullName.split(' ')[0], // Menghindari variable shadowing
        lastName = fullName.split(' ')[1] {
    print("Create new customer");
  }
}

void main(List<String> args) {
  var customer = Customer('Agung bahtiar');
  print(customer.firstName);
  print(customer.lastName);
  print(customer.fullName);
}
