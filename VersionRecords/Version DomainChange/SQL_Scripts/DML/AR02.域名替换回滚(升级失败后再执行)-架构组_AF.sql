/* Database name `mogoroomdb` ，域名替换回滚*/
use mogoroomdb;

UPDATE 
  comm_sysconfig 
SET
  val = 'www.mogoroom.com' 
WHERE keyName = 'renterpc-www' 
  AND groupName IN (
    'DOMAIN_CONFIG_DEV',
    'DOMAIN_CONFIG_TEST',
    'DOMAIN_CONFIG_PRO'
  ) ;

UPDATE 
  comm_sysconfig 
SET
  val = 'gz.mogoroom.com' 
WHERE keyName = 'renterpc-gz' 
  AND groupName IN (
    'DOMAIN_CONFIG_DEV',
    'DOMAIN_CONFIG_TEST',
    'DOMAIN_CONFIG_PRO'
  ) ;

UPDATE 
  comm_sysconfig 
SET
  val = 'sz.mogoroom.com' 
WHERE keyName = 'renterpc-sz' 
  AND groupName IN (
    'DOMAIN_CONFIG_DEV',
    'DOMAIN_CONFIG_TEST',
    'DOMAIN_CONFIG_PRO'
  ) ;

UPDATE 
  comm_sysconfig 
SET
  val = 'hz.mogoroom.com' 
WHERE keyName = 'renterpc-hz' 
  AND groupName IN (
    'DOMAIN_CONFIG_DEV',
    'DOMAIN_CONFIG_TEST',
    'DOMAIN_CONFIG_PRO'
  ) ;

UPDATE 
  comm_sysconfig 
SET
  val = 'bj.mogoroom.com' 
WHERE keyName = 'renterpc-bj' 
  AND groupName IN (
    'DOMAIN_CONFIG_DEV',
    'DOMAIN_CONFIG_TEST',
    'DOMAIN_CONFIG_PRO'
  ) ;

UPDATE 
  comm_sysconfig 
SET
  val = 'zkgc.mogoroom.com' 
WHERE keyName = 'renterpc-www' 
  AND groupName = 'DOMAIN_CONFIG_DEMO' ;

UPDATE 
  comm_sysconfig 
SET
  val = 'gzdemo.mogoroom.com' 
WHERE keyName = 'renterpc-gz' 
  AND groupName = 'DOMAIN_CONFIG_DEMO' ;

UPDATE 
  comm_sysconfig 
SET
  val = 'szdemo.mogoroom.com' 
WHERE keyName = 'renterpc-sz' 
  AND groupName = 'DOMAIN_CONFIG_DEMO' ;

UPDATE 
  comm_sysconfig 
SET
  val = 'hzdemo.mogoroom.com' 
WHERE keyName = 'renterpc-hz' 
  AND groupName = 'DOMAIN_CONFIG_DEMO' ;

UPDATE 
  comm_sysconfig 
SET
  val = 'bjdemo.mogoroom.com' 
WHERE keyName = 'renterpc-bj' 
  AND groupName = 'DOMAIN_CONFIG_DEMO' ;


UPDATE 
  comm_sysconfig 
SET
  val = 'p.mogoroom.com' 
WHERE keyName = 'partnerpc-p' 
  AND groupName IN (
    'DOMAIN_CONFIG_DEV',
    'DOMAIN_CONFIG_TEST',
    'DOMAIN_CONFIG_PRO'
  ) ;

UPDATE 
  comm_sysconfig 
SET
  val = 'ppc.api.mogoroom.com' 
WHERE keyName = 'partnerpc' 
  AND groupName IN (
    'DOMAIN_CONFIG_DEV',
    'DOMAIN_CONFIG_TEST',
    'DOMAIN_CONFIG_PRO'
  ) ;

UPDATE 
  comm_sysconfig 
SET
  val = 'pdemo.mogoroom.com' 
WHERE keyName = 'partnerpc-p' 
  AND groupName = 'DOMAIN_CONFIG_DEMO' ;

UPDATE 
  comm_sysconfig 
SET
  val = 'hbgc.mogoroom.com' 
WHERE keyName = 'partnerpc' 
  AND groupName = 'DOMAIN_CONFIG_DEMO';
