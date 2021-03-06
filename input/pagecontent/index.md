  <style type="text/css">

table {
  border: solid 1px black;
  border-collapse: collapse;
}

table td {
  border: solid 1px black;

}
table th {
  border: solid 1px black;

}
    h1 {
      counter-reset: chapter;
    }

    h2 {
      counter-reset: sub-chapter;
    }

    h3 {
      counter-reset: section;
    }

    h4 {
      counter-reset: sub-section;
    }

    h5 {
      counter-reset: composite;
    }

    h6 {
      counter-reset: sub-composite;
    }

    h1:before {
      color: black;
      counter-increment: bchapter;
      content:  " ";
    }

    h2:before {
      color: black;
      counter-increment: chapter;
      content: counter(chapter) ". ";
    }

    h3:before {
      color: black;
      counter-increment: sub-chapter;
      content: counter(chapter) "."counter(sub-chapter) ". ";
    }


    h4:before {
      color: black;
      counter-increment: section;
      content: counter(chapter) "."counter(sub-chapter) "."counter(section) " ";
    }

    h5:before {
      color: black;
      counter-increment: sub-section;
      content: counter(chapter) "."counter(sub-chapter) "."counter(section) "."counter(sub-section) " ";
    }

    h6:before {
      color: black;
      counter-increment: sub-sub-section;
      content: "　　"counter(sub-sub-section) "）";
    }
</style>

厚生労働科学研究費補助金事業
「検診情報と栄養情報の標準的なデータ項目・様式・交換方式をFHIR準拠仕様として開発する研究」研究班
2022年3月


# **自治体検診結果報告書HL7 FHIR記述仕様 第1版**

### 本文書の位置づけと適用範囲について
この仕様書は、HL7 FHIR（以下、単に「FHIR 」という）に準拠した自治体検診の検診結果報告書（以下、単に「検診結果」または「検診結果報告書」という）の記述仕様の文書である。

