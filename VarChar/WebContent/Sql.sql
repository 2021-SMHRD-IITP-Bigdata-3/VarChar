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
insert into skin values(0, '�⺻Ÿ��', '�׽�Ʈ ���� �����Դϴ�.');
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
insert into skin values(skin_num.nextval, '�Ʊ��Ǻ�', '���� �̻����� ���� ����, ������ ���� �Ǻο���!!');
insert into skin values(skin_num.nextval, '�߼�', '�Ǻΰ� �ε巯���, ����� �۰� ���� ���ƺ��Դϴ�. �ſ� �ӿ� �̷� ���� ���δٸ�, �߼� �Ǻ��Դϴ�.');
insert into skin values(skin_num.nextval, '����', '���� �Ǻδ� ����� ũ�� �Ǻο� ������ �����ϴ�. �̴� �Ǻθ� ���⸦ �ְ� ������ �����ϴ� ���� �к� �ռ��ϱ� �����Դϴ�.');
insert into skin values(skin_num.nextval, '�Ǽ�', '�Ǽ� �Ǻθ� ���� ����� ��κ� ����� ������ ������ �Ǻο� ���Ⱑ ���� ��ĥ�� ���̴� ������ �ֽ��ϴ�. ���� �Ǻο� ���� ������ �ָ��� ��Ÿ���⵵ �մϴ�.');
insert into skin values(skin_num.nextval, '���ռ�', '���ռ� �Ǻ��� ��� �����԰� ����Ÿ��� ���ÿ� ���� ���ɼ��� �����ϴ�. ���� ���, �̸�, ��, �� (T ��)�� ����������, ���� ������ �� �ֽ��ϴ�.');

select * from skin;
select * from skin_member;

// member ���̺� �߰�(�̹� �ִ� ���̺��̶� skin_member�� ����)
create table skin_member(
	member_id varchar2(100),
	member_pw varchar2(100) not null,
	member_name varchar2(20) not null,
	member_birth date not null,
	skin_id number not null,
	
	constraint skin_member_id_pk primary key(member_id),
	constraint skin_id_fk foreign key(skin_id) references skin(skin_id)
);

insert into skin_member values('asdksd@naver.com', '1234', '������', '1999-09-09', null);
update skin_member set skin_id = 1 where member_name = 'tkckrb';

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
	product_manu varchar2(100) not null,
	product_grade number not null,
	
	constraint product_id_pk primary key(product_id)
);

ALTER TABLE product DROP COLUMN skin_id;
ALTER TABLE product DROP COLUMN product_in;
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

alter table board add filename varchar2(500);
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

select * from skin_member;
create table s_member

// PRODUCT_IN(��ǰ_����) ���̺� ����
create table product_in (
	proin_id number,
	product_id number not null,
	ingredient_id number not null,
	
	constraint proin_id_pk primary key(proin_id),
	constraint proin_product_id_fk foreign key(product_id) references product(product_id),
	constraint ingredient_id_fk foreign key(ingredient_id) references ingredient(ingredient_id)
)

select * from product_in;

// PRODUCT_IN ������ ����
create sequence proin_num
start with 1 increment by 1;

// INGREDIENT(����) ���̺� ����
create table ingredient (
	ingredient_id number,
	kor_name varchar2(100) not null,
	eng_name varchar2(100) not null,
	o varchar2(2) not null,
	d varchar2(2) not null,
	s varchar2(2) not null,
	p varchar2(2) not null,
	w varchar2(2) not null,
	
	constraint ingredient_id_pk primary key(ingredient_id)
)

select * from ingredient;

// INGREDIENT ������ ����
create sequence ingredient_num
start with 1 increment by 1;

