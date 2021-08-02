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

select * from ingredient;

select * from skin_member;
select * from skin;
update skin_member set skin_id = (select skin_id from skin where skin_type = '����') where member_name = '�ٹ�����';