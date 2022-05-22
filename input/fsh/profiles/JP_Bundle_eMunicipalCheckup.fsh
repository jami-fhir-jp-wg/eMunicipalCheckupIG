Profile: JP_Bundle_eMunicipalCheckup
Parent: JP-Bundle-CUPIX
Id: JP-Bundle-eMunicipalCheckup
Description: "自治体検診結果報告書　Bundleリソース　文書情報"
* ^url = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Bundle_eMunicipalCheckup"
* ^status = #draft
/*
* meta 1..1 MS
//  * profile = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/eMunicipalCheckup-Bundle/1.0"
  * profile = $profile
    * ^short = "本文書のプロファイルを識別するURLを指定する。値は例示である。今後決定されるURLを指定すること。"

* identifier 1..1 MS
  * system = "urn:ietf:rfc:3986"
    * ^short = "固定値。"
  * value 1..1
    * ^short = "Bundleリソースを一意に特定する識別子。本仕様では、Bundleに対して一意となるように生成されたUUIDを指定する。"
*/

* entry[composition].resource only JP_Composition_eMunicipalCheckup
* entry[composition]
  * ^short = "構成リソース一覧目次に相当。"
    * ^short = "文書構成情報"
  * ^slicing.discriminator.type = #profile
  * ^slicing.discriminator.path = "resource"
  * ^slicing.rules = #open
* entry[composition]  contains 
    first 0..1 and
    second 0..1 and
    both 0..1
    
* entry[patient].resource only JP_Patient_eMunicipalCheckup
* entry[practitionerRole].resource only JP_PractitionerRole_eMunicipalCheckup
* entry[organizationProvider].resource only JP_Organization_eMunicipalCheckup_Provider
* entry[practitioner].resource only JP_Practitioner_eMunicipalCheckup
* entry[encounter].resource only JP_Encounter_eMunicipalCheckup
* entry[coverage].resource only JP_Coverage_eMunicipalCheckup
* entry[organizationInsurer].resource only JP_Organization_eMunicipalCheckup_Insurer
* entry[observationGroup].resource only JP_Observation_eMunicipalCheckup_Group
* entry[observation].resource only JP_Observation_eMunicipalCheckup
* entry[specimen].resource only JP_Specimen_eMunicipalCheckup
* entry[diagnosticReport].resource only JP_DiagnosticReport_eMunicipalCheckup
* entry[media].resource only JP_Media_eMunicipalCheckup
* entry[documentReference].resource only JP_DocumentReference_eMunicipalCheckup
