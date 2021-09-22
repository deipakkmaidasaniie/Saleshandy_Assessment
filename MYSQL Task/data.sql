INSERT INTO `ride_details` (`id`, `passenger_id`,`driver_id`,`fare`,`total_amount`,`transaction_mode`, `date`,`driver_amount`) VALUES ('101', '121', '1210',1180, 1.18*fare,'netbanking', '2021-08-15 18:10:25',fare*0.85);

INSERT INTO `ride_details` (`id`, `passenger_id`,`driver_id`,`fare`,`total_amount`,`transaction_mode`, `date`,`driver_amount`) VALUES ('111', '121', '100',1180, 1.18*fare,'netbanking', '2021-08-15 18:10:25',fare*0.85);

INSERT INTO `ride_details` (`id`, `passenger_id`,`driver_id`,`fare`,`total_amount`,`transaction_mode`, `date`,`driver_amount`) VALUES ('171', '131', '1210',1180, 1.18*fare,'netbanking', '2021-08-20 14:10:25',fare*0.85);


SELECT SUM(`total_amount`) FROM `ride_details` WHERE transaction_mode = 'credit_card' AND `date` BETWEEN '2021-07-01' AND '2021-09-31';

select * from ride_details;
