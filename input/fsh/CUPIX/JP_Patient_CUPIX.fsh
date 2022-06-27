Profile: JP_Patient_CUPIX
Parent: JP_Patient
Id: JP-Patient-CUPIX
Description: "健診・検診結果報告書　Patientリソース共通定義"
* ^url = "http://jpfhir.jp/fhir/CUPIX/StructureDefinition/JP-Patient-CUPIX"

* ^status = #draft
* . ^short = "Information about an individual or animal receiving health care services　医療サービスを受けている個人または動物に関する情報"
* . ^definition = "Demographics and other administrative information about an individual or animal receiving care or other health-related services.\r\n\r\nケアまたはその他の健康関連サービスを受けている個人または動物に関する人口統計およびその他の管理情報。"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension[religion] 0..0
* extension[birthPlace] 0..0
* extension[race] 0..0

* identifier 1..1 MS
  * ^short = "社員番号や健診実施機関受診者整理番号"
* identifier ^definition = "社員番号や健診実施機関受診者整理番号　\r\n\r\nこの患者の識別子。"
* identifier.use ^comment = "Applications can assume that an identifier is permanent unless it explicitly says that it is temporary.\r\n\r\nIDの種別をValueSet(IdentifierUse)より選択する。\r\n\r\nusual　　一般\r\n\r\nofficial　公式（マイナンバーなど、最も信頼できると見なされる場合に使用）\r\n\r\ntemp　　一時的\r\n\r\nsecondary　二次利用\r\n\r\nold　過去の識別子"
* identifier.type ^comment = "This element deals only with general categories of identifiers.  It SHOULD not be used for codes that correspond 1..1 with the Identifier.system. Some identifiers may fall into multiple categories due to common usage.   Where the system is known, a type is unnecessary because the type is always part of the system definition. However systems often need to handle identifiers where the system is not known. There is not a 1:1 relationship between type and system, since many different systems have the same type.\r\n\r\nIDの種別をValueSet(Identifier Type Codes)より選択する。\r\n\r\nDL 運転免許証番号\r\n\r\nPPN パスポート番号\r\n\r\nBRN 血統登録番号\r\n\r\nMR カルテ番号\r\n\r\nなど"
* identifier.system 1..1
* identifier.system ^comment = "Identifier.system is always case sensitive.\r\n\r\nIDの名前空間を表す。\r\n医療機関固有の患者ID（カルテNo）を表現する場合、system には、患者IDの発行者である医療機関を識別するuriを指定する。\r\n\r\n医療機関を識別するために使用するOID について、もし適切なOID が存在しない場合で、その医療施設が保険医療機関の場合、特定健診・特定保健指導機関のルールに従い以下のルールで設定してもよい。\r\n\r\n医療施設が固有のOID を持っている場合は、そのOID を指定する。医療施設が保険医療機関の場合、特定健診・特定保健指導機関の医療機関コードの OID「1.2.392.200119.6.102.」の末尾に「[1]＋医療機関コード（10 桁）」を指定する。医療機関コードを持たない場合、「[9]＋当該施設の電話番号下 9 桁」を医療機関コードとする。\r\n\r\n例：医療機関コード「1312345670」の場合「1.2.392.200119.6.102.11312345670」\r\n\r\nPatient.identifier.system は、uri 型のため、実際にインスタンスに設定される値は、上記の例であれば urn:oid:1.2.392.200119.6.102.11312345670 とする。"
* identifier.value 1..1
* identifier.value ^comment = "If the value is a full URI, then the system SHALL be urn:ietf:rfc:3986.  The value's primary purpose is computational mapping.  As a result, it may be normalized for comparison purposes (e.g. removing non-significant whitespace, dashes, etc.)  A value formatted for human display can be conveyed using the [Rendered Value extension](extension-rendered-value.html). Identifier.value is to be treated as case sensitive unless knowledge of the Identifier.system allows the processer to be confident that non-case-sensitive processing is safe.\r\n\r\n患者を一意的に識別するID(例えば、患者IDやカルテ番号など)を設定。"
* identifier.period ^comment = "A Period specifies a range of time; the context of use will specify whether the entire range applies (e.g. \"the patient was an inpatient of the hospital for this time range\") or one value from the range applies (e.g. \"give to the patient between these two times\").\n\nPeriod is not used for a duration (a measure of elapsed time). See [Duration](datatypes.html#Duration).\r\n\r\nIDが使われていた/使われている期間。"
* identifier.assigner ^comment = "The Identifier.assigner may omit the .reference element and only contain a .display element reflecting the name or other textual information about the assigning organization.\r\n\r\nIDを発行した組織（テキストのみでも可）"

* gender 1..1 MS
  * ^short = "患者の性別。'male'または'female'。"

* birthDate 1..1 MS
  * ^short = "受診者の生年月日。ISO8601に準拠して'yyyy-mm-dd'形式"

* address 0..1 MS
  * ^short = "受診者の住所"
  * text 0..1 MS
    * ^short = "住所文字列"
  * postalCode 1..1 MS
    * ^short = "郵便番号"
  * country 0..1 MS
    * ^short = "住所地が国内の場合「JP」固定"


