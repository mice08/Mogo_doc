/* Database name `mogoroomdb` ，域名替换*/
use mogoroomdb;

UPDATE 
  comm_sysconfig 
SET
  val = 'www.mgzf.com' 
WHERE keyName = 'renterpc-www' 
  AND groupName IN (
    'DOMAIN_CONFIG_DEV',
    'DOMAIN_CONFIG_TEST',
    'DOMAIN_CONFIG_PRO'
  ) ;

UPDATE 
  comm_sysconfig 
SET
  val = 'gz.mgzf.com' 
WHERE keyName = 'renterpc-gz' 
  AND groupName IN (
    'DOMAIN_CONFIG_DEV',
    'DOMAIN_CONFIG_TEST',
    'DOMAIN_CONFIG_PRO'
  ) ;

UPDATE 
  comm_sysconfig 
SET
  val = 'sz.mgzf.com' 
WHERE keyName = 'renterpc-sz' 
  AND groupName IN (
    'DOMAIN_CONFIG_DEV',
    'DOMAIN_CONFIG_TEST',
    'DOMAIN_CONFIG_PRO'
  ) ;

UPDATE 
  comm_sysconfig 
SET
  val = 'hz.mgzf.com' 
WHERE keyName = 'renterpc-hz' 
  AND groupName IN (
    'DOMAIN_CONFIG_DEV',
    'DOMAIN_CONFIG_TEST',
    'DOMAIN_CONFIG_PRO'
  ) ;

UPDATE 
  comm_sysconfig 
SET
  val = 'bj.mgzf.com' 
WHERE keyName = 'renterpc-bj' 
  AND groupName IN (
    'DOMAIN_CONFIG_DEV',
    'DOMAIN_CONFIG_TEST',
    'DOMAIN_CONFIG_PRO'
  ) ;

UPDATE 
  comm_sysconfig 
SET
  val = 'zkgc.mgzf.com' 
WHERE keyName = 'renterpc-www' 
  AND groupName = 'DOMAIN_CONFIG_DEMO' ;

UPDATE 
  comm_sysconfig 
SET
  val = 'gzdemo.mgzf.com' 
WHERE keyName = 'renterpc-gz' 
  AND groupName = 'DOMAIN_CONFIG_DEMO' ;

UPDATE 
  comm_sysconfig 
SET
  val = 'szdemo.mgzf.com' 
WHERE keyName = 'renterpc-sz' 
  AND groupName = 'DOMAIN_CONFIG_DEMO' ;

UPDATE 
  comm_sysconfig 
SET
  val = 'hzdemo.mgzf.com' 
WHERE keyName = 'renterpc-hz' 
  AND groupName = 'DOMAIN_CONFIG_DEMO' ;

UPDATE 
  comm_sysconfig 
SET
  val = 'bjdemo.mgzf.com' 
WHERE keyName = 'renterpc-bj' 
  AND groupName = 'DOMAIN_CONFIG_DEMO' ;


UPDATE 
  comm_sysconfig 
SET
  val = 'p.mgzf.com' 
WHERE keyName = 'partnerpc-p' 
  AND groupName IN (
    'DOMAIN_CONFIG_DEV',
    'DOMAIN_CONFIG_TEST',
    'DOMAIN_CONFIG_PRO'
  ) ;

UPDATE 
  comm_sysconfig 
SET
  val = 'p.mgzf.com' 
WHERE keyName = 'partnerpc' 
  AND groupName IN (
    'DOMAIN_CONFIG_DEV',
    'DOMAIN_CONFIG_TEST',
    'DOMAIN_CONFIG_PRO'
  ) ;

UPDATE 
  comm_sysconfig 
SET
  val = 'hbgc.mgzf.com' 
WHERE keyName = 'partnerpc-p' 
  AND groupName = 'DOMAIN_CONFIG_DEMO' ;

UPDATE 
  comm_sysconfig 
SET
  val = 'hbgc.mgzf.com' 
WHERE keyName = 'partnerpc' 
  AND groupName = 'DOMAIN_CONFIG_DEMO';
