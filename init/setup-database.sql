-- schema creation
CREATE SCHEMA IF NOT EXISTS ecommerce;
-- using schema
USE ecommerce;
-- creating table for users
CREATE TABLE user(
    email VARCHAR(255) PRIMARY KEY,
    firstname VARCHAR(255),
    lastname VARCHAR(255),
    password VARCHAR(255)
);
-- creating table for products
CREATE TABLE product(
    code VARCHAR(255) PRIMARY KEY,
    brand VARCHAR(255),
    name VARCHAR(255),
    avg_rating FLOAT,
    no_of_reviews INT,
    approval VARCHAR(255)
);
-- creating table for reviews
CREATE TABLE review(
    review_id INT auto_increment,
    approval VARCHAR(255) default "no",
    heading VARCHAR(255),
    product_code VARCHAR(255),
    rating FLOAT,
    review VARCHAR(400),
    PRIMARY KEY(review_id)
);
-- inserting data into 'user' table
INSERT INTO user(email, firstname, lastname, password)
VALUES ("admin@gmail.com", "Admin", "Admin", "admin123@"),
    (
        "kritikasingh@gmail.com",
        "Kritika",
        "Singh",
        "kritika123@"
    ),
    (
        "nidhisingh@gmail.com",
        "Nidhi",
        "Singh",
        "nidhi123@"
    );
-- populating product table
INSERT INTO product(
        code,
        brand,
        name,
        avg_rating,
        no_of_reviews,
        approval
    )
VALUES("a101", "puma", "Shirts", 0, 0, "yes"),
    ("a102", "Nike", "Shirts", 3.25, 2, "yes"),
    ("a104", "puma", "Tshirts", 0, 0, "yes"),
    ("a105", "puma", "Tshirts", 0, 0, "yes"),
    ("a106", "puma", "Tshirts", 0, 0, "yes"),
    ("ab101", "puma", "Tshirts", 0, 0, "yes"),
    ("ab102", "Adidas", "Tshirts", 4, 1, "yes"),
    ("ab103", "Nike", "Tshirts", 0, 0, "yes"),
    (
        "ADC23627167LB",
        "Adidas",
        "ReadyToGo",
        0,
        0,
        "yes"
    ),
    ("ADC13242545LY", "Adidas", "tshirt", 4, 2, "yes"),
    (
        "ADC14536258MP",
        "Adidas",
        "Aeroready",
        4,
        1,
        "yes"
    ),
    ("ADC7LB", "Adidas", "SolidFreelift", 3, 1, "yes"),
    (
        "ADC23627167MM",
        "Adidas",
        "Freelift",
        2,
        1,
        "yes"
    ),
    ("ADC73SB", "Adidas", "Printed", 0, 0, "yes"),
    ("ASD123QWE", "Adidas", "ReadyToGo", 0, 0, "no"),
    ("awer1234", "puma", "Tshirts", 0, 0, "yes"),
    ("NICB7952103MP", "Nike", "AMBUSH", 4.5, 1, "yes"),
    ("NICJ0992MB", "Nike", "Tshirts", 0, 0, "yes"),
    ("NICJ0921SG", "Nike", "Tshirts", 0, 0, "yes"),
    ("NIDD0285100MW", "Nike", "Jordan", 3.5, 3, "yes"),
    (
        "NIDJ1829010MB",
        "Nike",
        "Sportswear",
        5,
        1,
        "yes"
    ),
    ("PU58171LB", "puma", "nu-tility", 0, 0, "yes"),
    ("PU51371MB", "puma", "Nu-tility", 0, 0, "yes"),
    ("PU58131MP", "puma", "Nu-tility", 0, 0, "yes"),
    ("PU84760SB", "puma", "Graphic", 0, 0, "yes"),
    ("PU84782MB", "puma", "Shirts", 0, 0, "yes"),
    ("PU847828XW", "puma", "TraiPUng", 0, 0, "no");
-- populating review table
INSERT INTO review(
        approval,
        heading,
        product_code,
        rating,
        review
    )
VALUES (
        "yes",
        "Nice product ! !",
        "a102",
        4.5,
        "This is product is very nice and good.I like it 's quality and color:)"
    ),
    (
        "yes",
        "Good Quality",
        "ADC14536258MP ",
        4,
        "This is product is very nice and good.I like it' s quality and color:)"
    ),
    (
        "yes",
        "Very Bad:(",
        "a102",
        2,
        "I do not like this product.Color and quality both are very bad..."
    ),
    (
        "yes",
        "Awesome ! !",
        "NIDJ1829010MB",
        5,
        "I have used this product and it is very nice.I recommend this product for other users...."
    ),
    (
        "yes",
        "Nice product ! !",
        "NIDD0285100MW",
        3,
        "I like this product ! !"
    ),
    (
        "yes",
        "Nice product ! !",
        "NIDD0285100MW",
        3.5,
        "This product is very nice and good.I like this product:)"
    ),
    (
        "yes",
        "Nice product ! !",
        "NIDD0285100MW",
        4,
        "I like this product.It is very good..."
    ),
    (
        "yes",
        "Awesome ! !",
        "ADC13242545LY",
        5,
        "this is very nice product:)"
    ),
    (
        "yes",
        "Nice product ! !",
        "ADC23627167LB",
        3,
        "This product is nice.I like it.."
    ),
    (
        "yes",
        "Very Bad:(",
        "ADC23627167MM",
        2,
        "I do not like this product..."
    ),
    (
        "yes",
        "Awesome ! !",
        "NICB7952103MP",
        4.5,
        "this product is very nice:)"
    ),
    (
        "yes",
        "Nice product ! !",
        "ADC13242545LY",
        3,
        "This is very nice product:)"
    ),
    (
        "no",
        "Awesome ! !",
        "a101",
        4,
        "This product is very nice:)"
    ),
    (
        "yes",
        "Nice product ! !",
        "ab102",
        4,
        "This product is very nice..."
    ),
    (
        "no",
        "Nice product ! !",
        "ab103",
        3.5,
        "This is very nice product:)"
    );