# Getting Started

Welcome to your new project.

It contains these folders and files, following our recommended project layout:

| File or Folder | Purpose                              |
| -------------- | ------------------------------------ |
| `app/`         | content for UI frontends goes here   |
| `db/`          | your domain models and data go here  |
| `srv/`         | your service models and code go here |
| `package.json` | project metadata and configuration   |
| `readme.md`    | this getting started guide           |

## Next Steps

- Open a new terminal and run `cds watch`
- (in VS Code simply choose _**Terminal** > Run Task > cds watch_)
- Start adding content, for example, a [db/schema.cds](db/schema.cds).

## Learn More

Learn more at https://cap.cloud.sap/docs/get-started/.

## Ref

PostgreSQL: https://blogs.sap.com/2023/07/12/run-and-deploy-sap-cap-node.js-or-java-with-postgresql-on-sap-btp-cloud-foundry/

https://capgemini-deutschland-gmbh-pbs-btp-sandbox-060u3qjk-fr-58788feb.cfapps.eu10-004.hana.ondemand.com/appmyui/withnone/sap/opu/odata/sap/api_sales_order_srv/$metadata

cd ./srv
curl https://capgemini-deutschland-gmbh-pbs-btp-sandbox-060u3qjk-fr-58788feb.cfapps.eu10-004.hana.ondemand.com/appmyui/withnone/sap/opu/odata/sap/api_sales_order_srv/$metadata > API_SALES_ORDER_SRV.edmx

something strange with the file, thus download the edmx file directly from:
cds import srv/api_order.edmx

https://www.youtube.com/watch?v=rWQFbXFEr1M

https://api.sap.com/api/OP_API_SALES_ORDER_SRV_0001/overview
https://github.com/SAP-samples/teched2021-developer-keynote/tree/main/section/cap

store in e.g. srv/OP_API_SALES_ORDER_SRV.edmx

cds import ./srv/OP_API_SALES_ORDER_SRV.edmx

npm install @sap-cloud-sdk/resilience

npm install @sap-cloud-sdk/http-client

possibly the destination in the remote service of the package.json could point to
"destination": "mydemo-srv-dest"

instead of
"destination": "O22_NOPP_API"

also note
https://cap.cloud.sap/docs/guides/using-services#extend-a-remote-by-a-local-service
"cds": {
"requires": {
"API_BUSINESS_PARTNER": {
"kind": "odata",
"model": "srv/external/API_BUSINESS_PARTNER",
"[production]": {
"credentials": {
"destination": "S4HANA",
"path": "/sap/opu/odata/sap/API_BUSINESS_PARTNER"
}
}
}
}
}

coding_examples:
https://api.sap.com/api/API_SALES_ORDER_SRV/tryout

"@sap-cloud-sdk/generator": "^3.6.0",
"@sap-cloud-sdk/http-client": "^3.6.0",
"@sap-cloud-sdk/resilience": "^3.6.0",

https://cap.cloud.sap/docs/guides/using-services#introduction

- mocking external service
