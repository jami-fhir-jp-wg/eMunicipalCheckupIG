Invariant: eventCategory01
Description: "一次検診条件"
Severity: #error
Expression: "entry[0].event.code.coding.code = '1'
 and (entry.resource=JP_Observation_eMunicipalCheckup_9P504000000000011).exists()  
 and (entry.resource=JP_Observation_eMunicipalCheckup_9P507000000000011).exists().not() 
 and (entry.resource=JP_Observation_eMunicipalCheckup_9P508160800000049).exists().not()  
 and (entry.resource=JP_Observation_eMunicipalCheckup_9P509000000000011).exists().not()   
 "
// exist // "検査結果情報エントリ 肺がん検診の精密検査対象有無"
// not exist // "検査結果情報エントリ 肺がん検診の精密検査結果"
// not exist // "検査結果情報エントリ 肺がん検診の精密検査その他所見"
// not exist // "検査結果情報エントリ 肺がん検診の精密検査による偶発症の有無"

Invariant: eventCategory02
Description: "二次検診条件"
Severity: #error
Expression: "entry[0].event.code.coding.code = '2'
 and (entry.resource=JP_Observation_eMunicipalCheckup_9P507000000000011).exists()  

 and (entry.resource=JP_Observation_eMunicipalCheckup_Group_9P500).exists().not() 
 and (entry.resource=JP_Observation_eMunicipalCheckup_9P502000000000011).exists().not()  
 and (entry.resource=JP_Observation_eMunicipalCheckup_9P503160800000049).exists().not()   
 and (entry.resource=JP_Observation_eMunicipalCheckup_Group_7A030).exists().not() 
 and (entry.resource=JP_Observation_eMunicipalCheckup_7A030161506144349).exists().not()  
 and (entry.resource=JP_Observation_eMunicipalCheckup_7A030000006144311).exists().not()   
and (entry.resource=JP_Observation_eMunicipalCheckup_7A030160806144349).exists().not() 
 and (entry.resource=JP_Observation_eMunicipalCheckup_9P504000000000011).exists().not()  
 and (entry.resource=JP_Observation_eMunicipalCheckup_9P505160800000049).exists().not()   
and (entry.resource=JP_Observation_eMunicipalCheckup_9P506000000000011).exists().not() 
 and (entry.resource=JP_Observation_eMunicipalCheckup_9P508160800000049).exists().not()   
 and (entry.resource=JP_Observation_eMunicipalCheckup_9P509000000000011).exists().not()   
 and (entry.resource=JP_Observation_eMunicipalCheckup_9P500000000000011).exists().not()   
 and (entry.resource=JP_Observation_eMunicipalCheckup_9P501000000000011).exists().not()   
 and (entry.resource=JP_Observation_eMunicipalCheckup_9N737000000000012).exists().not()   
"
/*
* entry[Group_9P500] 0..0         // "検査結果情報エントリ 胸部エックス線検査"
* entry[9P502000000000011] 0..0       // "検査結果情報エントリ 肺がん検診の胸部エックス線検査判定"
* entry[9P503160800000049] 0..0       // "検査結果情報エントリ 肺がん検診の胸部エックス線検査所見"
* entry[Group_7A030] 0..0         // "検査結果情報エントリ 喀痰検査"
* entry[7A030161506144349] 0..0       // "検査結果情報エントリ 肺がん検診の喀痰検査受診日"
* entry[7A030000006144311] 0..0       // "検査結果情報エントリ 肺がん検診の喀痰検査判定"
* entry[7A030160806144349] 0..0       // "検査結果情報エントリ 肺がん検診の喀痰検査所見"
* entry[9P504000000000011] 0..0  // "検査結果情報エントリ 肺がん検診の精密検査対象有無"
* entry[9P505160800000049] 0..0  // "検査結果情報エントリ 肺がん検診のその他所見"
* entry[9P506000000000011] 0..0  // "検査結果情報エントリ 肺がん検診による偶発症の有無"
* entry[9P507000000000011] 1..1  // "検査結果情報エントリ 肺がん検診の精密検査結果"
* entry[9P508160800000049] 0..0  // "検査結果情報エントリ 肺がん検診の精密検査その他所見"
* entry[9P509000000000011] 0..0  // "検査結果情報エントリ 肺がん検診の精密検査による偶発症の有無"
* entry[9P500000000000011] 0..0  // "検査結果情報エントリ 肺がん検診の過去の受診歴"
* entry[9P501000000000011] 0..0  // "検査結果情報エントリ 肺がん検診時の肺がんに係る症状の有無"
* entry[9N737000000000012] 0..0  //　"検査結果情報エントリ 肺がん検診時の喫煙指数"
*/

