/* 初始化58对接账号 */

use mogoroomdb;

UPDATE flat_joint_58account SET promotionNum = 1020;
INSERT INTO flat_joint_58account (`cityId`, `uid`, `clientId`, `secret`, `accessToken`, `refreshToken`, `timeSign`, `code`, `expiresIn`, `promotionNum`, `usedpromotionNum`, `valid`, `createBy`, `createByType`, `createTime`, `updateBy`, `updateByType`, `updateTime`) VALUES (289, 'CC1501E1F49CBB3A56944CFA5FA8CCBD', '43741413527553', 'E6835C0080D55C6BD3BCA67F40A212E13DBFDF40A6619B820965D922FB4B39AA', '6E584B6503B1F0D2F12D45C93C823355E69C42957CFF9FA27453A3BB950D3936FAFA500B70177F214C20D6C1D4A1769B', 'D84CBDB5FF1CE629239DB34A50ECC23290CED5C41910C6D559F07CBF781DAE3FA8D28865E914D2177F1F2E952ED923B1', NULL, NULL, '364', '960', '0', '1', '1', '0', now(), '1', '0', now());