// OP1: insertMany()
db.products.insertMany([
  {product_id:"E101",category:"Electronics",price:45000,warranty:"2 years"},
  {product_id:"C201",category:"Clothing",price:2000,sizes:["M","L","XL"]},
  {product_id:"G301",category:"Groceries",price:100,expiry_date:new Date("2024-12-30")}
]);

// OP2: find()
db.products.find({category:"Electronics",price:{$gt:20000}});

// OP3: find()
db.products.find({category:"Groceries",expiry_date:{$lt:new Date("2025-01-01")}});

// OP4: updateOne()
db.products.updateOne({product_id:"E101"},{$set:{discount_percent:10}});

// OP5: createIndex()
db.products.createIndex({category:1});
