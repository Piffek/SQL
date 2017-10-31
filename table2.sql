
  CREATE TABLE IF NOT EXISTS `MIASTA` (
  `id` int(6),
  `city` varchar(100),
  `SIZE` varchar(12),
  PRIMARY KEY (`id`)
  );
  INSERT INTO `MIASTA` (`id`, `city`, `SIZE`) VALUES
  ('1', 'Dzierżoniów', '>500'),
  ('2', 'Bielawa', '<234'),
  ('3', 'Wrocław', '>1000');
  
   CREATE TABLE IF NOT EXISTS `CLIENTS_GROUP` (
  `id` int(6),
  `symbol` varchar(20),
  `rabat` varchar(12),
  PRIMARY KEY (`id`)
  );
  INSERT INTO `CLIENTS_GROUP` (`id`, `symbol`, `rabat`) VALUES
  ('1', 'HURT', '5.00%'),
  ('2', 'DETAL', '0.00%'),
  ('3', 'VIT', '10.00%');
    
  CREATE TABLE IF NOT EXISTS `table1` (
  `id` int(6),
  `name` varchar(100),
  `city_id` int(6),
  `group_id` int(6),
  FOREIGN KEY (`city_id`) REFERENCES MIASTA(`id`),
  FOREIGN KEY (`group_id`) REFERENCES CLIENTS_GROUP(`id`),
  PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8;
  INSERT INTO `table1` (`id`, `name`, `city_id`, `group_id`) VALUES
  ('1', 'patryk', '1', '2'),
  ('2', 'adrian', '2', '3'),
  ('3', 'Aosia', '3', '1'),
  ('4', 'jola', '2', '1');
  
  CREATE TABLE IF NOT EXISTS `FAKTURY` (
  `id` int(6),
  `user_id` int(6),
  `BRUTTO` int(12),
  `MONTH` varchar(20),
  FOREIGN KEY (`user_id`) REFERENCES table1(`id`),
  PRIMARY KEY (`id`)
  );
  INSERT INTO `FAKTURY` (`id`, `user_id`, `BRUTTO`, `MONTH`) VALUES
  ('1', '1', '5000', 'WRZESIEŃ'),
  ('2', '2', '27400', 'WRZESIEŃ'),
  ('3', '4', '2340', 'maj'),
  ('4', '3', '26540', 'WRZESIEŃ');
  
 