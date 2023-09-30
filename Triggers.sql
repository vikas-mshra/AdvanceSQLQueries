-- 9. Trigger name: update_price_tg When changing a product’s price, insert a record in the price history table (similar to what we did in Salary History table).  

CREATE OR ALTER TRIGGER update_price_tg
ON PRODUCT
AFTER UPDATE
AS
BEGIN
    IF EXISTS(
            SELECT *
            FROM 
                INSERTED I
                JOIN DELETED D ON D.ProductID = I.ProductID
            WHERE I.Price <> D.Price)
        INSERT INTO PRICE_HISTORY(Rec_Date, Price, ProductId)
        SELECT GETDATE(), Price, ProductID
        FROM DELETED
END;

-- UPDATE PRODUCT
-- SET Price = 35.99
-- WHERE ProductID = 2;