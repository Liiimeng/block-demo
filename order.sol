// 声明编译智能合约的编译器版本
pragma solidity ^0.4.0;

// 通过contract关键字定义一个合约，和Java中的class定义一个类一样
contract Order{
    // 定义一个订单结构体
    struct Item{
            uint orderid;
            uint price;
    }
    // 定义一个订单数组
    Item[] items;          
    // 定义一个映射，和Java的中map一样        
    mapping(uint => uint) orderidToPrice;
    
    // 定义增加订单的方法
    function addItem(uint orderid, uint price) public {
            orderidToPrice[orderid] = price;
            items.push(Item(orderid, price));
    }

    // 定义根据订单编号获取价格的合约
    function getPricebyId(uint orderid) public view returns (uint)  {
            return orderidToPrice[orderid];
    }
}