SELECT SUM(`total_amount`) FROM `ride_details` WHERE transaction_mode = 'credit_card' AND `date` BETWEEN '2021-07-01' AND '2021-09-31';
