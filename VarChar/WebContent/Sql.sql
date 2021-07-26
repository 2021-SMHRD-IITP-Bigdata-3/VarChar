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