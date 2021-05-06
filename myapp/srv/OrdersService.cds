using { my.tutorial as my } from '../db/Orders';


@path : 'orders'
service OrdersService {
    entity Orders as select from my.Orders;
}
