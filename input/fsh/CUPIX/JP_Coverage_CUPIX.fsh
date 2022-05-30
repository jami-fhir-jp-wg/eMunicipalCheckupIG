Profile: JP_Coverage_CUPIX
Parent: JP_Coverage
Id: JP-Coverage-CUPIX
Description: "健診・検診結果報告書　Coverageリソース共通定義"
* ^url = "http://jpfhir.jp/fhir/CUPIX/StructureDefinition/JP-Coverage-CUPIX"
* ^status = #draft
* obeys emc-cov-2

* text 0..1
  * ^short = "本リソースをテキストで表現したものを入れてもよい。"
  * status 1..1 MS
  * status = $narrative_cs#generated
    * ^short = "固定値。テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"
  * div 1..1 MS

* extension[InsuredPersonSymbol]
  * ^short = "被保険者証記号を表す拡張「InsuredPersonSymbol」。保険種別が「1：医保」、「2：国保」の場合に記録する。被保険者証記号がない場合は、本拡張要素自体出現しない"
  * url 1..1 MS
    * ^short = "拡張を識別するURL。"
  * valueString 1..1 MS
    * ^short = "被保険者証記号。記録形式は「オンライン又は光ng ディスク等による請求に係る記録条件仕様（医科用）」に従う"

* extension[InsuredPersonNumber]
  * ^short = "被保険者証番号を表す拡張 「InsuredPersonNumber」。保険種別が「1：医保」、 「2：国保」、「7：後期高齢者」の場合に記録する。それ以外の場合は、本拡張要素自体出現しな	い。"
  * url 1..1 MS
    * ^short = "拡張を識別するURL。"
  * valueString MS
    * ^short = "被保険者証番号。記録形式は「オンライン又は光 ディスク等による請求に係る記録条件仕様（医科ディスク等による請求に係る記録条件仕様（医科用）」に従う。値は例示。用）」に従う。"

* extension[InsuredPersonSubNumber]
  * obeys emc-cov-1
  * ^short = "被保険者証番号の枝番を表す拡張「InsuredPersonSubNumber」"
  * url 1..1 MS
    * ^short = "拡張を識別するURL。"
  * valueString MS
    * ^short = "被保険者証記号・番号に対する個人単位被保険 者番号（枝番）。「オンライン又は光ディスク等による請求に係る記録条件仕様（医科用）」に従い、桁数が2桁に満たない場合は、先頭に'0'を記録し2桁で記録する。後続のdependent 要素にも同一の情報を記述すること。"

* status 1..1 MS
* status = #active
  * ^short = "固定値。処方箋発行時に真に有効な保険かどうかは意味しない。"

* type 1..1 MS
  * ^short = "保険種別コード"
  * coding 1..1 MS
    * system 1..1 MS
    * system = "urn:oid:1.2.392.100495.20.2.61"
      * ^short = "保険種別コード体系を識別するURI"
    * code 1..1 MS
      * ^short = "保険種別コード"

* beneficiary 1..1 MS
* beneficiary only Reference(JP_Patient_CUPIX)
  * ^short = "この保険で給付される受診者情報（Patientリソース）参照。"

* dependent MS
  * ^short = "被保険者証記号・番号に対する個人単位被保険者番号（枝番）。「オンライン又は光ディスク等による請求に係る記録条件仕様（医科用）」に従い、桁数が2桁に満たない場合は、先頭に"0"を記録し2桁で記録する。被保険者番号の枝番を記述する拡張要素にも同一の値を記述すること。"

* relationship 1..1 MS
* relationship from $subscriber-relationship-vs (required)
  * ^short = "給付される患者と被保険者との関係（本人、または被扶養者）。被保険者区分コード表より「1：被保険者」、または、「2：被扶養者」を指定する。"
  * coding 1..1 MS
  * coding from $subscriber-relationship-vs (required)
//    * extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-reference"
//    * extension[=].valueUri = $subscriber-relationship-vs
    * system 1..1 MS
      * ^short = "被保険者区分コードのコード体系を識別するURI。固定値。"
    * code 1..1 MS
      * ^short = "被保険者区分コード"
    * code from $subscriber-relationship-vs (required)
    * display 0..1 MS

/*
    "coding": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/subscriber-relationship",
        "code": "1",
        "display": "被保険者本人,
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/valueset-reference", 
          "valueUri" : "urn:oid:1.2.392.100495.20.2.62" 
        }]
      }
    ]
*/


* period 1..1 MS
  * ^short = "保険証の有効期間。保険証に明示的に記載がある場合、かつ、医療機関がその情報を把握している場合のみ記録する。"
  * start 0..1 MS
    * ^short = "保険証の有効期間の開始日。資格取得日。ISO8601に準拠してyyyy-mm-dd形式で指定する。"
  * end 0..1 MS
    * ^short = "保険証の有効期間の終了日。資格喪失日。ISO8601に準拠してyyyy-mm-dd形式で指定する。"

* payor 1..1 MS
  * ^short = "1..1 Reference(Organizati 費用負担者（医療保険の場合は保険者）情報。保険種別が「6：自費」の場合、患者本人を表すPatientリソースへの参照。それ 以外の保険種別は、費用負担者を表すOrganizationリソースへの参照"
//payorの具体的なReference先については、多様性があるため、共通項として定められない。
  * reference 1..1 MS
    * ^short = "PatientリソースまたはOrganizationリソースのfullUrl要素に指定されるUUIDを指定。"

// 各種制約
Invariant: emc-cov-1
Description: "sub-number of insured card number should have 2 digits.(被保険者証番号の枝番は、桁数が2桁に満たない場合は先頭に'0'を記録し、2桁で記録する。)"
Expression: "valueString.length() = 2"
Severity: #warning

// 有効にするとサンプルインスタンスがすべてNGになるので保留
Invariant: emc-cov-2
Description: "dependent should have the same value with the sub-number extension.(被保険者証番号の枝番を後続のdependent要素にも同一の情報を記述する。)"
Expression: "extension('http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Coverage_InsuredPersonSubNumber').valueString = dependent"
Severity: #warning
