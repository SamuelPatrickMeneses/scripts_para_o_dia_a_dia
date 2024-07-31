use test;
DROP TRIGGER IF EXISTS TRIGER_NAME;
CREATE TABLE IF NOT EXISTS log (
	id int PRIMARY KEY AUTO_INCREMENT,
    message varchar(20),
    momento time
);
DELIMITER $ 
CREATE TRIGGER IF NOT EXISTS TRIGER_NAME BEFORE INSERT ON cliente FOR EACH ROW 
BEGIN
	INSERT INTO log (message,momento) values (NEW.name,CURRENT_TIME());
END $
DELIMITER ;
SELECT * FROM log ;
INSERT INTO cliente (estado,name) VALUES ('pr','samuel');
SELECT * FROM log;