Profile:        JP_Coverage_eMunicipalCheckup
Parent:         JP_Coverage_CUPIX
Id:             JP-Coverage-eMunicipalCheckup
//Title:          "自治体検診結果報告書　Coverageリソース  保険情報"
Description:    "自治体検診結果報告書　Coverageリソース  保険情報"
* ^url = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Coverage_eMunicipalCheckup"
* ^status = #draft

* beneficiary only Reference(JP_Patient_eMunicipalCheckup)
  * ^short = "この保険で給付される受診者情報（Patientリソース）へのリテラル参照。"
  * reference 1..1 MS
    * ^short = "PatientリソースのfullUrl要素に指定されるUUIDを指定。"

* payor only Reference(JP_Organization_eMunicipalCheckup_Insurer or JP_Patient_eMunicipalCheckup)
