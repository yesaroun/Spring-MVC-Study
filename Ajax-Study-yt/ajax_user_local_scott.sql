create table ajax_user (
    userName    varchar2(20)
,   userAge       number
,   userGender  varchar2(20)
,   userEmail     varchar2(20)
);

insert into ajax_user( userName,   userAge,   userGender,   userEmail)
values ('나동빈', 22, '남자', 'test1@naver.com');




insert into ajax_user( userName,   userAge,   userGender,   userEmail)
values ('홍길동', 20, '남자', 'test2@naver.com');

insert into ajax_user( userName,   userAge,   userGender,   userEmail)
values ('이순신', 40, '남자', 'test3@naver.com');

insert into ajax_user( userName,   userAge,   userGender,   userEmail)
values ('전소미', 17, '여자', 'test4@naver.com');

insert into ajax_user( userName,   userAge,   userGender,   userEmail)
values ('김세정', 22, '여자', 'test5@naver.com');

insert into ajax_user( userName,   userAge,   userGender,   userEmail)
values ('최유정', 25, '여자', 'test6@naver.com');

insert into ajax_user( userName,   userAge,   userGender,   userEmail)
values ('김청하', 26, '여자', 'test7@naver.com');

insert into ajax_user( userName,   userAge,   userGender,   userEmail)
values ('김소혜', 19, '여자', 'test8@naver.com');

insert into ajax_user( userName,   userAge,   userGender,   userEmail)
values ('김소혜', 20, '여자', 'test9@naver.com');

insert into ajax_user( userName,   userAge,   userGender,   userEmail) values ('정채연', 21, '여자', 'test0@naver.com')
;


select *
from ajax_user
where userName like '';

