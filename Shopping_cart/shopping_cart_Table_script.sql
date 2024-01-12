-- Table for items by cart
CREATE TABLE dbo.items_by_cart 
(
    cart_id                     VARCHAR(64)    NOT NULL,
    timestamp_                  TIME       NOT NULL, 
    item_id                     VARCHAR         NOT NULL,
    item_name                   VARCHAR         NOT NULL,
    item_description            VARCHAR         NOT NULL,
    item_price                  DECIMAL         NOT NULL,
    quantity                    INT             NOT NULL,
    cart_subtotal               DECIMAL         NOT NULL
)
WITH
(
                DISTRIBUTION = HASH(cart_id),
                CLUSTERED COLUMNSTORE INDEX

);
-- Table for items by name
CREATE TABLE dbo.items_by_name
(
    id                     VARCHAR(32)     NOT NULL,
    name                   VARCHAR         NOT NULL,
    description            VARCHAR         NOT NULL,
    price                  DECIMAL         NOT NULL
);
-- Table for carts by users