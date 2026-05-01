use global;
create table DescriptionDataCoSupplyChain;
SELECT * FROM DescriptionDataCoSupplyChain;
SELECT COUNT(*) FROM DescriptionDataCoSupplyChain;
create table DataCoSupplyChainDataset;
select*from datacosupplychaindataset;
create table tokenized_access_logs;
select*from tokenized_access_logs;
SELECT * FROM DataCoSupplyChainDataset 
WHERE Customer_Id IS NULL OR Order_Region IS NULL;
UPDATE DataCoSupplyChainDataset
SET Customer_City = 'Unknown'
WHERE Customer_City IS NULL;
UPDATE DataCoSupplyChainDataset
SET Order_Status = UPPER(TRIM(Order_Status)),
    Shipping_Mode = TRIM(Shipping_Mode);
ALTER TABLE DataCoSupplyChainDataset 
MODIFY COLUMN shipping_date DATE;
SELECT * FROM DataCoSupplyChainDataset 
WHERE Days_for_shipping_real < 0 OR Product_Price <= 0;
