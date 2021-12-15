CREATE TABLE medical_histories (
  id INT GENERATED ALWAYS AS IDENTITY,
  admitted_at TIMESTAMP,
  patient_id INT,
  status VARCHAR(100)
  );

  CREATE TABLE patients (
  id INT GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(100),
  date_of_birth DATE
  );

  CREATE TABLE invoices (
  id INT GENERATED ALWAYS AS IDENTITY,
  total_amount DECIMAL,
	generated_at TIMESTAMP,
  payed_at TIMESTAMP,
  medical_history INT
);

CREATE TABLE invoice_items (
  id INT GENERATED ALWAYS AS IDENTITY,
  unit_price DECIMAL,
	quantiy INT,
  total_price DECIMAL,
  invoice_id INT,
  treatment_id INT
);

CREATE TABLE treatments (
  id INT GENERATED ALWAYS AS IDENTITY,
  type 	VARCHAR(100),
  name VARCHAR(100)
);