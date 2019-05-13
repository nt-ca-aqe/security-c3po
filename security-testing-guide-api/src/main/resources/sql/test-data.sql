/* PROJECTS */
/* ID, CLIENT, TITLE, CREATED_AT, TESTER_NAME, SELECTED_LOGO_TESTER, SELECTED_LOGO_CLIENT */
-- INSERT INTO PROJECT VALUES('c02d0059-326f-4013-a2b1-0954e308bd00', 'E Corp', 'Some Mock API (v1.3) Scanning', parsedatetime('13-12-2018 17:04:18', 'dd-MM-yyyy hh:mm:ss'), 'NovaTester', 1, 2);
INSERT INTO PROJECT VALUES('3fce7122-759d-4ad4-be3d-ecc1235092d8', 'E Corp', 'CreditCash (v2.5) API Testing', parsedatetime('14-12-2018 00:00:01', 'dd-MM-yyyy hh:mm:ss'), 'L33TH4X0R', 2, 2);
INSERT INTO PROJECT VALUES('254cfb1d-5611-4f87-aa3f-18317c11e07d', 'ACME Group', 'PayMe App (v0.2.8) Backend Scan', parsedatetime('14-12-2018 09:15:11', 'dd-MM-yyyy hh:mm:ss'), 'NovaTester', 0, 1);

/* SECURITY_TEST_PERFORMED */
/* ID VARCHAR(255) NOT NULL, PROJECT_ID VARCHAR(255) NOT NULL, TEST_ID VARCHAR(255) NOT NULL, CHECKED BOOLEAN(1) NOT NULL, COMMENT TEXT */
INSERT INTO SECURITY_TEST_PERFORMED VALUES('63c85333-9876-416f-bc9f-f3c78731e2ae', '3fce7122-759d-4ad4-be3d-ecc1235092d8', 'OTG-INFO-001', TRUE, '');
INSERT INTO SECURITY_TEST_PERFORMED VALUES('0f2c4c63-b98b-483c-89d5-b44f2ac1e1fb', 'c02d0059-326f-4013-a2b1-0954e308bd00', 'OTG-INFO-001', FALSE, 'Some comment for OTG-INFO-001.');
INSERT INTO SECURITY_TEST_PERFORMED VALUES('de4aa098-1db1-4d22-8162-3c7b9be7eb01', 'c02d0059-326f-4013-a2b1-0954e308bd00', 'OTG-CLIENT-009', TRUE, 'Application does not seem to be vulnerable to clickjacking.');
INSERT INTO SECURITY_TEST_PERFORMED VALUES('eaf2befb-bdc5-4fdf-8f2c-f6be4e50a5ff', 'c02d0059-326f-4013-a2b1-0954e308bd00', 'OTG-INFO-002', TRUE, 'Webserver runs debian 9.0 (extracted from banner).');
INSERT INTO SECURITY_TEST_PERFORMED VALUES('57f7c4c7-addc-4e1d-bb46-3924156f06f7', '3fce7122-759d-4ad4-be3d-ecc1235092d8', 'OTG-BUSLOGIC-007', TRUE, 'Some other comment for OTG-BUSLOGIC-007.');
INSERT INTO SECURITY_TEST_PERFORMED VALUES('cf694dff-b99a-4e50-9ce6-6e7d26f1a1b3', '254cfb1d-5611-4f87-aa3f-18317c11e07d', 'OTG-BUSLOGIC-007', FALSE, 'Some other comment for OTG-BUSLOGIC-007.');

/* ------------------------------- */
/* JOIN TABLES */
/* SELECT SECURITY_TEST_PERFORMED.TEST_NUMBER, SECURITY_TEST_PERFORMED.PROJECT_ID, SECURITY_TEST.CATEGORY, SECURITY_TEST.TITLE, SECURITY_TEST_PERFORMED.COMMENT FROM SECURITY_TEST_PERFORMED INNER JOIN SECURITY_TEST ON SECURITY_TEST_PERFORMED.TEST_NUMBER=SECURITY_TEST.TEST_NUMBER */
/*
SELECT PROJECTS.TITLE, SECURITY_TEST.TEST_NUMBER, SECURITY_TEST.CATEGORY, SECURITY_TEST.TITLE, SECURITY_TEST_PERFORMED.COMMENT FROM SECURITY_TEST_PERFORMED
INNER JOIN SECURITY_TEST ON SECURITY_TEST_PERFORMED.TEST_NUMBER=SECURITY_TEST.TEST_NUMBER
INNER JOIN PROJECTS ON SECURITY_TEST_PERFORMED.PROJECT_ID=PROJECTS.ID
*/