Invariant: eventCategory03
Description: "一次、二次検診両方実施条件"
Severity: #error
Expression: "entry[0].event.code.coding.code = '3'
 and (entry.resource=JP_Observation_eMunicipalCheckup_9P504000000000011).exists()  
 and (entry.resource=JP_Observation_eMunicipalCheckup_9P507000000000011).exists()  
"
/*
* entry[9P504000000000011]  1..1  // "検査結果情報エントリ 肺がん検診の精密検査対象有無"
* entry[9P507000000000011] 1..1  // "検査結果情報エントリ 肺がん検診の精密検査結果"
*/

Profile:        JP_Bundle_eMunicipalCheckup_510
Parent:         JP_Bundle_eMunicipalCheckup
Id:             JP-Bundle-eMunicipalCheckup-510
Description:    "自治体検診結果報告書　Bundleリソース　文書情報(肺がん一次検診と精密検査いずれかまたは両方)"
* ^url = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Bundle_eMunicipalCheckup_510"
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

* obeys eventCategory01
    and eventCategory02
    and eventCategory03
    
* entry contains
    Group_9P500 0..1 MS and         // "検査結果情報エントリ 胸部エックス線検査"
    9P502000000000011 0..1 MS and       // "検査結果情報エントリ 肺がん検診の胸部エックス線検査判定"
    9P503160800000049 0..1 MS and       // "検査結果情報エントリ 肺がん検診の胸部エックス線検査所見"
    Group_7A030 0..1 MS and         // "検査結果情報エントリ 喀痰検査"
    7A030161506144349 0..1 MS and       // "検査結果情報エントリ 肺がん検診の喀痰検査受診日"
    7A030000006144311 0..1 MS and       // "検査結果情報エントリ 肺がん検診の喀痰検査判定"
    7A030160806144349 0..1 MS and       // "検査結果情報エントリ 肺がん検診の喀痰検査所見"
    9P504000000000011 0..1 MS and   // "検査結果情報エントリ 肺がん検診の精密検査対象有無"
    9P505160800000049 0..1 MS and   // "検査結果情報エントリ 肺がん検診のその他所見"
    9P506000000000011 0..1 MS and   // "検査結果情報エントリ 肺がん検診による偶発症の有無"
    9P507000000000011 0..1 MS and   // "検査結果情報エントリ 肺がん検診の精密検査結果"
    9P508160800000049 0..1 MS and   // "検査結果情報エントリ 肺がん検診の精密検査その他所見"
    9P509000000000011 0..1 MS and   // "検査結果情報エントリ 肺がん検診の精密検査による偶発症の有無"
    9P500000000000011 0..1 MS and   // "検査結果情報エントリ 肺がん検診の過去の受診歴"
    9P501000000000011 0..1 MS and   // "検査結果情報エントリ 肺がん検診時の肺がんに係る症状の有無"
    9N737000000000012 0..1 MS       //　"検査結果情報エントリ 肺がん検診時の喫煙指数"

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
    

* entry[composition][first]
  * resource only JP_Composition_eMunicipalCheckup_511
    * ^short = "文書構成情報(肺がん一次検診)"
  * resource.event.code.coding.code = #1 (exactly)
