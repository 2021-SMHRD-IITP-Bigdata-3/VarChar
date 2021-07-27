// Skin(�Ǻ�Ÿ��) ���̺� ����
create table skin (
	skin_id number,
	skin_type varchar2(100) not null,
	skin_exp varchar2(1000) not null,
	
	constraint skin_id_pk primary key(skin_id)
);

// Skin_id ������ ����
create sequence skin_num
start with 1 increment by 1;

// Skin(�Ǻ�Ÿ��) ���̺� ������ ����
insert into skin values(skin_num.nextval, 'OSPT', '����-����-����ħ���� �Ǽ�ȯ�� �ݺ��ǰ� ���� ���� �� ���� ���� �ִ� �Ǻ��Դϴ�.');
insert into skin values(skin_num.nextval, 'OSNT', '���� ��ȭ�� �پ��� �ڱ����� ���� ���� �Ӿ����� ������ ���帧�� ���̴� �Ǻ��Դϴ�.');
insert into skin values(skin_num.nextval, 'OSPW', '�پ��� �Ǻ�Ʈ����� �Բ� ����ħ��, ��ȭ���� �ް� �ִ� ��ü�� ������ �Ǻ��Դϴ�.');
insert into skin values(skin_num.nextval, 'OSNW', '�� ���� �ٴ尡��ó�� �޺��� ���� �Ӿ����� ����Ÿ��� ���� ���帧�� ���̴� �Ǻ��Դϴ�.');
insert into skin values(skin_num.nextval, 'ORNT', '����Ÿ��� ������, ��� �� �ϳ� �� ���� �� ���� ��ä�� ���� �Ǻ��Դϴ�.');
insert into skin values(skin_num.nextval, 'ORPW', '�ΰ��� �Ǻ��� �������� ���� ��ħ���� ���� ����� �ָ�, ������ �����ϴ� �Ǻ��Դϴ�.');
insert into skin values(skin_num.nextval, 'ORNW', '�Ǻ� Ʈ������ ���� �Ǻο� ������ ������, �ָ��� ��ȭ�� ���� ��� �Ǻ��Դϴ�.');
insert into skin values(skin_num.nextval, 'ORPT', '�ڿܼ����� �ֱٱ��� ���� ������ ���� ���� ��������� ������ �ξ� ���� �Ǻ��Դϴ�.');
insert into skin values(skin_num.nextval, 'DSNT', '�縷�� �ִ� ��ó�� ���� �����԰� ȭ���Ÿ��� ������ ������ ���� �⸦ ���̴� �Ǻ��Դϴ�.');
insert into skin values(skin_num.nextval, 'DSPW', '�Ǻΰ� �ſ� �ΰ��ϰ� ��� ���� ������ ���̸�, ��� ������ ������ ���� �� �ִ� �Ǻ��Դϴ�.');
insert into skin values(skin_num.nextval, 'DSNW', '�Ϸ縶�� �Ǻ� ���°� �޺��ϰ� ������, ������, ȫ�� ��� �Բ� �ָ��� ���̴� �Ǻ��Դϴ�.');
insert into skin values(skin_num.nextval, 'DSPT', '������ �ΰ� �������� �ż��� ������ ������, Ư�� ����, ����, ����ħ�� ���� �޴� �Ǻ��Դϴ�.');
insert into skin values(skin_num.nextval, 'DRPW', '���� �Ǻο� ������ ���� ��ġ�Ͽ�����, ������ ���� ������ �ָ��� ���� �Ǻ��Դϴ�.');
insert into skin values(skin_num.nextval, 'DRNW', '������ �� ���� �Ǻθ� ����������, �����԰� �Բ� ���� ��ȭ�� �޴� �Ǻ��Դϴ�.');
insert into skin values(skin_num.nextval, 'DRPT', '�ڿܼ����� ���, ���� ������ ��Ÿ���� ������ �Ƹ���� ������ �� �ִ� �Ǻ��Դϴ�.');
insert into skin values(skin_num.nextval, 'DRNT', '�Ǻ� ���ǿ� ��÷�� ��ó�� �Ǻ� ���� ���� ������ �Ǻ��Դϴ�.');

select * from skin_member;

// member ���̺� �߰�(�̹� �ִ� ���̺��̶� skin_member�� ����)
create table skin_member(
	member_id varchar2(100),
	member_pw varchar2(100) not null,
	member_name varchar2(20) not null,
	member_birth date not null,
	skin_id number,
	
	constraint skin_member_id_pk primary key(member_id),
	constraint skin_id_fk foreign key(skin_id) references skin(skin_id)
);

insert into skin_member values('asdksd@naver.com', '1234', '������', '1999-09-09', null);
update skin_member set skin_id = 1 where member_name = '������';

// skin_record(�Ǻ�Ÿ�� ���) ���̺� �߰�
create table skin_record (
	member_id varchar2(100),
	skin_id number,
	test_date date not null,
	
	constraint member_id_fk foreign key(member_id) references skin_member(member_id),
	constraint skin_record_id_fk foreign key(skin_id) references skin(skin_id)
);

select * from skin_record;

// product(��ǰ) ���̺� �߰�
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

// ��ǰ ���̺� ������ ����(product_num)
create sequence product_num
start with 1 increment by 1;

// review(����) ���̺� ����
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

// ���� ���̺� ������ ����(review_num)
create sequence review_num
start with 1 increment by 1;

// board(�Խ���) ���̺� ����
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

// �Խ��� ���̺� ������ ����(board_num)
create sequence board_num
start with 1 increment by 1;

// Survey(��������) ���̺� ����
// �⺻Ű�� survey_id�� ���� �Է�
create table survey (
	survey_id varchar2(20),
	survey_text varchar2(200) not null,
	survey_option varchar2(200) not null,
	survey_score number not null,
	
	constraint survey_id_pk primary key(survey_id)
);

select * from survey;

// Notice(��������) ���̺� ����
create table notice(
	notice_id number,
	notice_title varchar2(100) not null,
	notice_content varchar2(1000) not null,
	notice_date date not null,
	
	constraint notice_id_pk primary key(notice_id)
);

select * from notice;

// �������� ���̺� ������ ����(notice_num)
create sequence notice_num
start with 1 increment by 1;

// Order(���ų���) ���̺� ����
// order_id �߰� (�⺻Ű ����)
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

// ���ų��� ���̺� ������ ����(order_num)
create sequence order_num
start with 1 increment by 1;