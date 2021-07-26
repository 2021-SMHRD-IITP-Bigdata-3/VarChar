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