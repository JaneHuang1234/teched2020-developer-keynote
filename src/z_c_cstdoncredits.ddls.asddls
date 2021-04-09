@EndUserText.label: 'Customer Donation Credits Projection View'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true


define root view entity z_c_cstdoncredits as projection on Z_I_CSTDONCREDITS {
    //Z_I_CSTDONCREDITS
    
     @UI.facet: [{
               label : 'General Information',
               id : 'GeneralInfo',
               purpose: #STANDARD,
               type : #IDENTIFICATION_REFERENCE,
               position: 10
           }]
    
    @UI.lineItem: [{position: 10 }]
    @UI.identification: [{ position: 10 }]
    key salesorder,    
    
    @UI.lineItem: [{position: 20 }]
    @UI.identification: [{ position: 20 }]
    custid,
    
    @UI.lineItem: [{position: 30 }]
    @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_CDC_CUSTOMER_MASTER'
    @EndUserText.label : 'Customer Name'
    virtual customername : abap.char(40),
    
    
    @UI.lineItem: [{position: 40 }]
    @UI.identification: [{ position: 30 }]
    creationdate,
    creationdateyyyymm,
    @UI.lineItem: [{position: 50 }]
    @UI.identification: [{ position: 40 }]
    credits,
    @UI.lineItem: [{position: 60 }]
    @UI.identification: [{ position: 50 }]
    salesorg
}
