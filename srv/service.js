const cds = require("@sap/cds");

class CPStockService extends cds.ApplicationService {
  async init() {
    /*  const { StockDetail, A_SalesOrder } = cds.entities(
      "cpstoragelocationcreationrequest"
    ); */
    const { StockDetail, A_SalesOrder } = this.entities;
    const APIService = await cds.connect.to("ext_srv_salesorder");

    console.log("Service Initialising");
    this.on("READ", StockDetail, async (req) => {
      console.log("inside read stockdetail");
      const A_Sales = await APIService.run(SELECT.from(A_SalesOrder).limit(3));
      console.log(A_Sales[0].SalesOrder);
    });
    this.on("uploadexcel", async (req) => {
      console.log("Inside UploadExcel action", req.params);
    });
    this.on("READ", A_SalesOrder, async (req, next) => {
      console.log("inside ext read");
      return await APIService.run(SELECT.from(A_SalesOrder));
    });

    return super.init();
  }
}

module.exports = CPStockService;