// INGREDIENT(����) ���̺� �Է�
insert into ingredient values(����ID, �����̸�, ����, �Ǽ�, �ΰ�, ����, �ָ�)
--------------------------------------------------------------------------------------
insert into ingredient values(ingredient_num.nextval, '�۶����ݸ��־���', 'Glycolic Acid', 'g', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�츮�Ǹ��־���', 'Salicylic Acid', 'g', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '���ó�-9', 'Nonoxynol-9', 'g', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '����', 'Camellia Sinensis Leaf', 'g', 'n', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '�����Ͼ�ǳ��ȭ', 'Witch Hazel', 'g', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�������⹰', 'Citrus Limon (Lemon) Fruit Extract', 'g', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�쳪��', 'Camphora', 'g', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '����', 'Menthol', 'g', 'b', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, 'Ŭ�η���', 'Chlorophyll', 'g', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�˶�����', 'Allantoin', 'g', 'n', 'g', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, 'ƼƮ��', 'Tea Tree', 'g', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '����', 'Glycyrrhiza', 'g', 'n', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '¡ũ�����̵�', 'Zinc Oxide', 'g', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '��Ʈ��������', 'Calendula', 'g', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '����', 'Sulfur', 'g', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, 'Ʈ��Ŭ�λ�', 'Triclosan', 'g', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, 'ƼŸ��������̵�', 'Titanium Dioxide', 'g', 'n', 'g', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, 'Ʈ���̱۸������̵�', 'Triglyceride', 'b', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�ȹ�ƽ�־���', 'Palmitic Acid', 'b', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�̸���ƽ�־���', 'Myristic Acid', 'b', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '���׾Ƹ��־���', 'Stearic Acid', 'b', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '���ڳӿ���', 'Coconut Oil', 'b', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�þ����', 'Shea Butter', 'b', 'g', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�ټ���', 'Vaseline', 'b', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '���ú���', 'Oxybenzone', 'b', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '����ýó�����Ʈ', 'Methoxycinnamate', 'b', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '���̾˷�δо־���', 'Hyaluronic Acid', 'n', 'g', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '�۸�����', 'Glycerin', 'n', 'g', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�����ʷ��۶�����', 'Propylene Glycol', 'n', 'g', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '��ƿ���۶�����', 'Butylene Glycol', 'n', 'g', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�ҵ��Ǿ�����', 'Sodium PCA', 'n', 'g', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '��Ÿ��E', 'Vitamin E', 'n', 'g', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '��Ÿ��A', 'Vitamin A', 'n', 'g', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '��Ÿ��C', 'Vitamin C', 'n', 'g', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�ݶ��', 'Collagen', 'n', 'g', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '����ƾ', 'Elastin', 'n', 'g', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�ƺ�ī��', 'Avocado', 'n', 'g', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '�޸��̲�', 'Evening Primrose', 'n', 'g', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '��Ʈ��', 'Oat', 'n', 'g', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�����⹰', 'Glycine Max (Soybean) Seed Extract', 'n', 'g', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, 'ĳ����', 'Anthemis Nobilis Flower', 'n', 'g', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '����', 'Cucumis Sativus', 'n', 'g', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '������', 'Peach', 'n', 'g', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '����', 'Algae', 'n', 'g', 'g', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�ͳ����������⹰', 'Morus Alba Bark Extract', 'n', 'g', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�����־���', 'Kojic Acid', 'n', 'g', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '�˺�ƾ', 'Arbutin', 'n', 'g', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '���������⹰', 'Vitis Vinifera (Grape) Seed Extract', 'n', 'g', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '��Ÿ-ī��ƾ', 'Beta-Carotene', 'n', 'g', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '��ī���ƹ̳�����������⹰', 'Ranunculus Ficaria Extract', 'n', 'g', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '���׳�', 'Panthonol', 'n', 'g', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '��ź��', 'Alcohol', 'b', 'b', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�������ڿ�', 'Alcohol Denat.', 'n', 'b', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '���̼������ʾ��ڿ�', 'Isopropyl Alcohol', 'n', 'b', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�������ڿ�', 'Benzyl Alcohol', 'n', 'b', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�˷��˸ӵ�', 'Alluvial Mud', 'n', 'b', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�ҵ��츱������Ʈ', 'Sodium Lauryl Sulfate', 'n', 'b', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�ҵ��췹��������Ʈ', 'Sodium Laureth Sulfate', 'n', 'b', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�ϸ𴽶�츱������Ʈ', 'Ammonium Lauryl Sulfate', 'n', 'b', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '���۹�Ʈ', 'Peppermint', 'n', 'b', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '��Ÿ��K', 'Vitamin K', 'n', 'n', 'g', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '��Ÿ��F', 'Vitamin F', 'n', 'n', 'g', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, 'ü��Ʈ��', 'Chestnut', 'n', 'n', 'g', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�˷ο�', 'Aloe', 'n', 'n', 'g', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�����ö����Ű�׽þ����⹰', 'Echinacea Pallida Extract', 'n', 'n', 'g', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�˶�����', 'Echinacea Pallida Extract', 'n', 'n', 'g', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '���', 'Fragrance', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�ų���', 'Cinnamal', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '���̼�������', 'Isoeugenol', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�������̳����⹰', 'Evernia Prunastri (Oakmoss) Extract', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�����̳����⹰', 'Evernia Furfuracea (Treemoss) Extract', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�ҵ��츱������Ʈ', 'Sodium Lauryl Sulfate', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�ҵ��췹��������Ʈ', 'Sodium Laureth Sulfate', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�ϸ𴽶�츱������Ʈ', 'Ammonium Lauryl Sulfate', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '��ī�̵������ʺ�Ÿ��', 'Cocamomidopropyl Betaine', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '���ĥ�ƹ������ʾƹ�', 'no data', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�÷��ƹ̵������ʴ��̸�ƿ�ƹ�', 'Oleamidopropyl Dimethylamine', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '���׾ƶ�̵������ʴ��̸�ƿ�ƹ�', 'Stearamidopropyl Dimethylamine', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�˷�̳�', 'Alumina', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, 'Į����������Ʈ', 'Calcium Phosphate', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '��������', 'Quartz Powder', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�ƹݼ�����', 'no data', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '��Ű������', 'Turquoise Powder', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '���弮����', 'Moonstone Powder', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�ռ����弮����', 'Synthetic Moonstone Powder', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�����', 'Meteorite Powder', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�弮����', 'Feldspar Powder', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '����������', 'Garnet Powder', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '������', 'nodata', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '���̾Ƹ�尡��', 'Diamond Powder', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, 'ȭ����', 'Volcanic Ash', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�͸���', 'Avena Sativa(Oat) Bran', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�챸������', 'Prunus Armeniaca(Apricot) Seed Powder', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, 'ȣ�γ������Ų�������', 'Juglans Regia (Walnut) Shell Powder', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '��ĥ��Ǹ���ýų�����Ʈ', 'Ethylhexyl Methoxycinnamate', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '��ĥ��ǻ츮�Ƿ���Ʈ', 'Ethylhexyl Salicylate', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '����ũ����', 'Octocrylene', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '���ú���', 'Oxybenzone', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '��ĥ���Ʈ������', 'Ethylhexyl Triazone', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�̼Ҿƹ�p-����ýų�����Ʈ', 'Isoamyl p-Methoxycinnamate', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, 'ȣ��췹��Ʈ', 'Homosalate', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�۷�ŸƼ��', 'Glutathione', 'n', 'n', 'b', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '�Ķ�', 'Paraben', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�̴̹�������ҿ췹��', 'Imidazolidinyl Urea', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '���������ҿ췹��', 'Diazolidinyl Urea', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�𿥵����̴�����', 'DMDM Hydantoin', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�Ҹ���־���', 'Sorbic Acid', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, 'Ʈ��Ŭ�λ�', 'Triclosan', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '��ĥ�̼�ġ��������', 'Methylisothiazolinone', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '��ĥŬ�η��̼�ġ��������', 'Methylchloroisothiazolinone', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, 'Ƽ�޷λ�', 'Thimerosal', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '��Ʈ���𴽺�θ��̵�', 'Cetrimonium Bromide', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�������̵�Ͻþ־���', 'Alpha Hydroxy Acid', 'n', 'n', 'b', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '�츮�Ǹ��־���', 'Salicylic Acid', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '����', 'Mentol', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '��Į������', 'Eucalyptus', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�󺥻��Ʒθ�Ƽī�ٿ���', 'Ravensara Aromatica Leaf Oil', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '��Ƽ��', 'Retinol', 'n', 'n', 'b', 'g', 'g');
insert into ingredient values(ingredient_num.nextval, '��ƾ��', 'Retinal', 'n', 'n', 'b', 'g', 'g');
insert into ingredient values(ingredient_num.nextval, '��Ÿ��C', 'VitaminC', 'n', 'n', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '�ƽ��ں�־���', 'Ascorbic Acid', 'n', 'n', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '�ý��׾ƹ�', 'Cysteamine', 'n', 'n', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '����ī��Ų', 'Camellia Sinensis Catechins', 'n', 'n', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '����ī��Ų', 'Epicatechin', 'n', 'n', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '����ī��Ų������Ʈ', 'Epicatechin Gallate', 'n', 'n', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '���ǰ���ī��Ų', 'Epigallo Catechin', 'n', 'n', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '���ǰ���ī��Ų������Ʈ', 'Epigallocatechin Gallate', 'n', 'n', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '���̾ƽžƸ��̵�', 'Niacinamide', 'n', 'n', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, 'Ʈ��ػ�;־���', 'Tranexamic Acid', 'n', 'n', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, 'Ǯ����', 'Fullerenes', 'n', 'n', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '������⹰', 'Daucus Carota Sativa (Carrot) Root Extract', 'n', 'n', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '�������', 'Polyphenol', 'n', 'n', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '�ڳ������⹰', 'Broussonetia Extract', 'n', 'n', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '����-��纸��', 'Alpha-Bisabolol', 'n', 'n', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '��ĥ�ƽ��ں�����', 'Ethyl Ascorbyl Ether', 'n', 'n', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '�ƽ��ں��۷��ڻ��̵�', 'Ascorbyl Glucoside', 'n', 'n', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '�ƽ��ں���Ʈ���̼��ȹ�����Ʈ', 'Ascorbyl Tetraisopalmitate', 'n', 'n', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '���׳׽��ƽ��ں���������Ʈ', 'Magnesium Ascorbyl Phosphate', 'n', 'n', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '�ȹ�����Ʈ', 'Palmitate', 'n', 'n', 'n', 'n', 'g');
insert into ingredient values(ingredient_num.nextval, '��Ƽ���ȹ�����Ʈ', 'Retinyl Palmitate', 'n', 'n', 'n', 'n', 'g');
insert into ingredient values(ingredient_num.nextval, '�Ƶ����', 'Adeosine', 'n', 'n', 'n', 'n', 'g');
insert into ingredient values(ingredient_num.nextval, '��Ÿ�̵�', 'Peptide', 'n', 'n', 'n', 'n', 'g');
insert into ingredient values(ingredient_num.nextval, '��������Ƿ���Ƽ�巹ƾ�Ƹ��̵�', 'Polyethoxylated Retinamide', 'n', 'n', 'n', 'n', 'g');

// �߰� ���� �÷�
insert into ingredient values(ingredient_num.nextval, '���ʻѸ����⹰', 'Glycyrrhiza Uralensis (Licorice) Root Extract', 'g', 'n', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '����������', 'Citrus Limon (Lemon) Peel Oil', 'g', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '��������������', 'Citrus Aurantium Dulcis (Orange) Peel Oil', 'n', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '��Į�����������⹰', 'Eucalyptus Globulus Leaf Extract', 'n', 'b', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, 'ĳ���ϲ����⹰', 'Anthemis Nobilis Flower Extract', 'n', 'g', 'g', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�������⹰', 'Camellia Sinensis Leaf Extract', 'g', 'n', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, 'ƼƮ�����⹰', 'Melaleuca Alternifolia (Tea Tree) Extract', 'g', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, 'ƼƮ����/��/�ٱ����⹰', 'Melaleuca Alternifolia (Tea Tree) Flower/Leaf/Stem Extract', 'g', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, 'ƼƮ���ٿ���', 'Melaleuca Alternifolia (Tea Tree) Leaf Oil', 'g', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '������⹰', 'Malus Domestica Fruit Extract', 'n', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�㲮�����⹰', 'Castanea Crenata (Chestnut) Shell Extract', 'n', 'n', 'g', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�����ΰ��ʻѸ����⹰', 'Glycyrrhiza Glabra (Licorice) Root Extract', 'g', 'n', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '�������⹰', 'Vitis Vinifera (Grape) Fruit Extract', 'g', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�����������⹰', 'Saccharum Officinarum (Sugarcane) Extract', 'g', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�����Ͼ�ǳ��ȭ���⹰', 'Hamamelis Virginiana (Witch Hazel) Extract', 'g', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�����������⹰', 'Solanum Melongena (Eggplant) Fruit Extract', 'g', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�˷ο���������⹰', 'Aloe Barbadensis Flower Extract', 'n', 'n', 'g', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '��ȭ�����⹰', 'Ficus Carica (Fig) Fruit Extract', 'n', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '�������˷ο������⹰', 'Aloe Ferox Leaf Extract', 'n', 'n', 'g', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, 'ĳ���ϲɿ���', 'Anthemis Nobilis Flower Oil', 'n', 'g', 'g', 'n', 'n');

update ingredient set kor_name = '��ƿ���۶�����' where kor_name = '��ƿ���۶�����';
delete from ingredient where kor_name = '�˶�����' and eng_name = 'Echinacea Pallida Extract';
select * from ingredient;

select * from skin_member;
select * from skin;
update skin_member set skin_id = (select skin_id from skin where skin_type = '����') where member_name = '�ٹ�����';

insert into product values(��ǰ_id, ��ǰ�̸�, ��ǰ����, ȸ��, ����);
---------------------------------------------------------------------------
insert into product values(product_num.nextval, '���� û�� ��ŸC ��Ƽ �����÷��� 70ml', 45000, '����', 0);
insert into product values(product_num.nextval, '���� û�� ��ŸC ��Ƽ ��������ũ(6+4��)', 18000, '����', 0);
insert into product values(product_num.nextval, '�긵�׸� ƼƮ�� ��ī ���� ��� 510ml', 22000, '�긵�׸�', 0);
insert into product values(product_num.nextval, '����Ʈ�� ���亣���� 365 ���̵�� ����ũ�� 60ml', 30000, '����Ʈ��', 0);
insert into product values(product_num.nextval, '������ ������̽� Ŭ���� ���� ũ��(50ml+50ml+50ml)', 39000, '������', 0);
insert into product values(product_num.nextval, '���̼��� �Ұ����� ���� ���̽� �ɾ� �� ����(����Ʈ)', 54000, '���̼���', 0);
insert into product values(product_num.nextval, '�ƴ��� ��� 77 ��� 500ml', 45000, '�ƴ���', 0);
insert into product values(product_num.nextval, '�긵�׸� ƼƮ�� ��ī ���� ũ��(100ml)', 16000, '�긵�׸�', 0);
insert into product values(product_num.nextval, '�丮�� ���̺��� ����(�����ȹ��Ʈ)', 36000, '�丮��', 0);
insert into product values(product_num.nextval, '���󺣸��� ����� ����ũ�� 50ml', 30000, '���󺣸���', 0);
insert into product values(product_num.nextval, '���左 ���۳��� ����ũ�� 80ml', 32000, '���左', 0);
insert into product values(product_num.nextval, '������� ���Ǵ� ���̿� ���÷��� ����(30ml �����ȹ)', 35000, '�������', 0);
insert into product values(product_num.nextval, '�ƺ��� ������-��-�μ� 200ml', 28000, '�ƺ���', 0);
insert into product values(product_num.nextval, '����Ʈ�� ���亣����365 �μ� 150ml', 28000, '����Ʈ��', 0);
insert into product values(product_num.nextval, '����Ʈ�� ���亣����365 ���̵�� ������ 150ml', 25000, '����Ʈ��', 0);
insert into product values(product_num.nextval, '�ƺ��� ����� ũ��-��-�� 100ml', 42000, '�ƺ���', 0);
insert into product values(product_num.nextval, '������ ���� ���˷�δ� ���100 ����(��ȹ)', 28000, '������', 0);
insert into product values(product_num.nextval, '������ ���� ���̽� Ŭ���� ���� ��� 500ml', 39000, '������', 0);
insert into product values(product_num.nextval, '����Ʈ�� ���亣���� 365 ũ�� 80ml', 28000, '����Ʈ��', 0);
insert into product values(product_num.nextval, '���󺣸��� �ͽ�Ʈ�� ũ�� 50ml(��ȹ+20ml ����)', 38000, '���󺣸���', 0);
insert into product values(product_num.nextval, '���左 1025 ���� ��� 200ml(��ȹ+50ml ����)', 15000, '���左', 0);

select * from product;
select * from ingredient;
select * from product_in;
insert into product_in values (��ǰ�� ���� id, ��ǰ�̸�, ����);
----------------------------------------------------------------------
insert into product_in values(proin_num.nextval, 1, 30);
insert into product_in values(proin_num.nextval, 1, 128);
insert into product_in values(proin_num.nextval, 1, 47);
insert into product_in values(proin_num.nextval, 1, 144);
insert into product_in values(proin_num.nextval, 1, 145);
insert into product_in values(proin_num.nextval, 1, 147);
insert into product_in values(proin_num.nextval, 1, 148);
insert into product_in values(proin_num.nextval, 1, 149);
insert into product_in values(proin_num.nextval, 1, 51);
insert into product_in values(proin_num.nextval, 1, 10);
insert into product_in values(proin_num.nextval, 1, 141);
insert into product_in values(proin_num.nextval, 1, 136);
insert into product_in values(proin_num.nextval, 1, 28);
insert into product_in values(proin_num.nextval, 2, 30);
insert into product_in values(proin_num.nextval, 2, 128);
insert into product_in values(proin_num.nextval, 2, 145);
insert into product_in values(proin_num.nextval, 2, 147);
insert into product_in values(proin_num.nextval, 2, 10);
insert into product_in values(proin_num.nextval, 2, 28);
insert into product_in values(proin_num.nextval, 2, 141);
insert into product_in values(proin_num.nextval, 2, 136);
insert into product_in values(proin_num.nextval, 2, 121);
insert into product_in values(proin_num.nextval, 2, 121);
insert into product_in values(proin_num.nextval, 3, 150);
insert into product_in values(proin_num.nextval, 3, 30);
insert into product_in values(proin_num.nextval, 3, 151);
insert into product_in values(proin_num.nextval, 3, 152);
insert into product_in values(proin_num.nextval, 3, 51);
insert into product_in values(proin_num.nextval, 4, 28);
insert into product_in values(proin_num.nextval, 4, 21);
insert into product_in values(proin_num.nextval, 4, 19);
insert into product_in values(proin_num.nextval, 4, 20);
insert into product_in values(proin_num.nextval, 5, 28);
insert into product_in values(proin_num.nextval, 5, 30);
insert into product_in values(proin_num.nextval, 5, 128);
insert into product_in values(proin_num.nextval, 5, 51);
insert into product_in values(proin_num.nextval, 5, 153);
insert into product_in values(proin_num.nextval, 5, 127);
insert into product_in values(proin_num.nextval, 6, 28);
insert into product_in values(proin_num.nextval, 6, 52);
insert into product_in values(proin_num.nextval, 6, 47);
insert into product_in values(proin_num.nextval, 6, 10);
insert into product_in values(proin_num.nextval, 6, 51);
insert into product_in values(proin_num.nextval, 6, 154);
insert into product_in values(proin_num.nextval, 6, 30);
insert into product_in values(proin_num.nextval, 6, 155);
insert into product_in values(proin_num.nextval, 7, 28);
insert into product_in values(proin_num.nextval, 7, 156);
insert into product_in values(proin_num.nextval, 7, 153);
insert into product_in values(proin_num.nextval, 7, 157);
insert into product_in values(proin_num.nextval, 7, 51);
insert into product_in values(proin_num.nextval, 7, 27);
insert into product_in values(proin_num.nextval, 7, 30);
insert into product_in values(proin_num.nextval, 8, 150);
insert into product_in values(proin_num.nextval, 8, 30);
insert into product_in values(proin_num.nextval, 8, 128);
insert into product_in values(proin_num.nextval, 8, 151);
insert into product_in values(proin_num.nextval, 8, 152);
insert into product_in values(proin_num.nextval, 8, 51);
insert into product_in values(proin_num.nextval, 9, 30);
insert into product_in values(proin_num.nextval, 9, 28);
insert into product_in values(proin_num.nextval, 9, 51);
insert into product_in values(proin_num.nextval, 9, 10);
insert into product_in values(proin_num.nextval, 9, 158);
insert into product_in values(proin_num.nextval, 10, 28);
insert into product_in values(proin_num.nextval, 10, 148);
insert into product_in values(proin_num.nextval, 10, 51);
insert into product_in values(proin_num.nextval, 10, 27);
insert into product_in values(proin_num.nextval, 10, 159);
insert into product_in values(proin_num.nextval, 10, 160);
insert into product_in values(proin_num.nextval, 11, 28);
insert into product_in values(proin_num.nextval, 11, 51);
insert into product_in values(proin_num.nextval, 11, 27);
insert into product_in values(proin_num.nextval, 11, 160);
insert into product_in values(proin_num.nextval, 11, 159);
insert into product_in values(proin_num.nextval, 11, 121);
insert into product_in values(proin_num.nextval, 11, 30);
insert into product_in values(proin_num.nextval, 12, 30);
insert into product_in values(proin_num.nextval, 12, 28);
insert into product_in values(proin_num.nextval, 12, 128);
insert into product_in values(proin_num.nextval, 12, 27);
insert into product_in values(proin_num.nextval, 12, 127);
insert into product_in values(proin_num.nextval, 12, 141);
insert into product_in values(proin_num.nextval, 13, 28);
insert into product_in values(proin_num.nextval, 13, 67);
insert into product_in values(proin_num.nextval, 14, 30);
insert into product_in values(proin_num.nextval, 14, 28);
insert into product_in values(proin_num.nextval, 14, 21);
insert into product_in values(proin_num.nextval, 14, 19);
insert into product_in values(proin_num.nextval, 14, 20);
insert into product_in values(proin_num.nextval, 15, 30);
insert into product_in values(proin_num.nextval, 15, 28);
insert into product_in values(proin_num.nextval, 15, 21);
insert into product_in values(proin_num.nextval, 16, 28);
insert into product_in values(proin_num.nextval, 16, 67);
insert into product_in values(proin_num.nextval, 17, 28);
insert into product_in values(proin_num.nextval, 17, 51);
insert into product_in values(proin_num.nextval, 17, 159);
insert into product_in values(proin_num.nextval, 17, 160);
insert into product_in values(proin_num.nextval, 17, 30);
insert into product_in values(proin_num.nextval, 17, 141);
insert into product_in values(proin_num.nextval, 17, 27);
insert into product_in values(proin_num.nextval, 18, 128);
insert into product_in values(proin_num.nextval, 18, 30);
insert into product_in values(proin_num.nextval, 18, 28);
insert into product_in values(proin_num.nextval, 18, 161);
insert into product_in values(proin_num.nextval, 18, 157);
insert into product_in values(proin_num.nextval, 18, 153);
insert into product_in values(proin_num.nextval, 18, 162);
insert into product_in values(proin_num.nextval, 18, 51);
insert into product_in values(proin_num.nextval, 19, 28);
insert into product_in values(proin_num.nextval, 19, 30);
insert into product_in values(proin_num.nextval, 19, 21);
insert into product_in values(proin_num.nextval, 19, 10);
insert into product_in values(proin_num.nextval, 19, 19);
insert into product_in values(proin_num.nextval, 20, 30);
insert into product_in values(proin_num.nextval, 20, 28);
insert into product_in values(proin_num.nextval, 20, 51);
insert into product_in values(proin_num.nextval, 20, 10);
insert into product_in values(proin_num.nextval, 20, 10);
insert into product_in values(proin_num.nextval, 20, 163);
insert into product_in values(proin_num.nextval, 20, 21);
insert into product_in values(proin_num.nextval, 21, 30);
insert into product_in values(proin_num.nextval, 21, 28);
insert into product_in values(proin_num.nextval, 21, 51);
insert into product_in values(proin_num.nextval, 21, 10);

select * from board;