Profile:        JP_Composition_eMunicipalCheckup_511
Parent:         JP_Composition_eMunicipalCheckup_510
Id:             JP-Composition-eMunicipalCheckup-511
//Title:          "自治体検診結果報告書　Compositionリソース　文書構成情報"
Description:    "自治体検診結果報告書　Compositionリソース　文書構成情報(肺がん一次検診)"
* ^url = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Composition_eMunicipalCheckup_511"
* ^status = #draft

* event
  * code
    * coding
      * ^short = "自治体検診の健診プログラムサービスコード（検診区分）"
      * system = $checkup_type_cs (exactly)
        * ^short = "自治体検診の健診プログラムサービスコード（検診区分）を識別するURI。固定値。"
      * code  from $checkup_type_vs // 健診プログラムサービスコード（検診区分）
      //1：一次検診
      // 2：二次検診
      // 3:一次検診と精密検査の同時実施


//検査結果セクション
* section[OBSERVATION]
  //  * entry contains OBS 1..* MS and COV 0..2 MS
  * entry[9P504000000000011]  1..1  // "検査結果情報エントリ 肺がん検診の精密検査対象有無"
  * entry[9P507000000000011]  0..0  // "検査結果情報エントリ 肺がん検診の精密検査結果"
  * entry[9P508160800000049]  0..0  // "検査結果情報エントリ 肺がん検診の精密検査その他所見"
  * entry[9P509000000000011]  0..0  // "検査結果情報エントリ 肺がん検診の精密検査による偶発症の有無"

//TODO Invariantsで Observation 1> Coverage 0..2になっているか確認
