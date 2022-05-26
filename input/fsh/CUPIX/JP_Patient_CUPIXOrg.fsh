Profile: JP_Patient_CUPIXOrg
Parent: JP_Patient
Id: JP-Patient-CUPIXOrg
Description: "TBD"
* ^url = "http://jpfhir.jp/fhir/CUPIX/StructureDefinition/JP-Patient-CUPIXOrg"

* ^status = #draft

* text 0..1 MS
  * ^short = "本リソースをテキストで表現したものを入れてもよい。内容を省略しても構わない。このデータは人がこのリソースの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。 この内容と以降の構造化されたデータとの内容が不一致の場合には、この要素の内容は無視される。（本文書のすべてのリソースで同様とする）"
  * status 1..1 MS
  * status = #generated
    * ^short = "固定値。テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"
  * div 1..1 MS

* identifier 1..1 MS
  * ^short = "社員番号や健診実施機関受診者整理番号"
    * system 1..1
    * value 1..1

* name contains
 IDE  0..1 MS and
 SYL  0..1 MS
 
* name[IDE]
  * extension[NameRepresentationUse].valueCode	= #IDE
  * use 1..1 MS
  * use = #official (exactly)
    * ^short = "氏名が正式名称であることを明示するために、NameUseバリューセット（http://hl7.org/fhir/ValueSet/name-use）より「official」を必須で設定する。"
  * text 1..1 MS
    * ^short = "氏名全体の文字列をtext要素に入れる。氏名の姓と名が分離できない場合は本要素のみを使用する。"
  * family 0..1 MS
    * ^short = "氏名の姓。"
  * given 0..* MS
    * ^short = "氏名の名。ミドルネームがある場合には、ミドルネーム、名の順で繰り返す。"

* name[SYL]
  * ^short = "よみ（カタカナ）"
  * extension[NameRepresentationUse].valueCode	 = #SYL
    * ^short = "カナ表記であることを示す固定値。"
  * use 1..1 MS
  * use = #official (exactly)
    * ^short = "氏名が正式名称であることを明示するために、NameUseバリューセット（http://hl7.org/fhir/ValueSet/name-use）より「official」を必須で設定する。"
  * text 1..1 MS
    * ^short = "カナ氏名全体の文字列をtext要素に入れる。氏名の姓と名が分離できない場合は本要素のみを使用する。カタカナはJIS X 0208のカタカナ（全角カナ）みとし、JIS X 0201のカタカナ（半角カナ）は使用してはならない。"
  * family 0..1 MS
    * ^short = "カナ氏名の姓。"
  * given 0..* MS
    * ^short = "カナ氏名の名。ミドルネームがある場合には、ミドルネーム、名の順で繰り返す。"

/*
* name[ABC]
  * extension[NameRepresentationUse].valueCode	= #ABC
  * use 1..1 MS
  * use = #official(exactly)
    * ^short = "氏名が正式名称であることを明示するために、NameUseバリューセット（http://hl7.org/fhir/ValueSet/name-use）より「official」を必須で設定する。"
  * text 1..1 MS
    * ^short = "氏名全体の文字列をtext要素に入れる。氏名の姓と名が分離できない場合は本要素のみを使用する。"
  * family 0..1 MS
    * ^short = "氏名の姓。"
  * given 0..* MS
    * ^short = "氏名の名。ミドルネームがある場合には、ミドルネーム、名の順で繰り返す。"
*/

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


