CREATE TABLE Product
(
  id BIGSERIAL PRIMARY KEY NOT NULL,
  nameProduct VARCHAR(60) NOT NULL,
  priceProduct FLOAT NOT NULL,
  amountProduct INT NOT NULL,
  totalPrice FLOAT NOT NULL
);