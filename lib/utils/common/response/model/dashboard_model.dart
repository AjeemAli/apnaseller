const profile = {
  "_id": "6537a4448cd1bd140ebddcee",
  "username": "Shivam Kumar",
  "email": "shive@gmail.com",
  "uid": "4NmOkCbvu7ToaBS9ZR1UVpv0G1g2",
  "address": [],
  "userEarning": "\$1245",
  "profiles":
  "https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436188.jpg?t=st=1716528734~exp=1716532334~hmac=a67babac1d745718e75b6ad36bd56d0b68ba4403f40fa6826d31f8d73f0f1cdb&w=740",
  "updatedAt": "2023-10-24T11:02:28.215Z"
};
List<dynamic> orderLists = [
  {
    "orderId": "1",
    "productName": "Wireless Headphones",
    "clientLocation": "123 Main St, City",
    "productDetails": "Bluetooth over-ear headphones with noise-cancelling feature.",
    "price": "3000 INR",
    "paymentMode": "Cash",
    "orderAccept": true,
    "productImage": "https://img.freepik.com/free-psd/technological-headphones-isolated_23-2151209623.jpg?t=st=1716526866~exp=1716530466~hmac=47c4c9326bde858813b6ee12f27f101100f4b71327ed3b79eb6237a80f92ba75&w=360",
    "status": "Pending"
  },
  {
    "orderId": "2",
    "productName": "Smartphone",
    "clientLocation": "456 Elm St, City",
    "productDetails": "Latest model with 6GB RAM and 128GB storage.",
    "price": "25000 INR",
    "paymentMode": "Online",
    "orderAccept": false,
    "productImage": "https://img.freepik.com/premium-psd/deep-purple-3d-smartphone-screen-mockup-front-view-iphone-14-pro-max-template_90220-913.jpg?w=740",
    "status": "Cancelled"
  },
  {
    "orderId": "3",
    "productName": "Running Shoes",
    "clientLocation": "789 Oak St, City",
    "productDetails": "Lightweight running shoes for men, size 9.",
    "price": "1500 INR",
    "paymentMode": "Cash",
    "orderAccept": true,
    "productImage": "https://img.freepik.com/free-photo/close-up-futuristic-sneakers-presentation_23-2151005712.jpg?t=st=1716542880~exp=1716546480~hmac=25286ddecafbf21579cff0a224630972878b6f75d3bd2774f349662fc80d31fc&w=360",
    "status": "Pending"
  },
  {
    "orderId": "4",
    "productName": "Digital Camera",
    "clientLocation": "321 Pine St, City",
    "productDetails": "DSLR camera with 18-55mm lens.",
    "price": "40000 INR",
    "paymentMode": "Online",
    "orderAccept": true,
    "productImage": "https://img.freepik.com/free-photo/hand-holding-photo-camera_23-2150630632.jpg?t=st=1716542855~exp=1716546455~hmac=477599f91e9eff35791dc448332bdf71a9c79890a83dc7c656705de71691addb&w=360",
    "status": "Shipped"
  },
  {
    "orderId": "5",
    "productName": "Smart Watch",
    "clientLocation": "654 Cedar St, City",
    "productDetails": "Waterproof smart watch with heart rate monitor.",
    "price": "5000 INR",
    "paymentMode": "Cash",
    "orderAccept": false,
    "productImage": "https://img.freepik.com/free-vector/realistic-fitness-trackers_23-2148530529.jpg?t=st=1716542834~exp=1716546434~hmac=c464904f426b9e3395aac92efbfd030132645a6842fcdc1f69975dca61ef0925&w=740",
    "status": "Cancelled"
  },
  {
    "orderId": "6",
    "productName": "Electric Kettle",
    "clientLocation": "987 Birch St, City",
    "productDetails": "1.5L stainless steel electric kettle.",
    "price": "1200 INR",
    "paymentMode": "Online",
    "orderAccept": true,
    "productImage": "https://img.freepik.com/free-photo/electric-kettle-dark-background_23-2148728729.jpg?t=st=1716542650~exp=1716546250~hmac=984b9103a45d57d19cdc97f3d9b1e0056ab975e477dca956ad536b362bc8ebb7&w=360",
    "status": "Delivered"
  },
  {
    "orderId": "7",
    "productName": "Laptop",
    "clientLocation": "543 Maple St, City",
    "productDetails": "14-inch laptop with 8GB RAM and 256GB SSD.",
    "price": "55000 INR",
    "paymentMode": "Cash",
    "orderAccept": true,
    "productImage": "https://img.freepik.com/free-psd/realistic-macbook-mock-up_1022-57.jpg?t=st=1716542629~exp=1716546229~hmac=fc1be97e9bf7a6632bfb8b2edc42d741e69c792d22a5549e4813836616af5329&w=740",
    "status": "Pending"
  },
  {
    "orderId": "8",
    "productName": "Bluetooth Speaker",
    "clientLocation": "678 Walnut St, City",
    "productDetails": "Portable Bluetooth speaker with 10-hour battery life.",
    "price": "2000 INR",
    "paymentMode": "Online",
    "orderAccept": false,
    "productImage": "https://img.freepik.com/free-photo/high-angle-smart-speaker-home_23-2150171764.jpg?t=st=1716542593~exp=1716546193~hmac=2fd67b25a9bdf76ad0aeec14b40bc3c86470ec4f89a3801460095221d4b503a0&w=740",
    "status": "Cancelled"
  },
  {
    "orderId": "9",
    "productName": "Fitness Tracker",
    "clientLocation": "111 Spruce St, City",
    "productDetails": "Fitness tracker with sleep monitoring and step counter.",
    "price": "2500 INR",
    "paymentMode": "Cash",
    "orderAccept": true,
    "productImage": "https://img.freepik.com/free-vector/fitness-trackers-concept_23-2148524394.jpg?t=st=1716542571~exp=1716546171~hmac=af86f0f829f52e29b40e240ffa46105ed7337899fb051c8c4fc5c91ad5bbf923&w=740",
    "status": "Pending"
  },
  {
    "orderId": "10",
    "productName": "LED TV",
    "clientLocation": "222 Fir St, City",
    "productDetails": "42-inch LED TV with 4K resolution.",
    "price": "30000 INR",
    "paymentMode": "Online",
    "orderAccept": true,
    "productImage": "https://img.freepik.com/free-photo/view-computer-monitor-display-with-desk_23-2150757533.jpg?t=st=1716542542~exp=1716546142~hmac=62cbd0123d014d502013fc18a29d2eb2d5f03b970187b9f264f46a62636c94c7&w=740",
    "status": "Shipped"
  }
];



