// Profile 文書構成情報（処方箋・分割処方でないもの）
Profile:        JP_Patient_eMunicipalCheckup
Parent:         JP_Patient_CUPIX
Id:             JP-Patient-eMunicipalCheckup
//Title:          "自治体検診結果報告書　Patientリソース　受診者情報"
Description:    "自治体検診結果報告書　Patientリソース　受診者情報"
* ^url = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Patient_eMunicipalCheckup"
* ^status = #draft
* obeys emc-pat-3

* extension contains
    JP_Age_At_Event named ageAtEvent 0..1 MS

* extension[ageAtEvent]
  * ^short = "受診時年齢を表現する拡張「JP_Age_At_Event」を使用し、受診時年齢を記述する。"
  * url = $age_at_event (exactly)
    * ^short = "拡張を識別するURL。固定値。"

* identifier 1..1 MS
  * ^short = "社員番号や健診実施機関受診者整理番号"
 // TODO "urn:oid: 1.2.392.200119.6.102.1[保険医療機関コード(10 桁)]"
 //末尾の1[保険医療機関コ ード(10 桁)]は、保険医療機関コード(10 桁)の先頭に1をつけた11桁とした文字列。
  * system 1..1
    * ^short = "末尾の1[保険医療機関コード(10 桁)]は、保険医療機関コード(10 桁)の先頭に1をつけた11桁とした文字列。urn:oid: 1.2.392.200119.6.102.1[保険医療機関コード(10 桁)]"
  * value 1..1
  * obeys emc-pat-1

/*
* name contains ABC 0..1 MS
* name[ABC]
  * ^short = "受診者氏名(半角アルファベット）"
  * extension[NameRepresentationUse].valueCode	 = #ABC (exactly)
    * ^short = "半角アルファベット文字表記であることを示す固定値。"
  * use 1..1 MS
  * use = #official (exactly)
    * ^short = "氏名が正式名称であることを明示するために、NameUseバリューセット（http://hl7.org/fhir/ValueSet/name-use）より「official」を必須で設定する。"
  * text 1..1 MS
    * ^short = "半角アルファベット文字氏名全体の文字列をtext要素に入れる。氏名の姓と名が分離できない場合は本要素のみを使用する。"
  * family 0..1 MS
    * ^short = "半角アルファベット文字氏名の姓。"
  * given 0..* MS
    * ^short = "半角アルファベット文字氏名の名。ミドルネームがある場合には、ミドルネーム、名の順で繰り返す。"
*/

* telecom 0..1 MS
  * ^short = "受診者連絡先電話番号"
  * system 1..1 MS
    * ^short = "電話番号の連絡先種別を表すコード体系を識別するコード。ContactPointSystemから指定"
  * value 1..1 MS
    * ^short = "電話番号文字列。見易さのためにハイフンを入れてもよい。"
  * use 1..1 MS
    * ^short = "電話番号種別を表すコード。ContactPointUseから指定。"

* birthDate 1..1 MS

// 各種制約
 // TODO "urn:oid:1.2.392.200119.6.102.1[保険医療機関コード(10 桁)]"
 //末尾の1[保険医療機関コ ード(10 桁)]は、保険医療機関コード(10 桁)の先頭に1をつけた11桁とした文字列。
Invariant: emc-pat-1
Description: "Patient.identifier.system の値はurn:oid:1.2.392.200119.6.102.1[保険医療機関コード(10 桁)]"
Expression: "system.startsWith('urn:oid:1.2.392.200119.6.102.1') and system.length() = 40"
Severity: #warning

Invariant: emc-pat-2
Description: "Patient.address の取りうる値を制約する"
Expression: "text.exists() or (state.exists() and city.exists() and line.exists() and postalCode.exists() and country = 'JP')"
Severity: #warning

Invariant: emc-pat-3
Description: "カナ、漢字、ローマ字のいずれかが必須"
Expression: "name.count() > 0"
Severity: #error
