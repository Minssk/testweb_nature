/*스키마생성 및 문자열셋*/
create database BBS default character SET UTF8;


/*테이블생성*/
CREATE TABLE `USER` (
    `userID` varchar(20) NOT NULL,
    `userPassword` varchar(20),
    `userName` varchar(20),
    `userGender` varchar(20),
    `userEmail` varchar(50),
    PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*초기화*/
truncate `USER`; 
/*입력*/
INSERT INTO USER VALUES('kms9708','123456','김민수','남자','kms@naver.com');
/*선택*/
select * from USER