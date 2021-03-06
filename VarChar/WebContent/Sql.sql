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
insert into skin values(0, '기본타입', '테스트 안한 유저입니다.');
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
insert into skin values(skin_num.nextval, '아기피부', '가장 이상적인 수분 많고, 유분이 적은 피부에요!!');
insert into skin values(skin_num.nextval, '중성', '피부가 부드러우며, 모공이 작고 얼굴이 좋아보입니다. 거울 속에 이런 얼굴이 보인다면, 중성 피부입니다.');
insert into skin values(skin_num.nextval, '지성', '지성 피부는 모공이 크고 피부에 유분이 많습니다. 이는 피부를 윤기를 주고 수분을 차단하는 피지 분비가 왕성하기 때문입니다.');
insert into skin values(skin_num.nextval, '건성', '건성 피부를 가진 사람은 대부분 모공이 보이지 않으며 피부에 생기가 없고 거칠게 보이는 경향이 있습니다. 또한 피부에 붉은 반점과 주름이 나타나기도 합니다.');
insert into skin values(skin_num.nextval, '복합성', '복합성 피부의 경우 건조함과 번들거림이 동시에 있을 가능성이 높습니다. 예를 들어, 이마, 코, 턱 (T 존)은 지성이지만, 볼은 건조할 수 있습니다.');

select * from skin;
select * from skin_member;

// member 테이블 추가(이미 있는 테이블이라서 skin_member로 변경)
create table skin_member(
	member_id varchar2(100),
	member_pw varchar2(100) not null,
	member_name varchar2(20) not null,
	member_birth date not null,
	skin_id number not null,
	
	constraint skin_member_id_pk primary key(member_id),
	constraint skin_id_fk foreign key(skin_id) references skin(skin_id)
);

insert into skin_member values('asdksd@naver.com', '1234', '이차규', '1999-09-09', null);
update skin_member set skin_id = 1 where member_name = 'tkckrb';

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
	product_manu varchar2(100) not null,
	product_grade number not null,
	
	constraint product_id_pk primary key(product_id)
);

ALTER TABLE product DROP COLUMN skin_id;
ALTER TABLE product DROP COLUMN product_in;
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

alter table board add filename varchar2(500);
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

select * from skin_member;
create table s_member

// PRODUCT_IN(상품_성분) 테이블 생성
create table product_in (
	proin_id number,
	product_id number not null,
	ingredient_id number not null,
	
	constraint proin_id_pk primary key(proin_id),
	constraint proin_product_id_fk foreign key(product_id) references product(product_id),
	constraint ingredient_id_fk foreign key(ingredient_id) references ingredient(ingredient_id)
)

select * from product_in;

// PRODUCT_IN 시퀀스 생성
create sequence proin_num
start with 1 increment by 1;

// INGREDIENT(성분) 테이블 생성
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

// INGREDIENT 시퀀스 생성
create sequence ingredient_num
start with 1 increment by 1;

