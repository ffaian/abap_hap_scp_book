@AbapCatalog.sqlViewName: 'ZIPRDOCAPRSTATFF'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Purchasing Docs with Approval Status'

//@VDM.viewType: #COMPOSITE
define view Z_I_PurDocAprovalStat_FF
  as select from Z_I_PurchDocOvPrice_FF
{
  key purchasedocument,
      Description,
      Status,
      Priority,
      OverallPrice,
      Currency,
      PurchasingOrganization,
      crea_date_time,
      crea_uname,
      lchg_date_time,
      lchg_uname,
      case
      when OverallPrice > 1000
      then 'Approval Required'
      else 'No Approval Required' end as Approval,

      _Priority,
      _Status

}
