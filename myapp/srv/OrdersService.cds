using { my.tutorial as tis } from '../db/Orders';


@path : 'orders'
service OrdersService {
    entity Orders as select from tis.Orders;
}
