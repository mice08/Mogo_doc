/*
����˷����˹��ܲ˵�

Source Server         : 192.168.12.188
Source Server Version : 50625
Source Host           : 192.168.12.188:3306
Source Database       : mogodev

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2015��8��29�� 15:52:56
Author ��zhegnliangjie
*/

-- ����˷����˹��ܲ˵�

INSERT INTO `perm_functionInfo` (`id`, `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) VALUES 
('475', '2009202', '�˷�����', 'checkout/listAutoCheckout', '2', '2', '92', '0', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1');

INSERT INTO `perm_functionInfo` (`id`, `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) VALUES 
('479', '3047501', '��ѯ�˷�����', 'checkout/searchAutoCheckout', '1', '3', '475', '1', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1');

INSERT INTO `perm_functionInfo` (`id`, `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) VALUES 
('480', '3047502', '��ѯ��ͬ', 'checkout/findSaleContract', '2', '3', '475', '1', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1');

INSERT INTO `perm_functionInfo` (`id`, `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) VALUES 
('482', '3047503', '�˷�����ҵ��', 'checkout/addRefundRecord', '3', '3', '475', '1', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1');


