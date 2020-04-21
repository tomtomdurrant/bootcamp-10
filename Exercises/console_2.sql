INSERT INTO bootcamp9.Addresses(Addresses.Name, Addresses.Street, Addresses.City, Addresses.Postcode) 
VALUES ('Zoom', 'Your house', 'Your City', 'Postcode'), ('Waters', 'Waters Address', 'Wilmslow', 'Postcode');

INSERT INTO bootcamp9.Companies(Companies.Name, Companies.AddressID) 
VALUES ('Waters', 2);

INSERT INTO bootcamp9.Users(Users.Name, Users.Email, Users.ContactNumber, Users.CompanyId, Users.AddressId) 
VALUES ('Duncan', 'duncan_joyce@waters.com', '079797979797', 1, 2);

INSERT INTO bootcamp9.Events(Events.Name, Events.DateTime, Events.HostID, Events.AddressID) 
VALUES ('Intro to databases', NOW(), 2, 1);

INSERT INTO bootcamp9.Events(Events.Name, Events.DateTime, Events.HostID, Events.AddressID) 
VALUES ('Nullable', NOW(), NULL, NULL);


SELECT Events.Name as EventName, Addresses.Name as AddressName
FROM bootcamp9.Events
INNER JOIN Users  
ON Events.HostID = Users.Id
INNER JOIN Addresses 
on Events.AddressID = Addresses.Id;
# INNER JOIN Companies C 
#     on A.Id = C.AddressID

INSERT INTO bootcamp9.Events(Events.Name, Events.HostId, Events.AddressId)
VALUES ('New Event', 2, 1);