use mogoroomdb;
UPDATE
  loan_contract llc
  LEFT JOIN loan_contract rlc
    ON llc.relContractId = rlc.id SET llc.actualAmount = llc.applyAmount - ROUND(
      llc.applyAmount * llc.feeRate / 10000,
      2
    ),
  llc.workFlowStatus = 1
WHERE llc.workFlowStatus = 0
  AND llc.relContractId IS NOT NULL
  AND llc.actualAmount = 0
  AND llc.applyAmount > 0
  AND rlc.workFlowStatus IN (12) ;