令和2年度厚生労働行政推進調査事業費補助金 令和2年度厚生労働科学特別研究事業「診療情報提供書, 退院時サマリー等の電子化医療文書の相互運用性確保のための標準規格の開発研究」 (課題番号20ⅭＡ2013）（以下、単に「R2厚生科研研究班」という）の成果物を、その作成者らが編集したものである。

以下では本仕様書という。

本仕様書は、「日本医療情報学会　健康診断結果報告書HL7 FHIR記述仕様　第1版」（以下、FHIR健診結果報告書規格と呼ぶ）を参考にして、 FHIRに準拠した記述仕様として作成されている。

また、本仕様書の作成にあたって、ベースとしたFHIR 仕様には、FHIR R4に修正を加えたVer. 4.0.1(Oct-30, 2019)を採用しているが、それ自体がNormative（標準） として確定した仕様となっていないものを多く含んでいる。そのため、元となるFHIR仕様が変更されることがあるが、本仕様書の明示的な改版時まではその変更の影響を受けないものとする。

本仕様書が想定する適用範囲は、

* 肺がん検診（一次検診、精密検査）
* 乳がん検診（一次検診、精密検査）
* 胃がん検診（一次検診、精密検査）
* 子宮頸がん検診（一次検診、精密検査）
* 大腸がん検診（一次検診、精密検査）
* 肝炎検診（一次検診、精密検査）
* 骨粗鬆症検診（一次検診、精密検査）
* 歯周疾患（一次検診、精密検査）

における検診結果の提供である。

本仕様書には検体検査、生理検査、波形情報、放射線等の画像情報など付帯情報を添付する際の規格が含まれているが、カルテあるいは各種サマリ等の内容に関する規格は含まれていない。また本仕様書が定める健康診断結果報告書の提供手段、管理方法、利用法については別規格などに委ね、本仕様書の範囲ではない。

また、それぞれの検診に対して個別に詳細規格が定められている場合はそちらを優先する。

## 参照仕様および用語
### 参照仕様

* HL7FHIR R4 Ver.4.0.1 [[http://hl7.org/fhir/index.html](http://hl7.org/fhir/index.html)]　 本仕様書ではFHIR基底仕様という。
* HL7 FHIR JP CORE 実装ガイド \<Draft Ver.1\> [[https://jpfhir.jp/jpcoreV1/](https://jpfhir.jp/jpcoreV1/)]
* 日本医療情報学会　健康診断結果報告書FHIR記述仕様 第1版
[[https://std.jpfhir.jp/wp-content/uploads/std/eCheckup.pdf](https://std.jpfhir.jp/wp-content/uploads/std/eCheckup.pdf)]<br>本仕様書では、FHIR健診結果報告書規格と呼ぶ。
* 自治体検診に係るPHRへの対応を踏まえた標準様式　検診情報ファイル仕様　1.1版<br>
「自治体検診の電子的標準様式に使用するOID 表 1.1版」 <br>
「XML 用自治体検診項目情報 1.2 版」<br>
[[https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/kenkou_iryou/kenkou/seikatsu/index.html](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/kenkou_iryou/kenkou/seikatsu/index.html)]
<br>本仕様書では、CDA自治体検診結果報告書規格と呼ぶ。

### 用語と定義
#### FHIRリソース
HL7 FHIRにおいて、「患者」や「医師」、「検査」、「診察」といった、ヘルスケアに関連する「ビジネスオブジェクト」のデータ要素、制約、および関係を定義した情報モデルの集合を「リソース」と呼ぶ。リソースは、FHIRで定義される全ての情報交換の構成要素として利用される。

#### 報告・提出・提供
FHIR健診結果報告書規格に準じて、法律によって報告が義務付けられている報告を「提出」、任意に個人の要求により報告するものを「提供」とした。両者を区別しない場合は「報告」とした。

### 記号及び略語

* HL7 : Health Level Seven
* CDA R2：Clinical Document Architecture Release 2
* FHIR : Fast Healthcare Interoperability Resources
* DICOM : Digital Imaging and Communications in Medicine
* MFER : Medical waveform Format Encoding Rules

## 概要
本仕様書は、自治体検診の検診結果報告書を電子的に記述するため、HL7 FHIR に基づいて定めるものである。

### 文書構造
文書構造は、CDA自治体検診結果報告書規格と相互運用性を持たせるために、FHIR Document を利用し以下の構造とする。図 *1*に文書構造の概要を示す。

受診者や作成者など健診（検診）情報管理を記述する文書ヘッダに相当する部分、肺がん健診をはじめとする各種制度に基づく健診（検診）結果を記述する検査結果セクションと問診結果セクション、及び、添付書類を外部ファイルとして管理する添付書類セクションからなる。

検査結果セクションと問診結果セクションは、検診結果の作成者（情報ソース）が受診者本人かどうかによって使い分ける。つまり、受診者本人より作成されるものを問診結果セクションに格納し、それ以外の健診項目を検査結果セクションに格納する。

添付書類セクションは、DICOMファイル、波形ファイル、JPEG等の画像ファイル、PDFファイル、XMLファイル等を外部ファイルとし、そのファイルへのリンク情報やハッシュ値からなる。

また、検診結果報告書の全ての内容をFHIRリソースで構造的に記述する（本仕様では「FHIR構造パターン」という）のではなく、CDA自治体検診結果報告書規格に従うCDA R2形式のXMLファイルを、本文書の添付書類としてFHIRリソース中に直接含むこと（本仕様では「CDA添付パターン」という）も可能にする。その場合は、検査結果セクション、問診結果セクションは使用せず、添付書類セクションのみが使用される。図 *2* に、CDA R2形式のXMLファイルをそのまま添付書類セクションに含む場合の文書構造の概要を示す。

<img src="fig1.png" width="60%"><br clear="all">
図 1 文書構造の概要（FHIRリソースで構造化する場合）

<img src="fig2.png" width="60%"><br clear="all">
図 2 文書構造の概要（CDA R2形式のXMLファイルを添付して使用する場合）

### 健康診断結果報告書の識別
#### <a id="report-type"></a>報告区分コード
FHIR **Composition**リソースのcategory要素に指定する報告区分コードは、以下とする。本区分コードは、ファイルを作成し報告する「報告事由」の意味で使用する。
* 51：肺がん検診
* 52：乳がん検診
* 53：胃がん検診
* 54：子宮頸がん検診
* 55：大腸がん検診
* 56：肝炎検診
* 57：骨粗鬆症検診
* 58：歯周疾患検診

報告区分コードのコード体系を示す Coding.system 要素には、FHIR健診結果報告書規格で定義された「http://jpfhir.jp/fhir/eCheckup/CodeSystem/checkup-report-category」を使用する。

#### 健診プログラムサービスコード
FHIR **Composition**リソースの Composition.event.codeは、健診プログラムサービスコード（検診区分）とし、検診実施時にどのような区分として実施されたかを示す。以下のいずれかの目的で実施された検診によってデータが得られたかについて記述する。
* 1：一次検診
* 2：二次検診
* 3:一次検診と精密検査の同時実施

コード体系を表すCoding.systemに関しては、”http://jpfhir.jp/fhir/eCheckup/CodeSystem/checkup-type-code”を使用する。

#### 自治体検診の受診方法

FHIR **Encounter**リソースの Encounter.serviceEvent.codeは、自治体検診の受診方法を識別するコードであり、以下のいずれかのコードを指定する。
* 1：個別受診
* 2：集団受診

コード体系を表すCoding.systemに関しては、“http://jpfhir.jp/fhir/eCheckup/CodeSystem/checkup-encounter-type” を使用する。

#### 健康診断結果記述セクション識別コード
本仕様書に準拠する自治体検診結果報告書は、以下のセクションから構成される。
* 01910：検査結果セクション
* 01920：問診結果セクション
* 01995：添付書類セクション

CDA自治体検診結果報告書規格とはセクションの使用方法が異なることに注意する。検査結果セクションと問診結果セクションの使い分けは、2.1「文書構造」で説明した通り、健診受診者本人が作成（回答）した結果か否かで決定される。コード体系を表すCoding.systemに関しては、"http://jpfhir.jp/fhir/eCheckup/CodeSystem/section-code" を使用する。

#### ヘッダ部報告区分コードとボディ部セクション識別コードとの関係
本仕様書は、健康増進法に基づく自治体検診の結果を報告する場合に使用することができる。

自治体検診は、同日に複数種類の検診を実施することも多く、CDA自治体検診結果報告書規格では、肺がん検診や胃がん検診など検診の種類ごとにCDAセクションを作成し、一つのドキュメントに複数の検診を記録することが可能となっている。また、各検診の一次検診と精密検査についても異なるセクションに分けて記録する。

本仕様書では、ドキュメントの二次利用における利便性を考慮し、2.2.4「健康診断結果記述セクション識別コード」で識別される3つのセクションを、全ての検診で共通に使用するものとし、同日に複数の検診を実施したとしても、一検診を一文書として作成する。検診の種類の識別は、**Composition**リソースの.category要素に指定される報告区分コードを使用する。

一次検診と精密検査は、**Composition**リソースのevent.code 要素に記録される検診区分によって識別する。一次検診と精密検査を異なる日に実施した場合には、検診区分に「1:一次検診」または「2:精密検査」を指定し、実施日ごとに一文書として記録する。同じ種類の検診の一次検診と精密検査を同日に同時実施した場合は、検診区分に「3:一次検診と精密検査の同時実施」を指定し、一つの文書に両方の検診結果を含めることができる。

## 記述規格
### 自治体検診結果報告書FHIR記述仕様の全体構成
#### FHIR Document
FHIR において、診療文書は、**Bundle**リソースを使用したFHIR Documentを使用して表現される。FHIR Documentは、**Bundle**リソースのtype要素値を"document"に設定した、**Bundle**リソースの種類の１つである。本文書では、一人の受診者に対する健康診断結果報告書を、FHIR Documentとして**Bundle**リソースにより記述する。
#### FHIR Documentの構成
FHIR Documentでは、entry要素内に resource要素を繰り返す基本構造をとり、最初のresourceは、**Composition**リソースであることとなっている。**Composition**リソースは、診療文書のヘッダ情報の位置付けとなり、この文書に含まれるリソース（情報単位）への参照を列挙し、いわば構成リソースの目次のような役割を果たす。

本仕様書で＜表 *1* Bundleリソースの記述仕様＞のような基本構造をとる。

＜[表1 Bundleリソースの記述仕様](tables.html#tbl-01)＞

この表は、JSON 形式風に記載したもので、コロン（：）の左側は要素名、その右の列が値に相当する。構成の骨格を見やすく記載するため、他の要素は省略していることに注意されたい。全体方針として、FHIR基底仕様において各リソースで定義されている任意に出現しうる要素で、本仕様書には記載されていない要素は、JSONインスタンス中に出現しても相互運用性は保証されず、受信側ではそのインスタンスまたはその要素の値の取り扱いは受信側の実装に依存する。

この表で示すように、documentタイプの**Bundle**リソースでは、管理的な情報を格納する要素として identifier, timestamp, signature などがあり、文書自体の内容情報を格納する要素としてひとつのentry要素がある。このentry要素の値として、複数のresource要素を含むブロックが繰り返される。各リソースは、他のリソースから参照する際に使用するUUID（一意となる値を自動発番する）を持つfullUrl要素を持つ。参照時には**Reference**型のreference要素に、このUUIDを指定する。なお、FHIRの基底仕様では、UUID以外でもユニークに表現されるuriによる表現が認められており、Bundle内の参照関係が正しく維持されていればuriによる表現も可能であるが、本仕様では、記述の多様性を排除してデータ受信側の実装を明確化、単純化するためと、Bundleから参照されるリソースをすべてBundleに内包するために、他の文書仕様と仕様を合わせ、柔軟性よりも参照方法をUUIDに限定することにしている。

JSON形式ではこのブロックは{ }でくくられた単位であり、 繰り返しは[ ] でくくられたリストとなる。

FHIR基底仕様では、documentタイプの**Bundle**には、system要素とvalue要素を持つ識別子を必須で指定することが要求されている。そのため、Bundle.identifier要素には、この**Bundle**リソースを一意に識別するために生成されたUUIDを指定する。identifierのsystem要素には、“urn:ietf:rfc:3986”を指定する。

entryの最初のresource は先に述べたように、構成リソース一覧目次を表す**Composition**リソースである。

２つめのリソース以降に、**Composition**リソースから参照される検診受診者を表す **Patient**リソース、報告書の作成機関情報、および、作成者情報を表す、**PractitionerRole**リソース、**Organization**リソース、**Practitioner**リソース、検診実施情報を表す**Encounter**リソース、保険情報~~と受診券情報~~を表す**Coverage**リソース、及び、保険者を表す**Organization**リソースが出現する。

その後に、１健診項目がひとつの**Observation**リソースで記述され、それが健診項目の数だけ繰り返し出現する。

以下では、entryの値である各リソースについて記述する。

#### Compositionリソース
**Composition**リソースは、検診結果報告書FHIR documentにentry として格納される複数のリソースのうちの最初に出現するもので、この文書全体の構成目次に相当する情報や、セクションの構成を記述したものである。

検診結果報告書は、2.1「文書構造」で述べるように、検診項目、及び、問診項目を格納するセクション、及び、添付文書を格納する添付文書セクションから構成される。

＜[表2 Compositionリソースの記述仕様](tables.html#tbl-02)＞

##### identifier：任意項目（0..1）
FHIR健診結果報告書規格に従い、実装に応じた検診結果報告書IDを設定可能にする。

```JSON
"identifier": {
  "system": "urn:oid:1.2.392.100495.100.1.11311234567",
  "value": "12345"
},
```

設定にはFHIR健診結果報告書規格に従い、検診結果報告書ID体系OIDとして、施設OIDをルートとする検診結果報告書個別ID発行規定OIDを施設ごとに決め、その規定にそった検診結果報告書個別IDをvalue要素に記述する方法で行う。

##### category：必須項目（1..1）
検診結果報告書コードを規定する。coding.code要素には、「[報告区分コード](#report-type)」を用いる。coding.system要素は「http://jpfhir.jp/fhir/eCheckup/CodeSystem/checkup-report-category」となる。coding.version要素、coding.display要素は省略してもよい。

```JSON
"category": [
  {
    "coding": [
      {
        "system": "http://jpfhir.jp/fhir/eCheckup/CodeSystem/checkup-report-category",
        "code": "51",
        "display": "肺がん検診"
      }
    ]
  }
],
```

##### confidentialityCode：必須項目（1..1）
本文書では、バリューセット「V3 Value SetConfidentialityClassification」から、通常のアクセスを許可するとしてコード「N」を記述する。

```JSON
"confidentiality": "N",
```

##### language：任意項目（0..1）
使用する場合は日本語環境(ja)を規定する。

```JSON
"language": "ja",
```

##### versionNumber：必須項目（1..1）
拡張「clinicaldocument-versionNumber」を使用する。

本ドキュメントのバージョン番号を指定する。バージョン1.0の場合は記述の省略を認めるが、それ以外のバージョンの場合は記述を必須とする。バージョン毎の指定方法を以下に示す。

バージョン1.0のとき：
```JSON
"extension": [
  {
    "url": "http://hl7.org/fhir/StructureDefinition/composition-clinicaldocument-versionNumber",
    "valueString": "1.0"
  }
],
```

バージョン2.0のとき：
```JSON
"extension": [
  {
    "url": "http://hl7.org/fhir/StructureDefinition/composition-clinicaldocument-versionNumber",
    "valueString": "2.0"
  }
],
```

#### 受診者情報
受診者情報は**Patient**リソースで記述する。必須（1..1）項目である。１つの検診結果報告書に対して関連する受診者は1名と限定する。

＜[表3 Patientリソースの記述仕様](tables.html#tbl-03)＞<br>
＜[例1  Patientリソース記述例](Patient-example01.html)＞

##### 受診者ID（identifier）
検診実施機関受診者整理ID、所属機関受診者IDなど複数のIDの記述必要な場合、それぞれ医療機関等の識別とともにidentifier要素で記述する。本IDは複数件、目的毎に記述可能である。

例えば、検診実施機関における受診者整理番号を記述するためには、検診実施機関番号を含む検診実施機関OIDをsystem要素に指定し、value要素に受診者整理番号を記述する。

また、住民番号や受診券番号等など、自治体独自の管理番号も、identifier要素に記述する。identifier.system要素には、自治体独自の管理番号用に用意されたOIDを使用し、identifier.value要素に管理番号を記述する。自治体を表す**Organization**リソースは、自治体独自管理番号のidentifier.assigner要素から参照される。

CDA自治体検診結果報告書規格では、保険者番号や被保険者証記号・番号も受診者IDとして記載していたが、本仕様書では、保険情報を表す**Coverage**要素、及び、保険者を表す**Organization**要素にて表現することに注意する。

##### 住所
address要素に**Address**型で記述する。

住所情報は、①郵便番号部とそれ以降のテキスト部を記述するフラットな形式で記述する方法と、②国名、郵便番号部、都道府県部、市区郡部、区町村丁字番地等部をそれぞれ異なる要素で構造化して記述する構造化形式の２つの方法の記述が可能である。

① 郵便番号部とそれ以降のテキスト部で表記
* 郵便番号：postalCode要素に記述
* テキスト部： text要素に記述

②構造化形式による表記
* 都道府県：state要素に記述
* 市および都23区、郡：city要素に記述
* 区町村丁字番地等：line要素に記述
* 受診者住所の建物名等部：line要素の記述
* 郵便番号：postalCode要素に記述
* 日本：country要素に"JP"を記述

##### 電話番号（telecom）
telecom要素に**ContactPoint**型で記述する。system要素には、HL7 ContactPointSystemバリューセット（http://hl7.org/fhir/ValueSet/contact-point-system）からのコードを指定する。value要素にはダイヤル番号を記述する。電話番号には見やすいようにセパレータを含んでもよい。use要素には、HL7 ContactPointUseバリューセット（http://hl7.org/fhir/ValueSet/contact-point-user）から電話種別を記述する。

表 4 連絡先種別（ContactPointSystem）

| コード | 説明 | 
| --- | --- |
| phone | 電話 | 
| fax | ファックス | 
| email | 電子メールアドレス | 
| pager | ポケットベル番号 | 
| url | URLとして表現される連絡先（Webサイトやブログ、Skypeなど） | 
| sms | SMSメッセージの送信に使用できる連絡先 | 
| other | その他の連絡先 | 

表 5 電話種別（ContactPointUse）

| コード | 説明 | 
| --- | --- |
| home | 自宅 | 
| work | 勤務先 | 
| temp | 一時的な連絡先 | 
| old | 使用していない以前の連絡先 | 
| mobile | 携帯電話 | 

##### 受診者名
受診者の氏名は、①姓、名を区別しないフラットな形式と、②姓、名をそれぞれ異なる要素で構造化して記述する構造化形式の2種類の記述が可能である。
* フリガナ：全角カタカナで記述し、特定健診では必須項目である。

```JSON
"name": [
  {
    "extension": [
      {
        "url": "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation",
        "valueCode": "SYL"
      }
    ],
    "use": "official",
    "text": "ケンシン　タロウ",
    "family": "ケンシン",
    "given": [
      "タロウ"
    ]
  }
],
```

* 姓名：漢字、ひらがな、カタカナ、英数字を含めた正しい名前のつづりで記述された姓、名。

```JSON
"name": [
  {
    "extension": [
      {
        "url": "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation",
        "valueCode": "IDE"
      }
    ],
    "use": "official",
    "text": "健診　太郎",
    "family": "健診",
    "given": [
      "太郎"
    ]
  }
],
```

* 半角アルファベット文字：（オプション）一部機器などで日本語処理が弱いシステムや、外国人氏名の記述を支援するなどのために使用する。

```JSON
"name": [
  {
    "extension": [
      {
        "url": "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation",
        "valueCode": "ABC"
      }
    ],
    "use": "official",
    "text": "KENSHIN TARO",
    "family": "KENSHIN",
    "given": [
      "TARO"
    ]
  }
],
```

注：構造化形式において、姓名が分離できない場合は、姓の部分に記述し、ミドル名がある場合は名を繰り返して記述する。

漢字氏名、フリガナ氏名、半角アルファベット文字氏名のうち、特定の制度にもとづかない健診（検診）結果報告では、最低1種類のHuman Nameを使うこととする。特定の制度にもとづく健診（検診）結果報告では、その制度で必要とされている記述形式を必須とするが、他の形式も記述可能である。

##### 性別（gender）
HL7 AdministrativeGenderバリューセット（"http://hl7.org/fhir/ValueSet/administrative-gender"）からコードを指定する。

表 6 性別コード（AdministrativeGender）

| コード | 説明 | 
| --- | --- |
| male | 男性 | 
| female | 女性 | 
| unknown | 情報なし | 

##### 年齢
受診時年齢は、**Patient**リソースの拡張age-at-event を使用する。age要素には、Age型で年齢を記述する。event要素は、Reference型で、検診実施情報を表す**Encounter**リソースへの参照を記述する。

##### 生年月日（birthDate）
YYYY-MM-DDで記述する。西暦表示で記述する。和暦表示などを行う場合は、スタイルシート等により内部表現（西暦）から和暦変換を行う。

表 7 和暦西暦変換

| 元号 | 対応する西暦 | 
| --- | --- |
| 明治 | 1868年9月8日 ～ 1912年7月29日 | 
| 大正 | 1912年7月30日 ～ 1926年12月24日 | 
| 昭和 | 1926年12月25日 ～ 1989年1月7日 | 
| 平成 | 1989年1月8日 ～ 2019年4月30日 | 
| 令和 | 2019年5月1日 ～ | 

#### 提供先
FHIR健診結果報告書規格に準じ、拡張「informationRecipient」で表現し、提供先となる**Organization**リソースへの参照として記述する。

#### 検診結果報告書作成者
検診結果報告書を作成した施設は、**PractitionerRole**リソース、及び、そのリソースから参照される**Organization**リソースで表現する。さらに、結果報告書の作成者の記述が必要な場合には、**PractitionerRole**リソースから参照される**Practitioner**リソースを使用する。

本**Organization**リソースは、検診結果報告書のファイルを作成した機関を表すため、検診実施機関として取り扱ってはならない。検診実施機関に関する情報は、検診実施情報に記録する。

**PractitionerRole**リソースの記述仕様を示す。

＜[表8  PractitionerRoleリソースの記述仕様](tables.html#tbl-08)＞<br>
＜[例2 PractitionerRoleリソース記述例](PractitionerRole-example02.html)＞

**Organization**リソースの記述仕様を示す。

＜[表9 Organizationリソースの記述仕様](tables.html#tbl-09)＞<br>
＜[例3 Organizationリソース記述例](Organization-example03.html)＞

**Practitioner**リソースの記述仕様を示す。

＜[表10  Practitionerリソースの記述仕様](tables.html#tbl-10)＞<br>
＜[例4 Practitionerリソース記述例](Practitioner-example04.html)＞

#### 文書管理責任組織
本仕様書では「ファイル作成管理責任機関情報」とする。本記述は、提供側の責任者が、個人提供用検診結果報告書作成時に提供された先での責任者が明確な場合に記述する。

Component.custodian要素に、文書管理責任組織を表す**Organization**リソースへの参照として記述する。参照される**Organization**リソースの記述仕様は、3.1.6「検診結果報告書作成者」の記述仕様に準じる。

```JSON
"custodian": {
  "reference": "urn:uuid:d1fb6063-8f12-4c2c-922a-7b5e467c8407"
},
```

#### 保険者情報
受診者が検診実施時に属した保険者の情報を**Coverage**リソースで表現する。

保険証情報の記述仕様を＜表 *11*  Coverageリソース（保険証情報）の記述仕様＞に示す。CDA自治体検診結果報告書規格では、受診者を表すPatient.id に被保険者証記号・番号、及び、保険者番号を記述するが、本仕様書では、**Coverage**リソースと**Organization**リソースにより記述することに注意する。

＜[表11  Coverageリソース（保険証情報）の記述仕様](tables.html#tbl-11)＞<br>
＜[例5 Coverageリソース（保険者情報）記述例](Coverage-example05.html)＞

保険者は、**Coverage**リソースのpayorから参照される**Organization**リソースとして記録する。保険者情報の**Organization**リソースの記述仕様を示す。

＜[表12  Organizationリソース（保険者情報）の記述仕様](tables.html#tbl-12)＞<br>
＜[例6 Organizationリソース（保険者情報）記述例](Organization-example06.html)＞

#### 検診実施情報
検診実施情報として、実施した検診の種別や検診実施機関の情報を記録する。同一受診日に数の検診種類を受診した場合には、それぞれ別々の報告書（Bundleリソース）とするものとし、ひとつの報告書にまとめることは本仕様では行わない。

＜[表 13  Encounterリソースの記述仕様](tables.html#tbl-13)＞に、Encounterリソースの記述仕様を示す。Component.event要素については、3.1.3「Compositionリソースを参照。

検診実施情報を表すEncounterリソースでは、自治体検診固有の情報を表現するために、次の二つの拡張を使用する。

##### 一次検診受診年度
一次検診の受診年度を表す拡張「JP_Fiscal_Year_At_Primary_Checkup」を使用する。値はdate型で、受診年度を表す年を指定する。

##### 費用徴収区分
自治体検診の費用徴収区分を表す拡張「JP_Checkup_Fee_Collection」を使用する。値は文字列として記述する。

＜[表13  Encounterリソースの記述仕様](tables.html#tbl-13)＞<br>
＜[例7 Encounterリソース（健診実施情報）記述例](Encounter-example07.html)＞

#### その他情報
##### 転記者
自治体検診項目、及び、CDA自治体検診結果報告書規格には本項目は存在しないため、本仕様書では適用範囲外とする。

##### 認証者
FHIR規格では認証者（attester）を記述できるが、本文書では添付書類も含めて全て署名することを推奨しているため、本仕様書では適用範囲外とする。

### ボディ部定義
個人提供用健診結果報告書に関する諸記述は、記述項目ごとにFHIRドキュメント **Composition**リソースのComposition.secition要素に分けて記述する。

#### セクションの概要
ボディ部には、各種検診事業で定められた結果情報（検査結果および問診結果）、および、画像等の添付書類が含まれ、それぞれ**Composition**リソースのセクションとして表現される。

各セクションは、そのセクションの内容を人が解釈することを目的として構造化テキストとして記述するナラティブ（Composition.section.text）と、セクション内容を機械可読なデータとして記述するエントリ（Composition.section.entry）から構成される。

説明ブロックは、Composition.section要素内のtext要素にXHTMLタグを使って記述される。

一方、エントリ記述ブロックはComposition.section.entry要素の繰り返しで記述する。section要素は、セクションの種別を示すセクションコードを表すcode要素を、子要素として含まなければならない。各セクションのセクションコードを表 *14*に示す。

表 14 セクション一覧

| セクションコード | セクション名 | 説明 | 
| --- | --- | --- |
| 01910 | 検査結果セクション | 検診項目の検査結果を格納するセクション。検診項目とは、受診者本人が作成したものではない検診結果（検体検査結果や診察項目など）を格納する。 | 
| 01920 | 問診結果セクション | 問診項目の結果を格納するセクション。問診項目とは、受診者本人が作成した健診項目を意味する。 | 
| 01995 | 添付書類セクション | 検診結果報告書の添付文書（画像結果報告書、心電図波形、DICOM画像など）を格納するセクション。 | 

#### 検査・問診項目記述の為の基本要件
本項では、検診結果、及び、問診結果を記述するための基本要件を規定する。本項で規定された仕様は、検査結果セクションと問診結果セクションの両方に適用される。

##### セクション部仕様
検診結果や問診結果の情報は、それぞれ一つのセクションで表現され、人が解釈するためのナラティブと各検査項目に対応する機械可読表現である複数のentry要素を含む。セクションコードには前節の表に従い、検査結果セクションの場合には健診データCDAセクションコードのうち「01910」を指定する

##### テキスト部（ナラティブ）仕様
検査結果セクションの内容を人が解釈するための情報を記述する説明ブロックには、ul要素およびli要素を使用して、検査項目とその結果値を表現する。各検診項目に対して、1つのli要素が対応する。li要素のテキスト内容の書式は、

「項目名 検査結果テキスト」（空白は半角スペース）

とし、検査結果テキストは、検査結果の取り得るパターンによって、以下の値を指定する（パターンについての説明は、エントリ部仕様を参照のこと）。
* 単位付き定量数値結果：　「検査結果値<空白>表示用単位」（<空白>は半角スペース）
* 定量数値：「検査結果値」
* 定性検査結果コード：「検査結果コードに対応する表示名」
* 日付で表現される結果：「YYYY年」または「YYYY年MM月DD日」

またいずれの場合も、未実施の項目の場合、検査結果テキストは「未実施」を設定し、測定不可能の場合は「測定不可能」を設定する。

さらに、定量数値結果の場合には、測定値が入力許容範囲外（入力最小値以下または入力最大値以上）の場合には、結果テキストに加え「H」または「L」を出現させる。基準値に基づく判定結果は記述しない。

テキスト部のJSONインスタンス例を示す。

```JSON
"text": {
  "status": "generated",
  "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li>肺がん検診の過去の受診歴 前年度受けた</li><li>肺がん検診時の肺がんに係る症状の有無 いいえ</li><li>肺がん検診時の喫煙指数 150</li></ul></div>"
},
```

次に、上記テキスト部を含み、３つの健診項目（**Observation**リソースへの参照）を含む検査結果セクションのインスタンス例を示す。

entry要素内に列挙される3つの"reference"要素は、それぞれ、**Observation**リソースへの参照を表すリソースIDの例である。

```JSON
"section": [
  {
    "title": "検査結果",
    "code": {
      "coding": [
        {
          "system": "http://jpfhir.jp/fhir/eCheckup/CodeSystem/section-code",
          "code": "01910",
          "display": "検査結果セクション"
        }
      ]
    },
    "text": {
      "status": "generated",
      "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li>肺がん検診の過去の受診歴 前年度受けた</li><li>肺がん検診時の肺がんに係る症状の有無 いいえ</li><li>肺がん検診時の喫煙指数 150</li></ul></div>"
    },
    "entry": [
      {
        "reference": "urn:uuid:eac6609a-9821-61f7-3eb9-b7db3d9f5cfc"
      },
      {
        "reference": "urn:uuid:b41c8c97-f3ad-450a-1738-5f2b4c40c68a"
      },
      {
        "reference": "urn:uuid:cde1fec2-f8af-a793-7fe0-c2c417c9c000"
      }
    ]
  }
]
```

##### 検査結果セクションのエントリ仕様

###### (a)検査項目情報の記述方法
検査項目とその結果の情報について、表 *15*に示す値を設定する。項目によってそれぞれ設定する値が異なるものや、設定する必要のないものが存在する。

検査結果には次の４種類の形式が存在し、それぞれに応じて記述に必要な項目が異なる。
* 単位付き定量数値結果：　検診結果が単一の物理量（実数値と単位の組）で表現される項目であり、「XML用自治体検診項目情報」のXMLデータ型が「PQ」である項目が該当する。
* 定量数値結果：　検診結果が整数値で表現される項目である。「XML用自治体検診項目情報」のXMLデータ型は「PQ」であるが、結果値が整数値であるため、integer型により表現する。
* 定性検査結果コード：　検査結果が定性値もしくは半定量値で表現される項目であり、「XML用自治体検診項目情報」のXMLデータ型が「CD」、「ST」である項目が該当する。
* 日付で表現される結果： 結果が日付で表現される項目で問診項目として使用される。「XML用自治体検診項目情報」のXMLデータ型は「ST」であるが、結果値が日付または時期（年）であるため、本仕様書ではdateTime型により表現する。

また、特定健診に対応する項目の定性検査結果コードの結果記述において、以下の留意が必要である。
* 所見有無と具体的な所見のように関連する健診項目は、異なる**Observation**として表現するのではなく、1つの**Observation**リソース内に、component要素によって表現することも、CDA健診結果報告書規格とは異なる点に注意する。このような健診項目の表現例を【サンプル②－２】に示す。

表 15検査結果で指定するデータ

| No | 項目名と対応リソース.要素 | 値 | 備考 | 
| --- | --- | --- | --- |
| (1) | 検査項目コード<br>Observation.code | 検査項目に対応するコードを指定。「XML用自治体検診項目情報」の「項目コード」に収載されており、JLAC10 17桁コードにもとづいて厚生労働省および関連団体で特定健診項目コードとして取り決めたコードを使用する。 |  | 
| (2) | 検査項目コード体系OID<br>Observation.code.coding.system | 自治体検診項目コードを使用する場合：“urn:oid:1.2.392.100495.100.1051”<br>JLAC10の場合："http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10" |  | 
| (3) | 検査項目コード<br>Observation.code.coding.code | 前項のコード体系における健診項目に対応する検査項目コード |  | 
| (4) | 検査項目コード表示名<br>Observation.code.coding.display | 項目に対応するコード値の表示名を設定。 |  | 
| (5) | 検査結果データ型 | FHIRインスタンス中には直接出現しない。 |  | 
| (6) | 結果<br>Observation.value | 定量数値結果の場合、測定値の実数部（物理量）をObservation.valueQuantity.valueに設定。<br>定性検査結果コードの場合、結果を示すコードをObservation.valueCodeableConsept.conding.code、または結果文字列をObservation.valueStringに設定。<br>数値結果の場合、結果値を Observation.valueInteger に設定。<br>日付で表現される結果の場合、Observation.valueDateTimeに設定。 | 未実施、測定不可能の場合は出現しない。 | 
| (7) | 単位コード<br>Observation.valueQuantity.unit、<br>Observation.valueQuantity.system、<br>Observation.valueQuantity.code | 定量数値結果の場合、「ＸＭＬ用特定健診項目情報」の「UCUM単位コード」を参考にUCUM単位コードを設定。コード体系UCUMで定められた表記に従っている。表示用の単位コードと異なる場合があることに注意。<br>検査値に単位がない場合には出現しない。<br>定性検査結果コードの場合には出現しない。 | 未実施、測定不可能の場合は出現しない。 | 
| (8) | 結果コード体系OID<br>Observation.valueCodeableConsept.conding.system | 定量数値結果の場合には出現しない。<br>定性検査結果コードの場合で結果がコード値をとる場合に、そのコードテーブルのOID。「FHIR用自治体検診項目表」の「結果コード体系」を設定できる。 | 未実施、測定不可能の場合は出現しない。 | 
| (9) | 結果コード表示名<br>Observation.valueCodeableConsept.conding.display | 定量数値結果の場合には出現しない。<br>定性検査結果コードの場合で結果がコード値をとる場合に、そのコードに対応する結果表示文字列。 | 未実施、測定不可能の場合は出現しない。 | 
| (10) | 検査基準値下限閾値<br>Observaiton.referenceRange.low.value | 定量数値結果であって、検査基準値が設定される項目のみ出現し、項目に設定された検査基準値の下限閾値（実数部）を設定。 | 検査基準値が設定される項目のみ出現。未実施の場合は出現しない。 | 
| (11) | 検査基準値下限単位コード<br>Observaiton.referenceRange.low.code、<br>Observaiton.referenceRange.low.unit | 定量数値結果であって、検査基準値が設定される項目のみ出現し、（7）と同一の単位コードを設定。 | 検査基準値が設定される項目のみ出現。未実施の場合は出現しない。 | 
| (12) | 検査基準値上限閾値<br>Observaiton.referenceRange.high.value | 定量数値結果であって、検査基準値が設定される項目のみ出現し、項目に設定された検査基準値の上限閾値（実数部）を設定。 | 検査基準値が設定される項目のみ出現。未実施の場合は出現しない。 | 
| (13) | 検査基準値上限単位コード<br>Observaiton.referenceRange.high.code、<br>Observaiton.referenceRange.high.unit | 定量数値結果であって、検査基準値が設定される項目のみ出現し、（7）と同一の単位コードを設定。 | 検査基準値が設定される項目のみ出現。未実施の場合は出現しない。 | 
| (14) | 結果解釈コード<br>Observation.interpretation | 結果値の解釈を表現する。OIDには"http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation"を使用する。 |  | 

Observationリソースによりこれらを記述する全体仕様を＜表16 Observationリソース　検査項目情報＞に示す。

[＜表16 Observationリソース　検査項目情報](tables.html#tbl-16)＞

###### (b) 一連検査グループの考え方
「一連検査グループ」は「胸部エックス線検査の判定結果と所見」、あるいは「骨粗鬆症検診の骨量値、骨密度、及び、測定部位」などのように、ある検査結果が、それに付帯する情報（付帯情報）とともに現れる場合に使用される。

一連検査グループとしてグループされない複数の検査結果は、Composition.entry要素の直下に、一連検査グループをくくるための**Observation**リソースがひとつだけ出現し、その内部に**Observation**リソースのhasMember要素で、各検査結果および付帯情報が記述される。

つまり、Composition.entry.resource で表現される**Observation**リソースが、グループをくくる単位となり、その**Observation**リソースのhasMember要素で参照される**Observation**リソースが、各検査項目を記述している。

各 hasMember 同士の関係は、CDA自治体検診結果報告書規格では 包含関係や他の項目への理由関係を行為間関係種別コードで識別できるようにしていたが、本仕様書では健康診断結果報告書FHIR記述様式に準じて、すべて hasMember で関連付けることとする。同様に、CDA自治体検診結果報告書規格では、グループヘッダに相当するObservation.code要素にはコードは指定しなかったが、本仕様書では、以下に示すコードをObservation.code要素に設定する。コード体系を表す system要素には、「http://jpfhir.jp/fhir/eCheckup/CodeSystem/observationGroup-codes」を指定する。

なお、CDA自治体検診結果報告書規格の一連検査グループには、表20に示すグループに加えて、子宮頸がん視診と子宮頸がん内診の二つのグループも定義されているが、本仕様書では、１つの検診項目として、Observationリソースの component要素で表現するため、一連検査グループに含まれないことに注意する。

表 17 一連検査グループコード<br>*http://jpfhir.jp/fhir/eCheckup/CodeSystem/observationGroup-codes*

| グループ | コード | 検査項目または情報項目 | 
| --- | --- | --- |
| 胸部エックス線検査 | 9P500 | 肺がん検診の胸部エックス線検査判定 | 
|  | 9P500 | 肺がん検診の胸部エックス線検査所見 | 
| 喀痰検査 | 7A030 | 肺がん検診の喀痰検査受診日 | 
|  | 7A030 | 肺がん検診の喀痰検査判定 | 
|  | 7A030 | 肺がん検診の喀痰検査所見 | 
| マンモグラフィー検査 | 9N281 | 乳がん検診のマンモグラフィー検査判定 | 
|  | 9N281 | 乳がん検診のマンモグラフィー検査所見 | 
| 胃エックス線検査 | 9P542 | 胃がん検診の胃部エックス線検査検査判定 | 
|  | 9P542 | 胃がん検診の胃部エックス線検査所見 | 
| 胃内視鏡検査 | 9P544 | 胃がん検診の胃内視鏡検査検査判定 | 
|  | 9P544 | 胃がん検診の胃内視鏡検査所見 | 
| 頸部細胞診検査 | 7A021 | 子宮頸がん検診の頸部細胞診検査判定 | 
|  | 7A021 | 子宮頸がん検診の頸部細胞診検査所見 | 
| 便潜血検査 | 1B040 | 大腸がん検診の便潜血検査判定 | 
|  | 1B040 | 大腸がん検診の便潜血検査所見 | 
| 骨粗鬆症DXA 検査 | 9Z507 | 骨粗鬆症検診のDXA 検査骨量値 | 
|  | 9Z507 | 骨粗鬆症検診のDXA 検査骨密度 | 
|  | 9Z507 | 骨粗鬆症検診のDXA 検査測定部位 | 
|  | 9Z507 | 骨粗鬆症検診のDXA 検査に使用した機器 | 
|  | 9Z507 | 骨粗鬆症検診のDXA 検査判定 | 
|  | 9Z507 | 骨粗鬆症検診のDXA 検査所見 | 
| 骨粗鬆症エックス線検査 | 9Z531 | 骨粗鬆症検診のエックス線検査骨量値 | 
|  | 9Z531 | 骨粗鬆症検診のエックス線検査骨密度 | 
|  | 9Z531 | 骨粗鬆症検診のエックス線検査測定部位 | 
|  | 9Z531 | 骨粗鬆症検診のエックス線検査に使用した機器 | 
|  | 9Z531 | 骨粗鬆症検診のエックス線検査判定 | 
|  | 9Z531 | 骨粗鬆症検診のエックス線検査所見 | 
| 骨粗鬆症CT 検査 | 9Z536 | 骨粗鬆症検診のCT 検査骨量値 | 
|  | 9Z536 | 骨粗鬆症検診のCT 検査骨密度 | 
|  | 9Z536 | 骨粗鬆症検診のCT 検査測定部位 | 
|  | 9Z536 | 骨粗鬆症検診のCT 検査に使用した機器 | 
|  | 9Z536 | 骨粗鬆症検診のCT 検査判定 | 
|  | 9Z536 | 骨粗鬆症検診のCT 検査所見 | 
| 骨粗鬆症超音波検査 | 9Z541 | 骨粗鬆症検診の超音波検査骨量値 | 
|  | 9Z541 | 骨粗鬆症検診の超音波検査の測定結果 | 
|  | 9Z541 | 骨粗鬆症検診の超音波検査測定部位 | 
|  | 9Z541 | 骨粗鬆症検診の超音波検査に使用した機器 | 
|  | 9Z541 | 骨粗鬆症検診の超音波検査判定 | 
|  | 9Z541 | 骨粗鬆症検診の超音波検査所見 | 

検診項目が検体検査項目の場合、検体情報をSpecimenリソースで表現する。検体情報のtype要素には、検査項目コードから材料コードを指定する。Specimenリソースの記述仕様を＜表 *18* Specimenリソースの記述仕様＞に示す。

＜[表18 Specimenリソースの記述仕様](tables.html#tbl-18)＞

以上について、サンプルインスタンスを示す。

＜[例8 Observationリソース  記述例　定量数値結果](Observation-example08.html)＞<br>
＜[例9 Observationリソース  記述連　一連検査グループ](Observation-example09.html)＞<br>
＜[例10 Observationリソース  定性検査結果コード－１](Observation-example10.html)＞<br>
＜[例11 Observationリソース  定性検査結果コード－２](Observation-example11.html)＞

###### (c) 未実施および測定不可項目の表現

i : 未実施

未実施とは、検査予定であり検査しようとしたが検体を採取できない場合、あるいは検査予定であったが受診者の事情により検査を行うことが適切でないと検査時点で考えられた場合などである。

未実施は、Observation.dataAbsentReason要素に、バリューセットDataAbsentReasonから「not-performed」を指定することで表現し、Observation.status要素には「cancelled」を指定する。このとき、**Observation**リソースには、status要素、category要素、code要素、及び、dataAbsentReason要素のみを含む。最初から検査する予定がなかった場合には、**Observation**リソース自体を出力するべきではない。

＜[例12 Observationリソース  検査未実施](Observation-example12.html)＞

ii: 測定不能

測定不能とは、健診実施機関としては検体を採取して検査室に検査をさせたが、検体のなんらかの理由（凝固、量が不足、適切な検体補助剤が入れられていないなど）、検査機器のトラブル、検体搬送時の事故等により検査ができなかった場合、あるいは検査装置の測定限界を超えた異常な値を呈したために検査ができなかった場合などが該当する。

測定不能は、Observation.dataAbsentReason要素に、バリューセットDataAbsentReasonから「error」を指定することで表現し、Observation.status要素には「cancelled」を指定する。未実施と同様に測定不能時にも、**Observation**リソースには、status要素、category要素、code要素、及び、dataAbsentReason要素のみを含む。

基準値や検査手法コードは、通常の項目と同様に指定できるが、結果解釈値は出現しない。基準値や検査手法コードは、任意要素であるから省略してもよい。

以下に測定不能項目の例を示す。

＜[例13 Observationリソース  測定不能](Observation-example13.html)＞

#### 検査・問診項目記述の為の拡張要件
各種制度に基づく健診（検診）の記述構造は、本仕様書で述べた検査結果セクションと問診結果セクションを利用して、対応する報告区分とともに同様の記述仕様で記載する。ただし、個人に結果報告を送ることを主とする場合は、Observation.code、およびComposition.section.codeのdisplay要素（表示名）が記述されることが望ましい。

i) 検査項目ごとにシェーマや画像を直接リンクさせ報告する場合

X線の画像等をまとめて検診結果報告書に添付させる場合は添付書類セクションを用いるが、各検査項目にリンクして、特に超音波検査等でシェーマを添付させたい場合がある。この場合は、対象の健診項目を表す**Observation**リソースのderivedFrom要素で参照される**Media**リソースに、外部添付ファイルと同様にGIF画像、JPEG画像やPNG画像等の形式でデジタル化された画像を添付することができる。

＜[表19 Mediaリソースの記述仕様](tables.html#tbl-19)＞<br>
＜[例14 Mediaリソース 記述例](Media-example14-1.html)＞

#### 画像等を添付書類セクションを利用して一括提供する場合
検診結果に加えてまとめて画像等の関連書類を提供する場合に、添付書類セクションを用いる。添付書類は、**DocumentReference**リソースのattachment要素に、URI参照で関連付ける。外部文書の参照に際しては、真正性を担保する為にハッシュコードを用いる。

添付書類ごとに**DocumentReference**リソースを繰り返す。

＜[表20 DocumentReferenceリソースの記述仕様](tables.html#tbl-20)＞<br>
＜[例15 DocumentReferenceリソース 記述例](DocumentReference-example15.html)＞

添付書類として、検査結果レポートを表現する、**DiagnosticReport**リソースを直接添付することも可能とする。

＜[表21 DiagnosticReportリソースの記述仕様](tables.html#tbl-21)＞<br>
＜[例16 DiagnosticReportリソース 記述例](DiagnosticReport-example16.html)＞

## 代表的なデータサンプル

以下に、肺がん検診結果報告書について、FHIR  Documentで構造化して記述した「FHIR構造パターン」の記述例、CDA R2形式の自治体検診結果情報ファイルを添付した「CDA添付パターン」の記述例、および、乳がん検診、胃がん検診、子宮頸がん検診、大腸がん検診、肝炎検診、骨粗鬆症検診、歯周病疾患検診の結果を、それぞれFHIR Documentで構造化して記述した例の９つのサンプルを以下に示す。

＜[例17 肺がん健診「FHIR構造パターン」記述例](Bundle-example17.html)＞<br>
＜[例18 肺がん健診「CDA添付パターン」記述例](Bundle-example18.html)＞<br>
＜[例19 乳がん検診「FHIR構造パターン」記述例](Bundle-example19.html)＞<br>
＜[例20 胃がん検診「FHIR構造パターン」記述例](Bundle-example20.html)＞<br>
＜[例21 子宮頚がん検診「FHIR構造パターン」記述例](Bundle-example21.html)＞<br>
＜[例22 大腸がん検診「FHIR構造パターン」記述例](Bundle-example22.html)＞<br>
＜[例23 肝炎検診「FHIR構造パターン」記述例](Bundle-example23.html)＞<br>
＜[例24 骨粗鬆症検診「FHIR構造パターン」記述例](Bundle-example24.html)＞<br>
＜[例25 歯周疾患検診「FHIR構造パターン」記述例](Bundle-example25.html)＞

## データ型について

データ型はFHIR基底仕様に定義されているが、便宜のため、以下に日本語訳を示す。

基本データ型（Primitive Types）

HL7FHIRで使用される基本データ型（Primitive Types）  について、本仕様書で出現しなかったものも含めて説明する。本記述は、http://hl7.org/fhir/datatypes.html　のPrimitive Types の記述を参考にして意訳している。

| 基本データ型 | 説明・とりうる値 | 
| --- | --- |
| boolean | 真偽値型　true \| false<br>正規表現：true\|false | 
| integer | 整数型　マイナス2,147,483,648からプラス2,147,483,647の範囲の符号付き整数（32ビットで表現可能な整数。値が⼤きい場合はdecialタイプを使⽤すること）<br>正規表現：[0]\|[-+]?[1-9][0-9]* | 
| string | 文字列型　Unicode⽂字のシーケンス<br>⽂字列のサイズは1MB（1024   1バイト文字で  1024⽂字、UTF8文字の場合1文字あたり3バイトとあるので注意）を超えてはならないことに注意。⽂字列には、u0009（⽔平タブ）、u0010（キャリッジリターン）、およびu0013（ラインフィード）を除く制御文字（文字コード10進で32未満）を含んではならない。先頭と末尾の空⽩は許可されますが、XML形式を使⽤する場合は削除する必要がある。注：これは、空⽩のみで構成する値はから文字列値として扱われる。したがって、⽂字列には常に空⽩以外のコンテンツを含める必要がある。<br>正規表現：[ \r\n\t\S]+ | 
| decimal | 10進数型　⼩数表現の有理数。<br>正規表現：-?(0\|[1-9][0-9]*)(\.[0-9]+)?([eE][+-]?[0-9]+)? | 
| uri | uri型   Uniform Resource Identifier (RFC 3986 )　 URIでは⼤⽂字と⼩⽂字が区別される。UUID（例：urn:uuid:53fefa32-fcbb-4ff8-8a92-55ee120877b7）ではすべて小文字を使う。<br>URIは、絶対的または相対的であることができ、任意追加の断片識別⼦を有していてもよい。 | 
| url | url型   Uniform Resource Locator (RFC 1738 )　 URLは、指定されたプロトコルを使用して直接アクセスされる。一般的なURLプロトコルはhttp {s} ：、 ftp：、mailto：、mllp：だが、他にも多くのプロトコルが定義されている。 | 
| canonical | 正規URI型　リソース（urlプロパティを持つリソース）を正規URLによって参照するURI。canonical型は、この仕様で特別な意味を持ち、縦棒（\|）で区切られたバージョンが追加される可能性があるという点でURIとは異なります。タイプcanonicalは、これらの参照のターゲットである実際の正規URLではなく、それらを参照するURIに使用され、バージョンサフィックスが含まれている場合があることに注意してください。他のURIと同様に、canonical型の要素にも#fragment参照が含まれる場合があります | 
| base64Binary | base64型   base64でエントードされたバイト文字列（A stream of bytes, base64 encoded）（RFC4648）<br>正規表現：(\s*(\[0-9a-zA-Z\+\=\]){4}\s*)+<br>バイナリのサイズに指定された上限はないが、システムは、サポートするサイズに実装ベースの制限を課す必要がある。現時点ではこれについて計算できるものはないが、これは明確に文書化する必要がある。 | 
| instant | 瞬間時点型　YYYY-MM-DDThh：mm：ss.sss + zz：zzの形式の瞬間時点（例：2015-02-07T13：28：17.239 + 02：00または2017-01-01T00：00：00Z）。時刻は少なくとも1秒までは指定する必要があり、タイムゾーンを含める必要がある。注：これを使用するのは、正確に監視された時間が必要な場合（通常はシステムログなど）を対象としており、人間が報告した時間には使用しない。人間が報告する時刻には、dateまたはdateTime（インスタントと同じくらい正確にすることができるが、それほどの精度確保は必須ではない）を使用する。インスタントはより制約されたdateTimeである。<br>注：このタイプはシステム時間用であり、人間の時間用ではありません（以下の日付とdateTimeを参照）<br>正規表現：(\[0-9](\[0-9]([0-9][1-9]\|[1-9]0)\|[1-9]00)\|[1-9]000)-(0[1-9]\|1[0-2])-(0[1-9]\|[1-2][0-9]\|3[0-1])T([01][0-9]\|2[0-3]):[0-5][0-9]:([0-5][0-9]\|60)(\.[0-9]+)?(Z\|(\+\|-)((0[0-9]\|1[0-3]):[0-5][0-9]\|14:00)) | 
| date | 日付型　人間のコミュニケーションで使用される日付、または部分的な日付（たとえば、年または年+月）。<br>形式はYYYY、YYYY-MM、またはYYYY-MM-DDです。例： 2018、1973-06、または1905-08-23。<br>タイムゾーンはない。日付は有効な日付である必要がある。<br>正規表現：(\[0-9](\[0-9]([0-9][1-9]\|[1-9]0)\|[1-9]00)\|[1-9]000)(-(0[1-9]\|1[0-2])(-(0[1-9]\|[1-2][0-9]\|3[0-1]))?)? | 
| dateTime | 日時型　人間のコミュニケーションで使用される日付、日時、または部分的な日付（例：年または年+月）。<br>形式は、YYYY、YYYY-MM、YYYY-MM-DD、またはYYYY-MM-DDThh：mm：ss + zz：zz。<br>例： 2018、1973-06、1905-08-23、2015-02-07T13：28：17-05：00または2017-01-01T00：00：00.000Z。<br>時刻と分が指定されている場合、タイムゾーンを設定する必要がある。スキーマタイプの制約のために秒を指定する必要があるが、ゼロで埋められ、受信者の裁量で00の秒は無視される場合がある。日付は有効な日付である必要がある。<br>時刻「24:00」は許可されていません。うるう秒が許可される。<br>正規表現：(\[0-9](\[0-9]([0-9][1-9]\|[1-9]0)\|[1-9]00)\|[1-9]000)(-(0[1-9]\|1[0-2])(-(0[1-9]\|[1-2][0-9]\|3[0-1])(T([01][0-9]\|2[0-3]):[0-5][0-9]:([0-5][0-9]\|60)(\.[0-9]+)?(Z\|(\+\|-)((0[0-9]\|1[0-3]):[0-5][0-9]\|14:00)))?)?)? | 
| time | 時刻型　hh:mm:ssの形式の日中の時間。日付は指定されていない。スキーマタイプの制約のために秒を指定する必要がありますが、ゼロで埋められ、受信者の裁量で00秒は無視される場合があります。**時刻「24:00」は使用しないでください。タイムゾーンは存在してはならない**。<br>この時刻値は午前0時からの経過時間（Duration型）に変換可能。<br>正規表現：([01][0-9]\|2[0-3]):[0-5][0-9]:([0-5][0-9]\|60)(\.[0-9]+)? | 
| code | コード値型　値が他の場所で定義されたコントロールされた（自由な文字列にはなれない）文字列のセットからひとつ取得されることを示す（詳細については、コードの使用を参照のこと）。技術的には、コードは、少なくとも1文字で、先頭または末尾の空白がなく、文字列内に単一のスペース以外の空白（連続した空白やタブなど）がない文字列に制限されます。<br>正規表現：[^\s]+(\s[^\s]+)* | 
| oid | OID型　URIにより表現されたOID（Object IDentifier）<br>例：urn:oid:1.2.3.4.5 | 
| id | 識別ID型　大文字または小文字のASCII文字（「A」..「Z」および「a」..「z」、数字（「0」..「9」）、「-」および「。」の64文字の長さ以内の任意の組み合わせ。（これは、整数、接頭辞なしのOID、UUID、またはこれらの制約を満たすその他の識別子パターンである可能性もある）。<br>正規表現：[A-Za-z0-9\-\\.]{1,64} | 
| markdown | マークダウン型　マークダウンプレゼンテーションエンジンによるオプションの処理のためのマークダウン構文を含む可能性のあるFHIR文字列型（string型を参照）。<br>正規表現：\s\*(\S\|\s)\* | 
| unsignedInt | 非負整数型　0または正の整数で0から2,147,483,647の範囲<br>正規表現：[0]\|([1-9][0-9]*) | 
| positiveInt | 正整数型　　1以上の整数で1から2,147,483,647の範囲<br>正規表現：+?[1-9][0-9]* | 
| uuid | uuid型　URIで表現されたUUID (GUIDの一種)<br>例：urn:uuid:c757873d-ec9a-4326-a141-556f43239520 | 

## 名前空間と識別ＩＤ
### 識別子名前空間一覧
本文書で定義された、識別子の名前空間の一覧を示す。

本文書中で、患者IDや処方医IDを医療機関等が独自に付番管理する番号で記述する場合、特定のOIDの枝番に”1”＋保険医療機関番号（10桁）によりOIDを構成するものとする。1を先頭に付与しているのは、OIDのルール上、先頭が0は許容されていないことによる。

[＜表 22 識別子名前空間一覧＞](tables.html#tbl-22)

### 拡張一覧(FHIR Extension)
本文書で定義した拡張の一覧を示す。

[＜表 23 拡張一覧(FHIR Extension)＞](tables.html#tbl-23)

## 仕様策定
令和３年(2021)度厚生労働科学研究費補助金事業「検診情報と栄養情報の標準的なデータ項目・様式・交換方式をFHIR準拠仕様として開発する研究」研究班（研究代表：大江和彦（東京大学）　https://std.jpfhir.jp/）において策定をおこなった。また、日本医療情報学会NeXEHRS課題研究会、HL7FHIR 日本実装検討WG（https://jpfhir.jp/）での検討結果を反映している。

*以下余白*

