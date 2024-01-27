namespace cpstoragelocationcreationrequest;


entity StockDetail {
    key Plant                 : String;
    key Material              : String;
        TotalForecastedStock  : Decimal;
        UploadedSafetyStock   : Decimal;
        TotalQuota            : Decimal;
        virtual ComputedField : Decimal;
}

using {ext_srv_salesorder as external} from '..\srv\external\srv\external\ext_srv_salesorder.csn';


entity A_SalesOrder as
    projection on external.A_SalesOrder {
        key SalesOrder,
            SalesOrderType,
            SalesOrganization,
            DistributionChannel,
            OrganizationDivision

    }
