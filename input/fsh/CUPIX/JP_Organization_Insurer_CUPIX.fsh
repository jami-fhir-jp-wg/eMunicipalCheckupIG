Profile:        JP_Organization_Insurer_CUPIX
Parent:         JP_Organization
Id:             JP-Organization-Insurer-CUPIX
Description:    "健診・検診結果報告書　Organizationリソース保険者共通定義"
* ^url = "http://jpfhir.jp/fhir/CUPIX/StructureDefinition/JP-Organization-Insurer-CUPIX"

* ^status = #draft

* text 0..1 MS
  * ^short = "本リソースをテキストで表現したものを入れてもよい。"
  * status 1..1 MS
  * status = $narrative_cs#generated
    * ^short = "固定値。テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"
  * div 1..1 MS

* identifier[InsurerNumber] 1..1 MS
  * obeys emc-org-i1
  * ^short = "保険者番号8桁"
  * system 1..1 MS
  * system = "urn:oid:1.2.392.100495.20.3.61" (exactly)
    * ^short = "保険者番号8桁の名前空間を 識別するURL。固定値。"
  * value	1..1 MS
    * ^short = "保険者番号8桁"
* identifier[MedicalInstitutionCode] 0..0

* type 1..1 MS
  * ^short = "施設種別"
  * coding from http://hl7.org/fhir/ValueSet/organization-type
    * system 1..1
    * system = "http://terminology.hl7.org/CodeSystem/organization-type" (exactly)
      * ^short = "施設種別コードのコード体系を識別するURI。固定値。"
    * code = #ins
      * ^short = "バリューセットOrganizationType(http://hl7.org/fhir/ValueSet/organization-type) から、保険者を表すコードを指定。固定値。"

* name 1..1 MS
  * ^short = "保険者名称"

// 各種制約
Invariant: emc-org-i1
Description: "insurer number should have 8 digits.(保険者番号8桁)"
Expression: "value.length() = 8"
Severity: #warning





