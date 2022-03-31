<!-- 코드아이즈 수용신청 등록 테이블 -->


CREATE TABLE ito_inspect_content (
	cno SERIAL PRIMARY KEY,
	ito_status VARCHAR(10) NOT NULL, 			-- 계약상태여부
	ito_user VARCHAR(10) NOT NULL, 			-- 신청자
	ito_regdate DATE NOT NULL DEFAULT CURRENT_DATE,
	ito_process VARCHAR(20) NOT NULL, 			-- 수용 상태
	ito_serv_domain VARCHAR(50) NOT NULL,
	ito_std_cd VARCHAR(10) NOT NULL,
	ito_std_nm VARCHAR(60) NOT NULL,
	ito_ustd_cd VARCHAR(10) NOT NULL,
	ito_ustd_nm VARCHAR(60) NOT NULL,
	ito_dev_lang VARCHAR(10) NOT NULL,
	ito_fire_duedate DATE NOT NULL,
	ito_auth VARCHAR(200) NOT NULL, 			-- 권한 필요 사번
	ito_acc_id VARCHAR(20) NOT NULL,
	ito_acc_pw VARCAR(50) NOT NULL,
	ito_etc TEXT
);

ALTER TABLE ito_inspect_content ALTER COLUMN ito_process SET DEFAULT '등록';