// INGREDIENT(성분) 테이블 입력
insert into ingredient values(성분ID, 성분이름, 지성, 건성, 민감, 색소, 주름)
--------------------------------------------------------------------------------------
insert into ingredient values(ingredient_num.nextval, '글라이콜릭애씨드', 'Glycolic Acid', 'g', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '살리실릭애씨드', 'Salicylic Acid', 'g', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '노녹시놀-9', 'Nonoxynol-9', 'g', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '녹차', 'Camellia Sinensis Leaf', 'g', 'n', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '버지니아풍년화', 'Witch Hazel', 'g', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '레몬추출물', 'Citrus Limon (Lemon) Fruit Extract', 'g', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '녹나무', 'Camphora', 'g', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '멘톨', 'Menthol', 'g', 'b', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '클로로필', 'Chlorophyll', 'g', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '알란토인', 'Allantoin', 'g', 'n', 'g', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '티트리', 'Tea Tree', 'g', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '감초', 'Glycyrrhiza', 'g', 'n', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '징크옥사이드', 'Zinc Oxide', 'g', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '포트마리골드꽃', 'Calendula', 'g', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '설퍼', 'Sulfur', 'g', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '트리클로산', 'Triclosan', 'g', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '티타늄디옥사이드', 'Titanium Dioxide', 'g', 'n', 'g', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '트라이글리세라이드', 'Triglyceride', 'b', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '팔미틱애씨드', 'Palmitic Acid', 'b', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '미리스틱애씨드', 'Myristic Acid', 'b', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '스테아릭애씨드', 'Stearic Acid', 'b', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '코코넛오일', 'Coconut Oil', 'b', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '시어버터', 'Shea Butter', 'b', 'g', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '바세린', 'Vaseline', 'b', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '옥시벤존', 'Oxybenzone', 'b', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '메톡시시나메이트', 'Methoxycinnamate', 'b', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '하이알루로닉애씨드', 'Hyaluronic Acid', 'n', 'g', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '글리세린', 'Glycerin', 'n', 'g', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '프로필렌글라이콜', 'Propylene Glycol', 'n', 'g', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '부틸렌글라이콘', 'Butylene Glycol', 'n', 'g', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '소듐피씨에이', 'Sodium PCA', 'n', 'g', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '비타민E', 'Vitamin E', 'n', 'g', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '비타민A', 'Vitamin A', 'n', 'g', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '비타민C', 'Vitamin C', 'n', 'g', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '콜라겐', 'Collagen', 'n', 'g', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '엘라스틴', 'Elastin', 'n', 'g', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '아보카도', 'Avocado', 'n', 'g', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '달맞이꽃', 'Evening Primrose', 'n', 'g', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '오트밀', 'Oat', 'n', 'g', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '콩추출물', 'Glycine Max (Soybean) Seed Extract', 'n', 'g', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '캐모마일', 'Anthemis Nobilis Flower', 'n', 'g', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '오이', 'Cucumis Sativus', 'n', 'g', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '복숭아', 'Peach', 'n', 'g', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '조류', 'Algae', 'n', 'g', 'g', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '뽕나무껍질추출물', 'Morus Alba Bark Extract', 'n', 'g', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '코직애씨드', 'Kojic Acid', 'n', 'g', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '알부틴', 'Arbutin', 'n', 'g', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '포도씨추출물', 'Vitis Vinifera (Grape) Seed Extract', 'n', 'g', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '베타-카로틴', 'Beta-Carotene', 'n', 'g', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '피카리아미나리아재비추출물', 'Ranunculus Ficaria Extract', 'n', 'g', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '판테놀', 'Panthonol', 'n', 'g', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '에탄올', 'Alcohol', 'b', 'b', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '변성알코올', 'Alcohol Denat.', 'n', 'b', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '아이소프로필알코올', 'Isopropyl Alcohol', 'n', 'b', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '벤질알코올', 'Benzyl Alcohol', 'n', 'b', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '알루비알머드', 'Alluvial Mud', 'n', 'b', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '소듐라우릴설페이트', 'Sodium Lauryl Sulfate', 'n', 'b', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '소듐라우레스설페이트', 'Sodium Laureth Sulfate', 'n', 'b', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '암모늄라우릴설페이트', 'Ammonium Lauryl Sulfate', 'n', 'b', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '페퍼민트', 'Peppermint', 'n', 'b', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '비타민K', 'Vitamin K', 'n', 'n', 'g', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '비타민F', 'Vitamin F', 'n', 'n', 'g', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '체스트넛', 'Chestnut', 'n', 'n', 'g', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '알로에', 'Aloe', 'n', 'n', 'g', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '페일플라워에키네시아추출물', 'Echinacea Pallida Extract', 'n', 'n', 'g', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '알란토인', 'Echinacea Pallida Extract', 'n', 'n', 'g', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '향료', 'Fragrance', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '신남알', 'Cinnamal', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '아이소유제놀', 'Isoeugenol', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '참나무이끼추출물', 'Evernia Prunastri (Oakmoss) Extract', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '나무이끼추출물', 'Evernia Furfuracea (Treemoss) Extract', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '소듐라우릴설페이트', 'Sodium Lauryl Sulfate', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '소듐라우레스설페이트', 'Sodium Laureth Sulfate', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '암모늄라우릴설페이트', 'Ammonium Lauryl Sulfate', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '코카미도프로필베타인', 'Cocamomidopropyl Betaine', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '디메칠아미프로필아민', 'no data', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '올레아미도프로필다이메틸아민', 'Oleamidopropyl Dimethylamine', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '스테아라미도프로필다이메틸아민', 'Stearamidopropyl Dimethylamine', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '알루미나', 'Alumina', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '칼슘포스페이트', 'Calcium Phosphate', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '석영가루', 'Quartz Powder', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '맥반석가루', 'no data', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '터키석가루', 'Turquoise Powder', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '월장석가루', 'Moonstone Powder', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '합성월장석가루', 'Synthetic Moonstone Powder', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '운석가루', 'Meteorite Powder', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '장석가루', 'Feldspar Powder', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '석류석가루', 'Garnet Powder', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '목어석가루', 'nodata', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '다이아몬드가루', 'Diamond Powder', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '화산재', 'Volcanic Ash', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '귀리겨', 'Avena Sativa(Oat) Bran', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '살구씨가루', 'Prunus Armeniaca(Apricot) Seed Powder', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '호두나무열매껍질가루', 'Juglans Regia (Walnut) Shell Powder', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '에칠헥실메톡시신나메이트', 'Ethylhexyl Methoxycinnamate', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '에칠헥실살리실레이트', 'Ethylhexyl Salicylate', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '옥토크릴렌', 'Octocrylene', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '옥시벤존', 'Oxybenzone', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '에칠헥실트리아존', 'Ethylhexyl Triazone', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '이소아밀p-메톡시신나메이트', 'Isoamyl p-Methoxycinnamate', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '호모살레이트', 'Homosalate', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '글루타티온', 'Glutathione', 'n', 'n', 'b', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '파라벤', 'Paraben', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '이미다졸리디닐우레아', 'Imidazolidinyl Urea', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '디아졸리디닐우레아', 'Diazolidinyl Urea', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '디엠디엠하이단토인', 'DMDM Hydantoin', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '소르빅애씨드', 'Sorbic Acid', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '트리클로산', 'Triclosan', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '메칠이소치아졸리논', 'Methylisothiazolinone', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '메칠클로로이소치아졸리논', 'Methylchloroisothiazolinone', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '티메로살', 'Thimerosal', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '세트리모늄브로마이드', 'Cetrimonium Bromide', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '알파하이드록시애씨드', 'Alpha Hydroxy Acid', 'n', 'n', 'b', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '살리실릭애씨드', 'Salicylic Acid', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '멘톨', 'Mentol', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '유칼립투스', 'Eucalyptus', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '라벤사라아로마티카잎오일', 'Ravensara Aromatica Leaf Oil', 'n', 'n', 'b', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '레티놀', 'Retinol', 'n', 'n', 'b', 'g', 'g');
insert into ingredient values(ingredient_num.nextval, '레틴알', 'Retinal', 'n', 'n', 'b', 'g', 'g');
insert into ingredient values(ingredient_num.nextval, '비타민C', 'VitaminC', 'n', 'n', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '아스코빅애씨드', 'Ascorbic Acid', 'n', 'n', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '시스테아민', 'Cysteamine', 'n', 'n', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '녹차카테킨', 'Camellia Sinensis Catechins', 'n', 'n', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '아피카테킨', 'Epicatechin', 'n', 'n', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '에피카테킨갈레이트', 'Epicatechin Gallate', 'n', 'n', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '에피갈로카테킨', 'Epigallo Catechin', 'n', 'n', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '에피갈로카테킨갈레이트', 'Epigallocatechin Gallate', 'n', 'n', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '나이아신아마이드', 'Niacinamide', 'n', 'n', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '트라넥사믹애씨드', 'Tranexamic Acid', 'n', 'n', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '풀러린', 'Fullerenes', 'n', 'n', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '당근추출물', 'Daucus Carota Sativa (Carrot) Root Extract', 'n', 'n', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '폴리페놀', 'Polyphenol', 'n', 'n', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '닥나무추출물', 'Broussonetia Extract', 'n', 'n', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '알파-비사보롤', 'Alpha-Bisabolol', 'n', 'n', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '에칠아스코빌에텔', 'Ethyl Ascorbyl Ether', 'n', 'n', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '아스코빌글루코사이드', 'Ascorbyl Glucoside', 'n', 'n', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '아스코빌테트라이소팔미테이트', 'Ascorbyl Tetraisopalmitate', 'n', 'n', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '마그네슘아스코빌포스페이트', 'Magnesium Ascorbyl Phosphate', 'n', 'n', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '팔미테이트', 'Palmitate', 'n', 'n', 'n', 'n', 'g');
insert into ingredient values(ingredient_num.nextval, '레티닐팔미테이트', 'Retinyl Palmitate', 'n', 'n', 'n', 'n', 'g');
insert into ingredient values(ingredient_num.nextval, '아데노신', 'Adeosine', 'n', 'n', 'n', 'n', 'g');
insert into ingredient values(ingredient_num.nextval, '펩타이드', 'Peptide', 'n', 'n', 'n', 'n', 'g');
insert into ingredient values(ingredient_num.nextval, '폴리에톡실레이티드레틴아마이드', 'Polyethoxylated Retinamide', 'n', 'n', 'n', 'n', 'g');

