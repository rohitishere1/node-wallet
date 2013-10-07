CREATE TABLE `paytmcash_details` (
  `paytmcash_detailsID` bigint(20) NOT NULL AUTO_INCREMENT,
  `customer_registrationID` bigint(20) DEFAULT NULL,
  `paytmcash_balance` double DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`paytmcash_detailsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `paytmcash_transaction_details` (
  `paytmcash_transaction_detailsID` bigint(20) NOT NULL AUTO_INCREMENT,
  `transaction_mainid` bigint(20) DEFAULT NULL,
  `customerID` bigint(20) DEFAULT NULL,
  `paytmcash_detailsID` bigint(20) DEFAULT NULL,
  `paytmcash_applicationID` text,
  `paytmcash_transaction_remarks` text,
  `paytmcash_transaction_type` tinytext,
  `paytmcash_transaction_date` datetime DEFAULT NULL,
  `paytmcash_transaction_amount` double DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`paytmcash_transaction_detailsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;