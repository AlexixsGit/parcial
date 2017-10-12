### PART II

#### 1. Create tables:

CATEGORIES(id, name, season)
PRODUCTS(id, name, reference, price, category_id)
ANSWERS(id, number_of_question varchar2(255), answer varchar2(255))

Primary keys: int
Names: varchar2(255)
Price: decimal(10,3)

Add these constraints:
* Primary keys
* Season MUST only accept 'winter', 'summer', 'spring', 'autumn'
* Price MUST be greater than 0
* Foreign key

#### 2. Import data 
Import data from files partII/categories.csv and partII/products.csv

#### 3. Questions 
Based on the data answer the following questions and insert the answers in the "ANSWERS" table: (1.0)

  1. How many references of summer shoes are in the inventory? (0.2)
  2. How much does it cost the most expensive product of golf category? (0.2)
  3. What is the reference of the product which has the minimum price of ski category? (0.2)
  4. What is the name of the product which reference is 0E290CDE-FD74-1BA6-D84D-7F1E9AD5BF05 (0.2)
  5. What is the name of the category which product with name "Nulla eget" belongs to? (0.2)

For example:

|id | number      | value                                  |
| --- | --- | --- |
|1  |QUESTION 1 | 5656                                 |
|2  |QUESTION 2 | 5666.36                              |
|3  |QUESTION 3 | 0E290CDE-FD74-1BA6-D84D-7F1E9AD5BF05 |


#### 4. Export:
Export a file named script.sql using SQLDeveloper and add the file to this folder (Follow the images in the path part_II/export_instructions). The resulting file should be added inside the folder Part II (1.0)
  * Primary keys and constraints: (0.2)
  * Right types of columns and names: (0.2)
  * Creation of table answers with values filled: (0.6)

### PART III

1. Create a tablespace called "HACEB" with one datafile of 100Mb, the name of the datafile should be: haceb.dbf (0.1)
2. Create a profile named "ventas" with the following specifications: (0.1)
  a) Idle time of 18 minutes
  b) Failed login attempts 3
  c) Onle one session per user
3. Create an user named "amartinez" with unlimited space on tablespace, the profile should be "ventas" (0.1)
4. Add the roles "CONNECT" and "DBA" to user "amartinez" (0.1)
5. Log in as "amartinez" and create all tables associated with the normalization process, create sequences, add all the constraints you consider it
  a) Attach a screenshot of the diagram punto5.png and export a file named haceb.sql using SQLDeveloper (0.1)
  b) Normalitazion: 1.5

#### Normalizar:

El centro de Servicio Haceb requiere llevar un control de las reparaciones que se realizan sobre los electrodomésticos (Estufas, Neveras, Lavadoras, Horno Micro Hondas) de su marca.
En el momento en que un cliente lleva un electrodoméstico para ser reparado se llena un documento llamado Recepción de Servicio en el cual se registran los siguientes datos: Nro de recepción, Fecha, días que tardara la reparación, fecha de entrega, el cliente con sus datos básicos, electrodomésticos que se van reparar, nro. de referencia del electrodoméstico, descripción del daño de cada Electrodoméstico, Técnicos a cargo de la Reparación con sus datos básicos, cantidad y valor de los Repuestos que se requieren para la reparación,  valor total de la reparación, también se solicitan los datos básicos de 2 referencias personales del cliente en el momento de llenar la recepción del servicio.
En el momento del pago se debe elaborar un Recibo de caja con los siguientes datos(nro. recibo de caja, fecha y hora, valor del pago, Cliente y nro de recepción del servicio que se va a pagar, forma de pago, as formas de Pago:  pueden ser Efectivo, Cheque, Consignación, tarjeta débito, tarjeta crédito, Transferencia, Crédito, entre otras.
Se puede pagar la totalidad de la reparación de diferentes formas, Ejemplo Si el total de reparacion es 200.000, se puede pagar 50.000 con la tarjeta débito, 50.000 en efectivo y 100.000 con tarjeta de crédito.
