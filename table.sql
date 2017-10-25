

CREATE TABLE IF NOT EXISTS `table1` (
  `id` int(6),
  `name` varchar(100),
  `city` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8;
INSERT INTO `table1` (`id`, `name`, `city`) VALUES
  ('1', 'patryk', 'Dzierżoniów'),
  ('2', 'adrian', 'Bielawa'),
  ('3', 'zosia', 'Dzierżoniów'),
  ('4', 'jola', 'Dzierżoniów');

  
  CREATE TABLE IF NOT EXISTS `shoop` (
  `id` int(6),
  `name` varchar(200),
  PRIMARY KEY (`id`)
  ) DEFAULT CHARSET=utf8;
  INSERT INTO `shoop` (`id`, `name`) VALUES
  ('1', 'biedronka'),
  ('2', 'LIDL'),
  ('3', 'ŻABKA'),
  ('4', 'LACOSTA');
  
  
CREATE TABLE IF NOT EXISTS `table2` (
  `id` int(6),
  `user_id` int(6),
  `phone` int(12),
  `shoop_id` int(6),
  FOREIGN KEY (`user_id`) REFERENCES table1(`id`),
  FOREIGN KEY (`shoop_id`) REFERENCES shoop(`id`),
  PRIMARY KEY (`id`)
  );
  INSERT INTO `table2` (`id`, `user_id`, `phone`, `shoop_id`) VALUES
  ('1', '1', '881672977', '1'),
  ('2', '1', '453332115', '2'),
  ('3', '3', '223563324', '2'),
  ('4', '2', '881672977', '1');
  
