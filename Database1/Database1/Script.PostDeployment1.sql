/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
INSERT INTO [dbo].[Procedure] (procedureID, description, price) VALUES
(01, 'Rabies Vaccination', 24.00),
(05, 'Heart Worm Test', 25.00),
(08, 'Tetanus Vaccination', 17.00),
(10, 'Examine and treat Wound', 30.00);

INSERT INTO [dbo].[Owner] (ownerID, firstName, surname, phone) VALUES
(1, 'Frank', 'Sinatra', 400111222),
(2, 'Duke', 'Ellington', 400222333),
(3, 'Ella', 'Fitzgerald', 400333444),
(4, 'Mark', 'Romig', 400444555);

INSERT INTO [dbo].[Pet] (ownerID, petName, petType) VALUES
(1,'Buster', 'Dog'),
(1,'Fluffy', 'Cat'),
(2,'Stew', 'Rabbit'),
(3,'Pooper', 'Dog'),
(3,'Buster', 'Dog');

INSERT INTO [dbo].[Treatment] (procedureID, date, price, ownerID, petName, notes) VALUES
(01, 20-June-17, 22.00, 1, 'Buster', 'Routine Vaccination'),
(01, 15-May-18, 24.00, 1, 'Buster', 'Booster Shot'),
(10, 10-May-18, 30.00, 1, 'Fluffy', 'Wounds sustained in apparent cat fight'),
(01, 20-June-17, 22.00, 1, 'Fluffy', 'Routine Vaccination'),
(10, 10-May-18, 30.00, 2, 'Stew', 'Wounds sustained during attempt to cook the Stew'),
(01, 15-May-18, 24.00, 2, 'Stew', 'Routine Vaccination'),
(05, 18-May-18, 25.00, 3, 'Pooper', 'Routine Test'),
(08, 20-June-17, 17.00, 3, 'Buster', 'Stepped on rusty nail'),
(01, 20-June-17, 22.00, 3, 'Buster', 'Routine Vaccination');