// 추가 성분 컬럼
insert into ingredient values(ingredient_num.nextval, '감초뿌리추출물', 'Glycyrrhiza Uralensis (Licorice) Root Extract', 'g', 'n', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '레몬껍질오일', 'Citrus Limon (Lemon) Peel Oil', 'g', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '오렌지껍질오일', 'Citrus Aurantium Dulcis (Orange) Peel Oil', 'n', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '유칼립투스잎추출물', 'Eucalyptus Globulus Leaf Extract', 'n', 'b', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '캐모마일꽃추출물', 'Anthemis Nobilis Flower Extract', 'n', 'g', 'g', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '녹차추출물', 'Camellia Sinensis Leaf Extract', 'g', 'n', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '티트리추출물', 'Melaleuca Alternifolia (Tea Tree) Extract', 'g', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '티트리꽃/잎/줄기추출물', 'Melaleuca Alternifolia (Tea Tree) Flower/Leaf/Stem Extract', 'g', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '티트리잎오일', 'Melaleuca Alternifolia (Tea Tree) Leaf Oil', 'g', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '사과추출물', 'Malus Domestica Fruit Extract', 'n', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '밤껍질추출물', 'Castanea Crenata (Chestnut) Shell Extract', 'n', 'n', 'g', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '스페인감초뿌리추출물', 'Glycyrrhiza Glabra (Licorice) Root Extract', 'g', 'n', 'n', 'g', 'n');
insert into ingredient values(ingredient_num.nextval, '포도추출물', 'Vitis Vinifera (Grape) Fruit Extract', 'g', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '사탕수수추출물', 'Saccharum Officinarum (Sugarcane) Extract', 'g', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '버지니아풍년화추출물', 'Hamamelis Virginiana (Witch Hazel) Extract', 'g', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '가지열매추출물', 'Solanum Melongena (Eggplant) Fruit Extract', 'g', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '알로에베라꽃추출물', 'Aloe Barbadensis Flower Extract', 'n', 'n', 'g', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '무화과추출물', 'Ficus Carica (Fig) Fruit Extract', 'n', 'n', 'n', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '케이프알로에잎추출물', 'Aloe Ferox Leaf Extract', 'n', 'n', 'g', 'n', 'n');
insert into ingredient values(ingredient_num.nextval, '캐모마일꽃오일', 'Anthemis Nobilis Flower Oil', 'n', 'g', 'g', 'n', 'n');

