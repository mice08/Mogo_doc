USE mogoroomdb;
UPDATE loan_landlord_buyback SET loan_landlord_buyback.loanChannel  = 2
WHERE EXISTS(
 SELECT 1 FROM
 loan_landlord_mgmt
INNER JOIN loan_renter_contract  ON loan_landlord_mgmt.bizContractid  = loan_renter_contract.id
INNER JOIN loan_renter_info ON loan_renter_contract.infoid = loan_renter_info.id
WHERE loan_renter_contract.channel = 2 AND loan_landlord_buyback.loanid  = loan_landlord_mgmt.id
);

UPDATE loan_landlord_buyback SET loan_landlord_buyback.loanChannel  = 1
WHERE EXISTS(
 SELECT 1 FROM
 loan_landlord_mgmt
INNER JOIN loan_renter_contract  ON loan_landlord_mgmt.bizContractid  = loan_renter_contract.id
INNER JOIN loan_renter_info ON loan_renter_contract.infoid = loan_renter_info.id
WHERE loan_renter_contract.channel = 1 AND loan_landlord_buyback.loanid  = loan_landlord_mgmt.id
);

UPDATE loan_landlord_payplan SET loan_landlord_payplan.loanChannel = 2
WHERE EXISTS(
   SELECT 1 FROM
 loan_landlord_mgmt
INNER JOIN loan_renter_contract  ON loan_landlord_mgmt.bizContractid  = loan_renter_contract.id
INNER JOIN loan_renter_info ON loan_renter_contract.infoid = loan_renter_info.id
WHERE loan_renter_contract.channel = 2 AND loan_landlord_payplan.loanid  = loan_landlord_mgmt.id
);

UPDATE loan_landlord_payplan SET loan_landlord_payplan.loanChannel = 1
WHERE EXISTS(
   SELECT 1 FROM
 loan_landlord_mgmt
INNER JOIN loan_renter_contract  ON loan_landlord_mgmt.bizContractid  = loan_renter_contract.id
INNER JOIN loan_renter_info ON loan_renter_contract.infoid = loan_renter_info.id
WHERE loan_renter_contract.channel = 1 AND loan_landlord_payplan.loanid  = loan_landlord_mgmt.id
);