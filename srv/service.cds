using cpstoragelocationcreationrequest as cpstoragelocationcreationrequest from '../db/schema';


service cpstoragelocationcreationrequest_srv {
    entity StockDetail  as projection on cpstoragelocationcreationrequest.StockDetail;

    action uploadExcel(fileContent : String) returns {
        status : Boolean
    };

    @cds.autoexpose
    @cds.persistence.skip: {
        table,
        skip: false
    }
    entity A_SalesOrder as projection on cpstoragelocationcreationrequest.A_SalesOrder;
}