update ingredient set kor_name = '부틸렌글라이콜' where kor_name = '부틸렌글라이콘';
delete from ingredient where kor_name = '알란토인' and eng_name = 'Echinacea Pallida Extract';
select * from ingredient;

select * from skin_member;
select * from skin;
update skin_member set skin_id = (select skin_id from skin where skin_type = '지성') where member_name = '바바차규';

insert into product values(상품_id, 상품이름, 상품가격, 회사, 별점);
---------------------------------------------------------------------------
insert into product values(product_num.nextval, '구달 청귤 비타C 잡티 세럼플러스 70ml', 45000, '구달', 0);
insert into product values(product_num.nextval, '구달 청귤 비타C 잡티 세럼마스크(6+4매)', 18000, '구달', 0);
insert into product values(product_num.nextval, '브링그린 티트리 시카 수딩 토너 510ml', 22000, '브링그린', 0);
insert into product values(product_num.nextval, '에스트라 아토베리어 365 하이드로 수딩크림 60ml', 30000, '에스트라', 0);
insert into product values(product_num.nextval, '닥터지 레드블레미쉬 클리어 수딩 크림(50ml+50ml+50ml)', 39000, '닥터지', 0);
insert into product values(product_num.nextval, '아이소이 불가리안 로즈 블레미쉬 케어 업 세럼(더블세트)', 54000, '아이소이', 0);
insert into product values(product_num.nextval, '아누아 어성초 77 토너 500ml', 45000, '아누아', 0);
insert into product values(product_num.nextval, '브링그린 티트리 시카 수딩 크림(100ml)', 16000, '브링그린', 0);
insert into product values(product_num.nextval, '토리든 다이브인 세럼(더블기획세트)', 36000, '토리든', 0);
insert into product values(product_num.nextval, '리얼베리어 아쿠아 수딩크림 50ml', 30000, '리얼베리어', 0);
insert into product values(product_num.nextval, '라운드랩 자작나무 수분크림 80ml', 32000, '라운드랩', 0);
insert into product values(product_num.nextval, '마녀공장 비피다 바이옴 콤플렉스 앰플(30ml 더블기획)', 35000, '마녀공장', 0);
insert into product values(product_num.nextval, '아벤느 에센스-인-로션 200ml', 28000, '아벤느', 0);
insert into product values(product_num.nextval, '에스트라 아토베리어365 로션 150ml', 28000, '에스트라', 0);
insert into product values(product_num.nextval, '에스트라 아토베리어365 하이드로 에센스 150ml', 25000, '에스트라', 0);
insert into product values(product_num.nextval, '아벤느 아쿠아 크림-인-젤 100ml', 42000, '아벤느', 0);
insert into product values(product_num.nextval, '웰라쥬 리얼 히알루로닉 블루100 앰플(기획)', 28000, '웰라쥬', 0);
insert into product values(product_num.nextval, '닥터지 레드 블레미쉬 클리어 수딩 토너 500ml', 39000, '닥터지', 0);
insert into product values(product_num.nextval, '에스트라 아토베리어 365 크림 80ml', 28000, '에스트라', 0);
insert into product values(product_num.nextval, '리얼베리어 익스트림 크림 50ml(기획+20ml 증정)', 38000, '리얼베리어', 0);
insert into product values(product_num.nextval, '라운드랩 1025 독도 토너 200ml(기획+50ml 증정)', 15000, '라운드랩', 0);

