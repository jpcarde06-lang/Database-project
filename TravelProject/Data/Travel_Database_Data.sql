-- =============================================================
-- Travel Points Database - Sample Data
-- CSC 4480 Project Phase 5, Task 2
-- =============================================================

-- LOYALTY_PROGRAM: Core table: bank, airline and hotel loyalty programs
INSERT INTO loyalty_program VALUES (1, 'Chase Ultimate Rewards', 'BANK');
INSERT INTO loyalty_program VALUES (2, 'American Express Membership Rewards', 'BANK');
INSERT INTO loyalty_program VALUES (3, 'Capital One Miles', 'BANK');
INSERT INTO loyalty_program VALUES (6, 'United MileagePlus', 'AIRLINE');
INSERT INTO loyalty_program VALUES (7, 'Delta SkyMiles', 'AIRLINE');
INSERT INTO loyalty_program VALUES (8, 'American AAdvantage', 'AIRLINE');
INSERT INTO loyalty_program VALUES (9, 'Atmos Rewards', 'AIRLINE');
INSERT INTO loyalty_program VALUES (10, 'Air Canada Aeroplan', 'AIRLINE');
INSERT INTO loyalty_program VALUES (11, 'Air France-KLM Flying Blue', 'AIRLINE');
INSERT INTO loyalty_program VALUES (12, 'British Airways Executive Club', 'AIRLINE');
INSERT INTO loyalty_program VALUES (14, 'JetBlue TrueBlue', 'AIRLINE');
INSERT INTO loyalty_program VALUES (16, 'World of Hyatt', 'HOTEL');

-- CUSTOMER: Customers (team members and sample names, example.com emails). 1006 holds no cards.
INSERT INTO customer VALUES (1001, 'Carter', 'Mui', 'carter.mui@example.com');
INSERT INTO customer VALUES (1002, 'John Paul', 'Cardenas', 'johnpaul.cardenas@example.com');
INSERT INTO customer VALUES (1003, 'Adrien', 'Motaharian', 'adrien.motaharian@example.com');
INSERT INTO customer VALUES (1004, 'Caroline', 'Scales', 'caroline.scales@example.com');
INSERT INTO customer VALUES (1005, 'Tyler', 'Mui', 'tyler.mui@example.com');
INSERT INTO customer VALUES (1006, 'Jack', 'Farlekas', 'jack.farlekas@example.com');
INSERT INTO customer VALUES (1007, 'LeBron', 'James', 'lebron.james@example.com');
INSERT INTO customer VALUES (1008, 'Cade', 'Cunningham', 'cade.cunningham@example.com');
INSERT INTO customer VALUES (1010, 'Wardell Stephen', 'Curry', 'wardell.curry@example.com');
INSERT INTO customer VALUES (1012, 'Darren', 'Watkins Jr', 'darren.watkins@example.com');

-- DESTINATION: Airports
INSERT INTO destination VALUES (101, 'PHL', 'Philadelphia', 'United States');
INSERT INTO destination VALUES (102, 'JFK', 'New York', 'United States');
INSERT INTO destination VALUES (103, 'EWR', 'Newark', 'United States');
INSERT INTO destination VALUES (104, 'LAX', 'Los Angeles', 'United States');
INSERT INTO destination VALUES (105, 'SFO', 'San Francisco', 'United States');
INSERT INTO destination VALUES (106, 'MIA', 'Miami', 'United States');
INSERT INTO destination VALUES (107, 'HNL', 'Honolulu', 'United States');
INSERT INTO destination VALUES (108, 'LHR', 'London', 'United Kingdom');
INSERT INTO destination VALUES (109, 'CDG', 'Paris', 'France');
INSERT INTO destination VALUES (110, 'AMS', 'Amsterdam', 'Netherlands');
INSERT INTO destination VALUES (112, 'NRT', 'Tokyo', 'Japan');
INSERT INTO destination VALUES (113, 'FCO', 'Rome', 'Italy');

-- CREDIT_CARD: Card products (annual fees and bonuses approximate as of 2026)
INSERT INTO credit_card VALUES (301, 'Chase', 'Sapphire Preferred', 95, 1.00, 75000, 1);
INSERT INTO credit_card VALUES (302, 'Chase', 'Sapphire Reserve', 795, 1.00, 125000, 1);
INSERT INTO credit_card VALUES (303, 'Chase', 'Freedom Unlimited', 0, 1.50, null, 1);
INSERT INTO credit_card VALUES (304, 'American Express', 'Gold Card', 325, 1.00, 60000, 2);
INSERT INTO credit_card VALUES (305, 'American Express', 'Platinum Card', 895, 1.00, 80000, 2);
INSERT INTO credit_card VALUES (306, 'Capital One', 'Venture X', 395, 2.00, 75000, 3);
INSERT INTO credit_card VALUES (310, 'Chase', 'United Explorer', 150, 1.00, 60000, 6);
INSERT INTO credit_card VALUES (311, 'American Express', 'Delta SkyMiles Gold', 150, 1.00, 70000, 7);
INSERT INTO credit_card VALUES (312, 'Citi', 'AAdvantage Platinum Select', 99, 1.00, 50000, 8);
INSERT INTO credit_card VALUES (313, 'Bank of America', 'Atmos Rewards Ascent', 95, 1.00, 60000, 9);

