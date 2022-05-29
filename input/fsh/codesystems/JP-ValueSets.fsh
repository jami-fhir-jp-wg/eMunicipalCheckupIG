//--------------------------------------------------------------------
// 文書区分コード	Composition.type
// FHIR文書の文書区分（健診結果報告書）。
//--------------------------------------------------------------------
ValueSet: MunicipalCheckup_valueSet_documentTypeCode
Id: MunicipalCheckup-valueSet-documentTypeCode
Description: "文書区分コード"
* ^url = $doctype_codes_vs
* $doctype_codes_cs#xx  "自治体検診結果報告書"

//--------------------------------------------------------------------
// 報告区分コード	Composition.category
//	健診結果が、どの健診事業として報告されるかを示す健診報告区分を表す健康診断結果報告の区分
//--------------------------------------------------------------------
ValueSet: MunicipalCheckup_valueSet_reportCategory
Id: MunicipalCheckup-valueSet-reportCategory
Description: "報告区分コード"
* ^url = $report_category_vs
* $report_category_cs#51	"肺がん検診"
* $report_category_cs#52	"乳がん検診"
* $report_category_cs#53	"胃がん検診"
* $report_category_cs#54	"子宮頸がん検診"
* $report_category_cs#55	"大腸がん検診"
* $report_category_cs#56	"肝炎検診"
* $report_category_cs#57	"骨粗鬆症検診"
* $report_category_cs#58	"歯周疾患検診"

//--------------------------------------------------------------------
// 自治体検診検診区分	Composition.event.code
//	自治体検診の検診区分を識別するコード。
//--------------------------------------------------------------------
ValueSet: MunicipalCheckup_valueSet_checkupType
Id: MunicipalCheckup-ValueSet-checkupType
Description: "自治体検診検診区分"
* ^url = $checkup_type_vs
* $checkup_type_cs#1	"一次検診"
* $checkup_type_cs#2	"精密検査"
* $checkup_type_cs#3	"一次検診と精密検査"

//--------------------------------------------------------------------
// 自治体検診受診方法	Encounter.serviceType
//	自治体検診の受診方法を識別するコード。
//--------------------------------------------------------------------
ValueSet: MunicipalCheckup_valueSet_encounterType
Id: MunicipalCheckup-valueSet-encounterType
Description: "自治体検診受診方法"
* ^url = $checkup_encounter_type_vs
* $checkup_encounter_type_cs#1	"個別受診"
* $checkup_encounter_type_cs#2	"集団受診"

//--------------------------------------------------------------------
// セクションコード	Composition.section.code
//	本文書のセクションコードを表すコードシステム。
// 健診結果報告書内のセクションコード。
//--------------------------------------------------------------------
ValueSet: MunicipalCheckup_valueSet_sectionCode
Id: MunicipalCheckup-valueSet-sectionCode
Description: "セクションコード"
* ^url = $section_code_vs
//* #01910	"健診結果セクション"
* $section_code_cs#01910	"検査結果セクション"
* $section_code_cs#01920	"問診結果セクション"
* $section_code_cs#01995 	"添付書類セクション"

//--------------------------------------------------------------------
// 受診区分	Encounter.class
//	受診種別を表すコードシステム。
//--------------------------------------------------------------------
ValueSet: MunicipalCheckup_valueSet_encounterCategory
Id: MunicipalCheckup-valueSet-encounterCategory
Description: "受診区分"
* ^url = $encounter_cateogry_vs
* $encounter_cateogry_cs#checkup	"健診"

//--------------------------------------------------------------------
// 厚労省電子処方CDA規格別表12 被保険者区分コード
// 別表１２	被保険者区分コード	OID: 1.2.392.100495.20.2.62
//--------------------------------------------------------------------
ValueSet:  MHLW_valueSet_ePreCDA_insuredRelationship_tbl12
Id:   mhlw-valueSet-ePreCDA-insuredRelationship-tbl12
Description: "厚労省電子処方CDA規格別表12 被保険者区分コード"
* ^url = $subscriber-relationship-vs
// * include codes from valueset http://hl7.org/fhir/ValueSet/subscriber-relationship
* include codes from system $subscriber-relationship-cs
// Alias: $subscriber-relationship-cs = urn:oid:1.2.392.100495.20.2.62
// Alias: $subscriber-relationship-vs = http://jpfhir.jp/fhir/Common/ValueSet/mhlw-ePreCDA-insuredRelationship

