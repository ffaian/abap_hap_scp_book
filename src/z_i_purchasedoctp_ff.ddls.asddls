@AbapCatalog.sqlViewName: 'ZIPURDOCTP_FF'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'PurchaseDocument'
//@ObjectModel.modelCategory: #BUSINESS_OBJECT
//@ObjectModel.compositionRoot: true
@AbapCatalog.preserveKey: true
//@ObjectModel.writeActivePersistence: 'ZPURDOCUMENT_FF'
//@VDM.viewType: #COMPOSITE

define root view Z_I_PurchaseDocTP_FF
  as select from Z_I_PurchDocOvPrice_FF
  composition [0..*] of Z_I_PurDocItemTP_FF as _PurchaseDocumentItem
//  association [0..1] to I_Indicator                 as _IsApprovalRequired   on $projection.IsApprovalRequired = _IsApprovalRequired.IndicatorValue
{

  key purchasedocument,
      Description,
      Status,
      Priority,
//      @ObjectModel.foreignKey.association: '_IsApprovalRequired'
      case when OverallPrice > 1000 then 'X' else '' end                                    as IsApprovalRequired,
      
      case when OverallPrice >= 0 and OverallPrice < 1000 then 3
      when OverallPrice >= 1000 and OverallPrice <= 10000 then 2
      when OverallPrice > 10000 then 1
      else 0 end  
                                                                              as OverallPriceCriticality,

      OverallPrice,

      Currency,

      PurchasingOrganization,
      PurchaseDocumentImageURL,


      crea_date_time,

      crea_uname,

      lchg_date_time,

      lchg_uname,

      /* Associations */
      _PurchaseDocumentItem,
      _Currency,
      _Priority,
      _Status,
//      _IsApprovalRequired,
      _PurchasingOrganization

}