-- AIRLINE: Airlines and the loyalty program each belongs to
INSERT INTO airline VALUES (201, 'United Airlines', 'Star Alliance', 6);
INSERT INTO airline VALUES (202, 'Delta Air Lines', 'SkyTeam', 7);
INSERT INTO airline VALUES (203, 'American Airlines', 'oneworld', 8);
INSERT INTO airline VALUES (204, 'Alaska Airlines', 'oneworld', 9);
INSERT INTO airline VALUES (205, 'Hawaiian Airlines', 'oneworld', 9);
INSERT INTO airline VALUES (206, 'Air Canada', 'Star Alliance', 10);
INSERT INTO airline VALUES (207, 'Air France', 'SkyTeam', 11);
INSERT INTO airline VALUES (208, 'KLM Royal Dutch Airlines', 'SkyTeam', 11);
INSERT INTO airline VALUES (209, 'British Airways', 'oneworld', 12);
INSERT INTO airline VALUES (211, 'JetBlue Airways', null, 14);

-- POINT_BALANCE: Point balance snapshots (4017-4018 are older snapshots to show history)
INSERT INTO point_balance VALUES (4001, 1001, 1, 142500, '01-NOV-2026');
INSERT INTO point_balance VALUES (4002, 1001, 12, 18200, '01-NOV-2026');
INSERT INTO point_balance VALUES (4003, 1002, 2, 96000, '01-NOV-2026');
INSERT INTO point_balance VALUES (4004, 1002, 7, 41300, '01-NOV-2026');
INSERT INTO point_balance VALUES (4005, 1003, 3, 210400, '01-NOV-2026');
INSERT INTO point_balance VALUES (4007, 1004, 6, 64900, '01-NOV-2026');
INSERT INTO point_balance VALUES (4010, 1006, 14, 31200, '01-NOV-2026');
INSERT INTO point_balance VALUES (4011, 1007, 2, 154000, '01-NOV-2026');
INSERT INTO point_balance VALUES (4012, 1008, 9, 23400, '01-NOV-2026');
INSERT INTO point_balance VALUES (4016, 1012, 1, 188000, '01-NOV-2026');
INSERT INTO point_balance VALUES (4017, 1001, 1, 97500, '01-AUG-2026');
INSERT INTO point_balance VALUES (4018, 1003, 3, 135400, '01-AUG-2026');

-- TRANSFER_PARTNER: Transfer partners (ratio = points received per point sent, approximate as of 2026)
INSERT INTO transfer_partner VALUES (1, 6, 1.00);
INSERT INTO transfer_partner VALUES (1, 10, 1.00);
INSERT INTO transfer_partner VALUES (1, 11, 1.00);
INSERT INTO transfer_partner VALUES (1, 12, 1.00);
INSERT INTO transfer_partner VALUES (1, 16, 1.00);
INSERT INTO transfer_partner VALUES (2, 7, 1.00);
INSERT INTO transfer_partner VALUES (2, 10, 1.00);
INSERT INTO transfer_partner VALUES (2, 12, 1.00);
INSERT INTO transfer_partner VALUES (2, 14, 0.80);
INSERT INTO transfer_partner VALUES (3, 11, 1.00);
INSERT INTO transfer_partner VALUES (3, 12, 1.00);
INSERT INTO transfer_partner VALUES (3, 14, 0.60);

-- CARD_HOLDING: Cards opened by customers
INSERT INTO card_holding VALUES (2001, 1001, 301, '14-MAR-2025', 'EARNED');
INSERT INTO card_holding VALUES (2002, 1001, 303, '02-JUN-2025', 'NOT_ELIGIBLE');
INSERT INTO card_holding VALUES (2003, 1002, 304, '21-JAN-2026', 'EARNED');
INSERT INTO card_holding VALUES (2004, 1002, 311, '10-SEP-2026', 'PENDING');
INSERT INTO card_holding VALUES (2005, 1003, 306, '05-NOV-2024', 'EARNED');
INSERT INTO card_holding VALUES (2006, 1004, 310, '18-JUL-2025', 'EARNED');
INSERT INTO card_holding VALUES (2007, 1004, 302, '30-AUG-2026', 'PENDING');
INSERT INTO card_holding VALUES (2009, 1005, 312, '25-APR-2025', 'EARNED');
INSERT INTO card_holding VALUES (2011, 1007, 305, '09-DEC-2025', 'EARNED');
INSERT INTO card_holding VALUES (2012, 1008, 313, '15-MAY-2026', 'PENDING');
INSERT INTO card_holding VALUES (2014, 1010, 306, '11-JAN-2026', 'EARNED');
INSERT INTO card_holding VALUES (2016, 1012, 302, '08-FEB-2025', 'EARNED');

