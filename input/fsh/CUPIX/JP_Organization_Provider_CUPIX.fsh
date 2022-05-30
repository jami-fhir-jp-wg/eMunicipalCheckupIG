Profile:        JP_Organization_Provider_CUPIX
Parent:         JP_Organization
Id:             JP-Organization-Provider-CUPIX
Description:    "健診・検診結果報告書　Organizationリソース医療機関／健診機関共通定義"
* ^url = "http://jpfhir.jp/fhir/CUPIX/StructureDefinition/JP-Organization-Provider-CUPIX"

* ^status = #draft

* text 0..1 MS
  * ^short = "本リソースをテキストで表現したものを入れてもよい。内容を省略しても構わない。このデータは人がこのリソースの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。 この内容と以降の構造化されたデータとの内容が不一致の場合には、この要素の内容は無視される。（本文書のすべてのリソースで同様とする）"
  * status 1..1 MS
  * status = $narrative_cs#generated
    * ^short = "固定値。テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"
  * div 1..1

* identifier contains MedicalInstitutionCode2 1..1 MS
* identifier[MedicalInstitutionCode2]
  * obeys emc-org-p1
  * ^short = "保険医療機関番号10桁。"
  * system 1..1 MS
  * system = "urn:oid:1.2.392.200119.6.102" (exactly)
//  * system = "http://jpfhir.jp/fhir/Common/CodeSystem/insurance-medical-institution-no" (exactly)
    * ^short = "保険医療機関番号10桁の名前空間を識別するURL。固定値。"
  * value 1..1 MS
    * ^short = "保険医療機関番号10桁"
* identifier[MedicalInstitutionCode] 0..0
* identifier[InsurerNumber] 0..0

* type 1..1 MS
  * ^short = "施設種別"
  * coding from http://hl7.org/fhir/ValueSet/organization-type
    * system 1..1 MS
    * system = "http://terminology.hl7.org/CodeSystem/organization-type" (exactly)
      * ^short = "施設種別を表すコード体系を識別するURI。固定値。"
    * code 1..1 MS
    * code = http://terminology.hl7.org/CodeSystem/organization-type#prov
      * ^short = "バリューセットOrganizationType(http://hl7.org/fhir/ValueSet/organization-type) から、医療機関を表すコードを指定。固定値。"

* name 1..1 MS
  * ^short = "医療機関名称"

* telecom 0..1 MS
  * ^short = "医療機関電話番号"
  * system 1..1 MS
  * system = #phone
    * ^short = "固定値。"
  * value 1..1 MS

* address 1..1 MS
  * ^short = "医療機関住所"
  * text 1..1 MS
  * postalCode 1..1 MS
    * ^short = "医療機関の郵便番号。"
  * country 1..1 MS
    * ^short = "住所が国内の場合「JP」固定。"

// 各種制約
Invariant: emc-org-p1
Description: "insurance medical institution number should have 10 digits.(保険医療機関番号10桁)"
Expression: "value.length() = 10"
Severity: #warning