* entry[composition][second]
  * resource only JP_Composition_eMunicipalCheckup_512
    * ^short = "文書構成情報(肺がん精密検査)"
  * resource.event.code.coding.code = #2 (exactly)
* entry[composition][both]
  * resource only JP_Composition_eMunicipalCheckup_513
    * ^short = "文書構成情報(肺がん一次検診と精密検査)"
  * resource.event.code.coding.code = #3 (exactly)

* entry[Group_9P500]
  * ^short = "検査結果情報エントリ 胸部エックス線検査"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_Group_9P500
    * ^short = "健診項目情報 胸部エックス線検査"

* entry[9P502000000000011]
  * ^short = "検査結果情報エントリ 肺がん検診の胸部エックス線検査判定"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P502000000000011
    * ^short = "健診項目情報 肺がん検診の胸部エックス線検査判定"

* entry[9P503160800000049]
  * ^short = "検査結果情報エントリ 肺がん検診の胸部エックス線検査所見"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P503160800000049
    * ^short = "健診項目情報 肺がん検診の胸部エックス線検査所見"

* entry[Group_7A030]
  * ^short = "検査結果情報エントリ 喀痰検査"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_Group_7A030
    * ^short = "健診項目情報 喀痰検査"

* entry[7A030161506144349]
  * ^short = "検査結果情報エントリ 肺がん検診の喀痰検査受診日"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_7A030161506144349
    * ^short = "健診項目情報 肺がん検診の喀痰検査受診日"

* entry[7A030000006144311]
  * ^short = "検査結果情報エントリ 肺がん検診の喀痰検査判定"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_7A030000006144311
    * ^short = "健診項目情報 肺がん検診の喀痰検査判定"

* entry[7A030160806144349]
  * ^short = "検査結果情報エントリ 肺がん検診の喀痰検査所見"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_7A030160806144349
    * ^short = "健診項目情報 肺がん検診の喀痰検査所見"

* entry[9P504000000000011]
  * ^short = "検査結果情報エントリ 肺がん検診の精密検査対象有無"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P504000000000011
    * ^short = "健診項目情報 肺がん検診の精密検査対象有無"

* entry[9P505160800000049]
  * ^short = "検査結果情報エントリ 肺がん検診のその他所見"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P505160800000049
    * ^short = "健診項目情報 肺がん検診のその他所見"

* entry[9P506000000000011]
  * ^short = "検査結果情報エントリ 肺がん検診による偶発症の有無"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P506000000000011
    * ^short = "健診項目情報 肺がん検診による偶発症の有無"

* entry[9P507000000000011]
  * ^short = "検査結果情報エントリ 肺がん検診の精密検査結果"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P507000000000011
    * ^short = "健診項目情報 肺がん検診の精密検査結果"

* entry[9P508160800000049]
  * ^short = "検査結果情報エントリ 肺がん検診の精密検査その他所見"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P508160800000049
    * ^short = "健診項目情報 肺がん検診の精密検査その他所見"

* entry[9P509000000000011]
  * ^short = "検査結果情報エントリ 肺がん検診の精密検査による偶発症の有無"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P509000000000011
    * ^short = "健診項目情報 肺がん検診の精密検査による偶発症の有無"

* entry[9P500000000000011]
  * ^short = "検査結果情報エントリ 肺がん検診の過去の受診歴"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P500000000000011
    * ^short = "健診項目情報 肺がん検診の過去の受診歴"

* entry[9P501000000000011]
  * ^short = "検査結果情報エントリ 肺がん検診時の肺がんに係る症状の有無"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P501000000000011
    * ^short = "健診項目情報 肺がん検診時の肺がんに係る症状の有無"

* entry[9N737000000000012]
  * ^short = "検査結果情報エントリ 肺がん検診時の喫煙指数"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9N737000000000012
    * ^short = "健診項目情報 肺がん検診時の喫煙指数"

