INSERT INTO bootcamp9.Cheeses (Cheeses.name)
VALUE ('cheese');

UPDATE bootcamp9.Cheeses
SET Cheeses.tasty = 1
WHERE Cheeses.name = 'cheese';

INSERT INTO bootcamp9.Cheeses(Cheeses.name, Cheeses.tasty, Cheeses.type, Cheeses.seller_name, Cheeses.seller_location,
                              Cheeses.seller_phone_number)
VALUES ('Halloumi', 1, 'Soft', 'Halloumi company', 'England', '01234551511'),
       ('new cheese', 0, 'stale', 'stale company', 'France', '01234672342');