select * from product;
select * from ingredient;
select * from product_in;
insert into product_in values (상품별 성분 id, 상품이름, 성분);
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

select * from skin;

// 피부타입(skin) 테이블 수정
update skin set skin_exp = '피지 -> 염증 -> 색소침착의 악순환이 반복되고 색소침착이 더 오래 남아 있는 피부에요.' where skin_type = 'OSPT';
update skin set skin_exp = '감정변화나 여러 자극으로 얼굴이 쉽게 빨개지고 곳곳에 여드름이 보이는 피부에요.' where skin_type = 'OSNT';
update skin set skin_exp = '다양한 피부트러블과 함께 색소침착, 피부노화까지 겪고 있는 총제적 난국의 피부에요.' where skin_type = 'OSPW';
update skin set skin_exp = '햇빛을 받으면 잘 익은 랍스터처럼 쉽게 붉어지고 번들거리며 종종 여드름이 보이는 피부에요.' where skin_type = 'OSNW';
update skin set skin_exp = '번들거림은 있지만, 딱히 흠 잡을 곳 없이 광채가 나는 피부에요.' where skin_type = 'ORNT';
update skin set skin_exp = '민감성 피부의 흔적으로 인해 매일 아침마다 넓은 모공과 주름, 반점을 마주하는 피부에요.' where skin_type = 'ORPW';
update skin set skin_exp = '피부 트러블은 잘 나지 않지만, 주름과 노화가 있는 피부에요.' where skin_type = 'ORNW';
update skin set skin_exp = '햇빛으로 인해 주근깨나 색소침착(검은반점 등)이 쉽게 생겨 고민일 수 있지만 장점이 훨씬 많은 피부에요.' where skin_type = 'ORPT';
update skin set skin_exp = '심한 건조함과 화끈거림을 자주 느끼고 각질과 붉은 기를 많이 보이는 피부에요.' where skin_type = 'DSNT';
update skin set skin_exp = '피부가 매우 민감하고 얇아 쉽게 자극을 느끼고, 색소침착도 잘 생기며, 주름도 보이는 피부에요.' where skin_type = 'DSPW';
update skin set skin_exp = '피부상태가 매일매일 변할 수 있고 가려움, 따가움, 홍조 등과 주름이 보이는 피부에요.' where skin_type = 'DSNW';
update skin set skin_exp = '민감한 피부로 매순간 고통 받을 수 있고, 특히 습진, 각질, 색소침착이 잘 나타나는 피부에요.' where skin_type = 'DSPT';
update skin set skin_exp = '전에는 피부에 별 문제가 없어 방치했지만, 지금은 색소침착(검은반점)과 주름이 보이는 피부에요.' where skin_type = 'DRPW';
update skin set skin_exp = '젋을 때는 좋은 피부를 가지고 있지만, 건조함과 함께 빠른 노화를 겪는 피부에요.' where skin_type = 'DRNW';
update skin set skin_exp = '햇빛으로 색소침착(기미, 검은반점 등)이 나타나기 쉽지만 아름답게 관리할 수 있는 피부에요.' where skin_type = 'DRPT';
update skin set skin_exp = '피부 복권에 당첨됐네요! 피부 결도 좋고 깨끗한 피부에요.' where skin_type = 'DRNT';
update skin set skin_exp = '가장 이상적인 피부로, 수분은 많고 유분은 적은 피부에요.' where skin_type = '아기피부';
update skin set skin_exp = '혈색도 좋고, 모공도 좁고, 트러블도 잘 생기지 않는 아주 건강한 피부에요.' where skin_type = '중성';
update skin set skin_type = '중성피부' where skin_type = '중성';
update skin set skin_exp = '모공이 크고 유분이 많아 번들거리고 여드름이나 뾰루지 같은 트러블이 쉽게 생기는 피부에요.' where skin_type = '지성피부';
update skin set skin_type = '지성피부' where skin_type = '지성';
update skin set skin_exp = '건조한 환경에서 피부당김과 각질이 잘 생기고 약한 자극에도 쉽게 빨개지는 피부에요.' where skin_type = '건성';
update skin set skin_type = '건성피부' where skin_type = '건성';
update skin set skin_exp = 'T존(이마, 코, 턱 부분)은 유분기가 많은 지성, U존(양볼 부분)은 수분이 부족한 건성의 특징을 보이는 피부에요.' where skin_type = '복합성피부';
update skin set skin_type = '복합성피부' where skin_type = '복합성';