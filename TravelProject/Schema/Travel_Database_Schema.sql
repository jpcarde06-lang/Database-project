-- =============================================================
-- Travel Points Database - Schema (DDL)
-- CSC 4480 Project Phase 5, Task 1
-- =============================================================

--DROP all tables
DROP TABLE reward CASCADE CONSTRAINTS;
DROP TABLE award_availability CASCADE CONSTRAINTS;
DROP TABLE ticket CASCADE CONSTRAINTS;
DROP TABLE card_holding CASCADE CONSTRAINTS;
DROP TABLE transfer_partner CASCADE CONSTRAINTS;
DROP TABLE point_balance CASCADE CONSTRAINTS;
DROP TABLE airline CASCADE CONSTRAINTS;
DROP TABLE credit_card CASCADE CONSTRAINTS;
DROP TABLE destination CASCADE CONSTRAINTS;
DROP TABLE customer CASCADE CONSTRAINTS;
DROP TABLE loyalty_program CASCADE CONSTRAINTS;

--Tables with no foreign keys
CREATE TABLE loyalty_program (
  program_id    number(6),
  program_name  varchar2(40) not null unique,
  program_type  varchar2(15) not null,
  constraint loyaltyProgramPK primary key (program_id)
);

CREATE TABLE customer (
  customer_id  number(6),
  first_name   varchar2(25) not null,
  last_name    varchar2(25) not null,
  email        varchar2(50) not null unique,
  constraint customerPK primary key (customer_id)
);

CREATE TABLE destination (
  dest_id       number(6),
  airport_code  char(3) not null unique,
  city          varchar2(40) not null,
  country       varchar2(40) not null,
  constraint destinationPK primary key (dest_id)
);

--Tables referencing the tables above
CREATE TABLE credit_card (
  card_id     number(6),
  issuer      varchar2(25) not null,
  card_name   varchar2(50) not null,
  annual_fee  number(6,2) not null,
  earn_rate   number(4,2) not null,
  sub         number(7),
  program_id  number(6) not null,
  constraint creditCardPK primary key (card_id),
  constraint creditCardProgramFK foreign key (program_id) references loyalty_program(program_id)
);

CREATE TABLE airline (
  airline_id    number(6),
  airline_name  varchar2(40) not null unique,
  alliance      varchar2(20),
  program_id    number(6) not null,
  constraint airlinePK primary key (airline_id),
  constraint airlineProgramFK foreign key (program_id) references loyalty_program(program_id)
);

CREATE TABLE point_balance (
  balance_id    number(6),
  customer_id   number(6) not null,
  program_id    number(6) not null,
  points        number(9) not null,
  balance_date  date not null,
  constraint pointBalancePK primary key (balance_id),
  constraint balanceCustomerFK foreign key (customer_id) references customer(customer_id),
  constraint balanceProgramFK foreign key (program_id) references loyalty_program(program_id)
);

CREATE TABLE transfer_partner (
  from_program_id  number(6),
  to_program_id    number(6),
  transfer_ratio   number(4,2) not null,
  constraint transferPartnerPK primary key (from_program_id, to_program_id),
  constraint transferFromProgramFK foreign key (from_program_id) references loyalty_program(program_id),
  constraint transferToProgramFK foreign key (to_program_id) references loyalty_program(program_id)
);

CREATE TABLE card_holding (
  holding_id    number(6),
  customer_id   number(6) not null,
  card_id       number(6) not null,
  opened_date   date not null,
  bonus_status  varchar2(15) not null,
  constraint cardHoldingPK primary key (holding_id),
  constraint holdingCustomerFK foreign key (customer_id) references customer(customer_id),
  constraint holdingCardFK foreign key (card_id) references credit_card(card_id)
);

--Tables referencing card_holding / airline / destination
CREATE TABLE ticket (
  ticket_id    number(6),
  holding_id   number(6) not null,
  airline_id   number(6) not null,
  origin_id    number(6) not null,
  dest_id      number(6) not null,
  flight_date  date not null,
  booked_date  date not null,
  cabin        varchar2(15) not null,
  price        number(8,2) not null,
  mileage      number(6),
  constraint ticketPK primary key (ticket_id),
  constraint ticketHoldingFK foreign key (holding_id) references card_holding(holding_id),
  constraint ticketAirlineFK foreign key (airline_id) references airline(airline_id),
  constraint ticketOriginFK foreign key (origin_id) references destination(dest_id),
  constraint ticketDestFK foreign key (dest_id) references destination(dest_id)
);

CREATE TABLE award_availability (
  award_id     number(6),
  airline_id   number(6) not null,
  program_id   number(6) not null,
  origin_id    number(6) not null,
  dest_id      number(6) not null,
  flight_date  date not null,
  cabin        varchar2(15) not null,
  points_cost  number(7) not null,
  cash_fees    number(7,2) not null,
  seen_date    date not null,
  constraint awardAvailabilityPK primary key (award_id),
  constraint awardAirlineFK foreign key (airline_id) references airline(airline_id),
  constraint awardProgramFK foreign key (program_id) references loyalty_program(program_id),
  constraint awardOriginFK foreign key (origin_id) references destination(dest_id),
  constraint awardDestFK foreign key (dest_id) references destination(dest_id)
);

--Table referencing ticket
CREATE TABLE reward (
  reward_id   number(6),
  ticket_id   number(6) not null,
  program_id  number(6) not null,
  points      number(9) not null,
  source      varchar2(20) not null,
  constraint rewardPK primary key (reward_id),
  constraint rewardTicketFK foreign key (ticket_id) references ticket(ticket_id),
  constraint rewardProgramFK foreign key (program_id) references loyalty_program(program_id)
);

SELECT table_name, constraint_name, constraint_type
FROM user_constraints
WHERE table_name IN ('LOYALTY_PROGRAM', 'CUSTOMER', 'DESTINATION', 'CREDIT_CARD',
                     'AIRLINE', 'POINT_BALANCE', 'TRANSFER_PARTNER', 'CARD_HOLDING',
                     'TICKET', 'AWARD_AVAILABILITY', 'REWARD')
AND constraint_type IN ('P', 'R', 'U')
ORDER BY table_name, constraint_type;