-- TICKET: Tickets purchased (paid with the card holding)
INSERT INTO ticket VALUES (3001, 2001, 209, 101, 108, '12-JUN-2026', '20-FEB-2026', 'ECONOMY', 842.60, 3549);
INSERT INTO ticket VALUES (3002, 2003, 202, 102, 104, '03-APR-2026', '15-FEB-2026', 'ECONOMY', 389.20, 2475);
INSERT INTO ticket VALUES (3003, 2005, 207, 102, 109, '18-MAY-2026', '01-MAR-2026', 'BUSINESS', 4210.00, 3624);
INSERT INTO ticket VALUES (3004, 2006, 201, 103, 105, '09-MAR-2026', '11-JAN-2026', 'ECONOMY', 412.75, 2565);
INSERT INTO ticket VALUES (3006, 2009, 203, 101, 113, '14-JUL-2026', '03-MAR-2026', 'PREMIUM', 1689.00, 4365);
INSERT INTO ticket VALUES (3007, 2011, 209, 102, 108, '21-SEP-2026', '10-JUN-2026', 'BUSINESS', 5120.00, 3451);
INSERT INTO ticket VALUES (3008, 2012, 205, 104, 107, '02-AUG-2026', '29-MAY-2026', 'ECONOMY', 356.90, 2556);
INSERT INTO ticket VALUES (3009, 2014, 203, 101, 106, '06-OCT-2026', '12-SEP-2026', 'ECONOMY', 264.30, 1013);
INSERT INTO ticket VALUES (3010, 2016, 201, 105, 112, '15-NOV-2026', '20-JUL-2026', 'BUSINESS', 6475.00, 5130);
INSERT INTO ticket VALUES (3013, 2002, 208, 102, 110, '04-FEB-2027', '08-NOV-2026', 'PREMIUM', 1450.00, 3639);

-- AWARD_AVAILABILITY: Award seats observed (program may differ from the operating airline)
INSERT INTO award_availability VALUES (5001, 209, 12, 101, 108, '15-MAR-2027', 'ECONOMY', 22750, 245.80, '10-NOV-2026');
INSERT INTO award_availability VALUES (5002, 209, 12, 102, 108, '22-MAR-2027', 'BUSINESS', 68000, 835.40, '10-NOV-2026');
INSERT INTO award_availability VALUES (5003, 201, 10, 103, 108, '05-APR-2027', 'BUSINESS', 60000, 72.50, '09-NOV-2026');
INSERT INTO award_availability VALUES (5004, 207, 11, 102, 109, '18-APR-2027', 'BUSINESS', 72000, 198.30, '08-NOV-2026');
INSERT INTO award_availability VALUES (5005, 208, 11, 102, 110, '02-MAY-2027', 'BUSINESS', 60000, 215.60, '08-NOV-2026');
INSERT INTO award_availability VALUES (5008, 202, 7, 102, 104, '14-FEB-2027', 'ECONOMY', 12500, 5.60, '07-NOV-2026');
INSERT INTO award_availability VALUES (5009, 203, 8, 101, 106, '20-JAN-2027', 'ECONOMY', 7500, 5.60, '06-NOV-2026');
INSERT INTO award_availability VALUES (5010, 203, 8, 101, 113, '12-JUN-2027', 'BUSINESS', 57500, 48.70, '06-NOV-2026');
INSERT INTO award_availability VALUES (5011, 205, 9, 104, 107, '18-FEB-2027', 'ECONOMY', 7500, 5.60, '05-NOV-2026');
INSERT INTO award_availability VALUES (5012, 203, 9, 102, 104, '25-FEB-2027', 'FIRST', 32500, 5.60, '05-NOV-2026');
INSERT INTO award_availability VALUES (5014, 201, 10, 105, 112, '01-APR-2027', 'BUSINESS', 75000, 66.20, '04-NOV-2026');

-- REWARD: Points earned from tickets
INSERT INTO reward VALUES (6001, 3001, 12, 4200, 'FLIGHT');
INSERT INTO reward VALUES (6002, 3001, 1, 843, 'CARD_SPEND');
INSERT INTO reward VALUES (6003, 3002, 7, 1950, 'FLIGHT');
INSERT INTO reward VALUES (6004, 3002, 2, 1557, 'CARD_SPEND');
INSERT INTO reward VALUES (6005, 3003, 3, 8420, 'CARD_SPEND');
INSERT INTO reward VALUES (6006, 3003, 11, 25260, 'FLIGHT');
INSERT INTO reward VALUES (6007, 3004, 6, 2064, 'FLIGHT');
INSERT INTO reward VALUES (6010, 3006, 8, 8445, 'FLIGHT');
INSERT INTO reward VALUES (6011, 3007, 2, 25600, 'CARD_SPEND');
INSERT INTO reward VALUES (6012, 3008, 9, 2556, 'FLIGHT');
INSERT INTO reward VALUES (6014, 3010, 1, 51800, 'CARD_SPEND');
INSERT INTO reward VALUES (6015, 3010, 6, 5000, 'BONUS');

COMMIT;

select * from loyalty_program;
select * from customer;
select * from destination;
select * from credit_card;
select * from airline;
select * from point_balance;
select * from transfer_partner;
select * from card_holding;
select * from ticket;
select * from award_availability;
select * from reward;
