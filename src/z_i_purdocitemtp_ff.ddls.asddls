@AbapCatalog.sqlViewName: 'ZIPURDOCITETP_FF'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Purchase Document Item'
@AbapCatalog.preserveKey: true
//@ObjectModel.writeActivePersistence: 'ZPURCHDOCITEM_FF'
//@VDM.viewType: #COMPOSITE

define view Z_I_PurDocItemTP_FF
  as select from Z_I_PurchaseDoc_Item_ff
  association to parent Z_I_PurchaseDocTP_FF as _PurchaseDocument on $projection.PurchaseDocument = _PurchaseDocument.purchasedocument
{

  key PurchaseDocumentItem,
  key PurchaseDocument,
      Description,
      Vendor,
      VendorType,
      Price,
      Currency,
      Quantity,
      QuantityUnit,
      OverallItemPrice,     
      PurchaseDocumentItemImageURL,

      // BOPF Admin Data
      crea_date_time,
      crea_uname,
      lchg_date_time,
      lchg_uname,

      /* Associations */
      _Currency,
      _PurchaseDocument,
      _QuantityUnitOfMeasure
//      _VendorType

}
