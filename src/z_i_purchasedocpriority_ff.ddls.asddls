@AbapCatalog.sqlViewName: 'ZIPURCHDOCPR_FF'
@AccessControl.authorizationCheck: #NOT_ALLOWED
@EndUserText.label: 'Purchase Document Priority'
@Analytics.dataCategory: #DIMENSION
@ObjectModel.resultSet.sizeCategory: #XS

define view Z_I_PurchaseDocPriority_ff
  as select from zpurdocprio_ff
{

      @ObjectModel.text.element: ['PriorityText']
      @EndUserText.label: 'Priority'
  key priority     as Priority,

      @Semantics.text: true
      @EndUserText.label: 'Priority Text'
      prioritytext as PriorityText
}
