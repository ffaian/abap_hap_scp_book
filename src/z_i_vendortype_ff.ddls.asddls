@AbapCatalog.sqlViewName: 'ZPRCHVNDRTYPE_FF'
@AccessControl.authorizationCheck: #NOT_ALLOWED
@EndUserText.label: 'Vendor Type'
@Analytics.dataCategory: #DIMENSION
@ObjectModel.resultSet.sizeCategory: #XS
define view Z_I_VENDORTYPE_FF   as select from zpurvendtyp_ff
{

      @ObjectModel.text.element: ['VendorTypeText']
      @EndUserText.label: 'Vendor Type'
  key vendortype     as VendorType,

      @Semantics.text: true
      @EndUserText.label: 'Vendor Type Text'
      vendortypetext as VendorTypeText
}
