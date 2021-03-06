@AbapCatalog.sqlViewName: 'ZPRIO_FF_VH'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Value Help for Priority'

@Search.searchable: true

//@ObjectModel.semanticKey:  [ 'priority' ]
//@ObjectModel.representativeKey: ['priority']
//@VDM.viewType: #CONSUMPTION

@ObjectModel.resultSet.sizeCategory: #XS
//@ObjectModel.dataCategory: #VALUE_HELP

define view Z_C_Priority_FF_VH as select from Z_I_PurchaseDocPriority_ff {
@ObjectModel.text.element: ['PriorityText']
key Priority,
@Search: { defaultSearchElement: true, ranking: #HIGH, fuzzinessThreshold: 0.7 }
    PriorityText
}
