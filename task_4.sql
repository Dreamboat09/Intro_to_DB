USE alx_book_store;

SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGHT, IS_NULLABLE, COLUMN_KEY 
FROM information_schema.COLUMNS 
WHERE TABLE_SCHEMA = 'alx_book_store' AND TABLE_NAME = 'books'