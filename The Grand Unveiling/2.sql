use bank
go

CREATE PROCEDURE TransactionLimit 
    @AccountID INT, 
    @Amount DECIMAL(10, 2), 
    @Type NVARCHAR(20)
AS
BEGIN
    IF (@Type = 'Withdrawal' AND @Amount > 10000)
    BEGIN
        INSERT INTO Transactions (AccountID, Amount, Type, Timestamp)
        VALUES (@AccountID, @Amount, @Type, GETDATE());
    END
END
GO
