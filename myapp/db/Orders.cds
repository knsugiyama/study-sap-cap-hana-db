namespace my.tutorial;

using {
    Currency,
    managed,
    cuid
 } from '@sap/cds/common';

entity Orders : cuid, managed {
    OrderNo : String @title : 'Order Number'  @mandatory;
    items    : Composition of many OrderItems
                   on items.parent = $self;
    total : Decimal(9, 2)@readonly;
    currency : Currency;
}

entity OrderItems : cuid {
    parent : Association to Orders;
    amount : Integer;
    netAmount : Decimal(9, 2);
}
