// Skin(피부타입) 테이블 생성
create table skin (
	skin_id number,
	skin_type varchar2(100) not null,
	skin_exp varchar2(1000) not null,
	
	constraint skin_id_pk primary key(skin_id)
);

// Skin_id 시퀀스 생성
create sequence skin_num
start with 1 increment by 1;

// Skin(피부타입) 테이블 데이터 삽입
insert into skin values(skin_num.nextval, 'OSPT', '피지-염증-색소침착의 악순환이 반복되고 검은 점이 더 오래 남아 있는 피부입니다.');
insert into skin values(skin_num.nextval, 'OSNT', '감정 변화나 다양한 자극으로 쉽게 얼굴이 붉어지고 곳곳에 여드름이 보이는 피부입니다.');
insert into skin values(skin_num.nextval, 'OSPW', '다양한 피부트러블과 함께 색소침착, 노화까지 겪고 있는 총체적 난국의 피부입니다.');
insert into skin values(skin_num.nextval, 'OSNW', '잘 익은 바닷가재처럼 햇빛에 쉽게 붉어지고 번들거리며 종종 여드름이 보이는 피부입니다.');
insert into skin values(skin_num.nextval, 'ORNT', '번들거림은 있으나, 어느 것 하나 흠 잡을 곳 없이 광채가 나는 피부입니다.');
insert into skin values(skin_num.nextval, 'ORPW', '민감성 피부의 흔적으로 매일 아침마다 넓은 모공과 주름, 반점을 마주하는 피부입니다.');
insert into skin values(skin_num.nextval, 'ORNW', '피부 트러블이 없어 피부에 관심이 적으나, 주름과 노화가 눈에 띄는 피부입니다.');
insert into skin values(skin_num.nextval, 'ORPT', '자외선으로 주근깨와 검은 반점이 쉽게 생겨 고민이지만 장점이 훨씬 많은 피부입니다.');
insert into skin values(skin_num.nextval, 'DSNT', '사막에 있는 것처럼 심한 건조함과 화끈거림을 느끼며 각질과 붉은 기를 보이는 피부입니다.');
insert into skin values(skin_num.nextval, 'DSPW', '피부가 매우 민감하고 얇아 쉽게 반응을 보이며, 모든 종류의 문제를 보일 수 있는 피부입니다.');
insert into skin values(skin_num.nextval, 'DSNW', '하루마다 피부 상태가 급변하고 가려움, 따가움, 홍조 등과 함께 주름이 보이는 피부입니다.');
insert into skin values(skin_num.nextval, 'DSPT', '수많은 민감 증상으로 매순간 고통을 받으며, 특히 습진, 각질, 색소침착 등을 겪는 피부입니다.');
insert into skin values(skin_num.nextval, 'DRPW', '과거 피부에 문제가 없어 방치하였으나, 지금은 검은 반점과 주름을 가진 피부입니다.');
insert into skin values(skin_num.nextval, 'DRNW', '젋었을 때 좋은 피부를 유지하지만, 건조함과 함께 빠른 노화를 겪는 피부입니다.');
insert into skin values(skin_num.nextval, 'DRPT', '자외선으로 기미, 검은 반점이 나타나기 쉽지만 아름답게 관리할 수 있는 피부입니다.');
insert into skin values(skin_num.nextval, 'DRNT', '피부 복권에 당첨된 것처럼 피부 결이 좋고 깨끗한 피부입니다.');

select * from skin_member;

// member 테이블 추가(이미 있는 테이블이라서 skin_member로 변경)
create table skin_member(
	member_id varchar2(100),
	member_pw varchar2(100) not null,
	member_name varchar2(20) not null,
	member_birth date not null,
	skin_id number,
	
	constraint skin_member_id_pk primary key(member_id),
	constraint skin_id_fk foreign key(skin_id) references skin(skin_id)
);

insert into skin_member values('asdksd@naver.com', '1234', '이차규', '1999-09-09', null);
update skin_member set skin_id = 1 where member_name = '이차규';

// skin_record(피부타입 기록) 테이블 추가
create table skin_record (
	member_id varchar2(100),
	skin_id number,
	test_date date not null,
	
	constraint member_id_fk foreign key(member_id) references skin_member(member_id),
	constraint skin_record_id_fk foreign key(skin_id) references skin(skin_id)
);

select * from skin_record;

// product(상품) 테이블 추가
create table product (
	product_id number,
	product_name varchar2(100) not null,
	product_price number not null,
	skin_id number,
	product_manu varchar2(100) not null,
	product_in varchar2(1000) not null,
	product_grade number not null,
	
	constraint product_id_pk primary key(product_id),
	constraint product_skin_id_fk foreign key(skin_id) references skin(skin_id)
);

select * from product;

// 상품 테이블 시퀀스 생성(product_num)
create sequence product_num
start with 1 increment by 1;

// review(리뷰) 테이블 생성
create table review (
	review_id number,
	product_id number not null,
	member_id varchar2(100) not null,
	review_content varchar2(1000) not null,
	review_date date not null,
	review_grade number not null,
	
	constraint review_id_pk primary key(review_id),
	constraint product_id_fk foreign key(product_id) references product(product_id),
	constraint review_member_id_fk foreign key(member_id) references skin_member(member_id)
);

select * from review;

// 리뷰 테이블 시퀀스 생성(review_num)
create sequence review_num
start with 1 increment by 1;

// board(게시판) 테이블 생성
create table board (
	board_id number,
	board_title varchar2(100) not null,
	member_id varchar2(100) not null,
	board_content varchar2(1000) not null,
	board_date date not null,
	
	constraint board_id_pk primary key(board_id),
	constraint board_member_id_fk foreign key(member_id) references skin_member(member_id)
);

select * from board;

// 게시판 테이블 시퀀스 생성(board_num)
create sequence board_num
start with 1 increment by 1;

// Survey(설문조사) 테이블 생성
// 기본키인 survey_id는 직접 입력
create table survey (
	survey_id varchar2(20),
	survey_text varchar2(200) not null,
	survey_option varchar2(200) not null,
	survey_score number not null,
	
	constraint survey_id_pk primary key(survey_id)
);

select * from survey;

// Notice(공지사항) 테이블 생성
create table notice(
	notice_id number,
	notice_title varchar2(100) not null,
	notice_content varchar2(1000) not null,
	notice_date date not null,
	
	constraint notice_id_pk primary key(notice_id)
);

select * from notice;

// 공지사항 테이블 시퀀스 생성(notice_num)
create sequence notice_num
start with 1 increment by 1;

// Order(구매내역) 테이블 생성
// order_id 추가 (기본키 설정)
create table order_product(
	order_id number,
	member_id varchar2(100) not null,
	product_id number not null,
	order_quantity number not null,
	order_date date not null,
	
	constraint order_id_pk primary key(order_id),
	constraint order_member_id_fk foreign key(member_id) references skin_member(member_id),
	constraint order_product_id_fk foreign key(product_id) references product(product_id)
);

// 구매내역 테이블 시퀀스 생성(order_num)
create sequence order_num
start with 1 increment by 1;