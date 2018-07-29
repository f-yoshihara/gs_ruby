SELECT  `names`.* FROM `names` WHERE `names`.`last_name` = 'Umetsu' LIMIT 1
-- まず、上のSQL文が生成されて、last_nameがUmetsuになっているところを探している。
-- もし、上記のデータがあればここで終了。
INSERT INTO `names` (`last_name`) VALUES ('Umetsu')
-- １番目の結果が帰らなければ、namesテーブルに検索条件に指定した値でINSERTしている。