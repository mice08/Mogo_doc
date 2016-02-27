ALTER TABLE flat_flats ADD INDEX IDX_LandlordID(landlordId );

ALTER TABLE bill_saleBill ADD INDEX IDX_USERID(userId);

ALTER TABLE cntr_saleContract ADD INDEX IDX_RNETERID(renterId);