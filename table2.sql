
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
  
    
  CREATE TABLE IF NOT EXISTS `table1` (
  `id` int(6),
  `name` varchar(100),
  `city_id` int(6),
  `group` varchar(100) NOT NULL,
  FOREIGN KEY (`city_id`) REFERENCES MIASTA(`id`),
  PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8;
  INSERT INTO `table1` (`id`, `name`, `city_id`, `group`) VALUES
  ('1', 'patryk', '1', 'DETAL'),
  ('2', 'adrian', '2', 'VIP'),
  ('3', 'zosia', '3', 'HURT'),
  ('4', 'jola', '2', 'HURT');
  
  CREATE TABLE IF NOT EXISTS `FAKTURY` (
  `id` int(6),
  `user_id` int(6),
  `BRUTTO` int(12),
  `MOUTH` varchar(20),
  FOREIGN KEY (`user_id`) REFERENCES table1(`id`),
  PRIMARY KEY (`id`)
  );
  INSERT INTO `FAKTURY` (`id`, `user_id`, `BRUTTO`, `MOUTH`) VALUES
  ('1', '1', '500', 'WRZESIEŃ'),
  ('2', '2', '234', 'WRZESIEŃ'),
  ('3', '4', '234', 'maj'),
  ('4', '3', '2654', 'WRZESIEŃ');
 