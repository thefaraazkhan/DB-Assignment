## Explain the relationship between the "Product" and "Product_Category" entities from the above diagram.

The relationship between the "Product" and "Product_Category" entities in the diagram is a **One-to-Many** relationship. This means:

- One product can belong to only **one product** category.
- A product category can have **many products** associated with it.
- This relationship is enforced through a foreign key in the "product" table.
- The "product" table includes a field called *category_id*.
- This *category_id* field serves as a foreign key, pointing to the primary key of **"product_category"** table.


## How could you ensure that each product in the "Product" table has a valid category assigned to it?

- We can enforce a **foreign key** constraint on the *category_id* field in the "product" table. This constraint references the primary key (id) of the "Product_Category" table. It will help us prevent creating products with invalid category IDs i.e categories that don't exist. example: FOREIGN KEY (category_id) REFERENCES product_category(id)

- We can also add a **NOT NULL** constraint on the *category_id* field in the "product" table and this will help us ensure that a product cannot be saved without a category (i.e *category_id* cannot be left blank while inserting a product into the table).

