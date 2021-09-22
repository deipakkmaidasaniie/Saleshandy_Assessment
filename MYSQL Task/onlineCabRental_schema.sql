create database onlineCabRental;

use onlineCabRental;

create table `ride_details`(
	`id` int(11) NOT NULL,
  `passenger_id` int(11) NOT NULL,
    `driver_id` int(11) NOT NULL,
  `fare` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `transaction_mode` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  `driver_amount` int(11) NOT NULL
);

ALTER TABLE `ride_details` ADD PRIMARY KEY (`id`);

ALTER TABLE `ride_details` ADD foreign key (passenger_id) references Passengers(id);
ALTER TABLE `ride_details` ADD foreign key (driver_id) references Drivers(id);


