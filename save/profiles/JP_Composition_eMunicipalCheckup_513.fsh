Profile:        JP_Composition_eMunicipalCheckup_513
Parent:         JP_Composition_eMunicipalCheckup_510
Id:             JP-Composition-eMunicipalCheckup-513
//Title:          "自治体検診結果報告書　Compositionリソース　文書構成情報"
Description:    "自治体検診結果報告書　Compositionリソース　文書構成情報(肺がん一次検診と精密検査)"
* ^url = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Composition_eMunicipalCheckup_513"
* ^status = #draft

* event.code.coding = $checkup_type_cs#3 (exactly)

//検査結果セクション
* section[OBSERVATION]
//  * entry contains OBS 1..* MS and COV 0..2 MS
  * entry[9P504000000000011] 1..1
  * entry[9P507000000000011] 1..1
  
//TODO Invariantsで Observation 1> Coverage 0..2になっているか確認
