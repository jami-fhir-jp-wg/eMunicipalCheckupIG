Instance: example05
InstanceOf: Coverage
Usage: #example
Description: "例5 Coverageリソース_保険証情報_記述例"
* extension[0].url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Coverage_InsuredPersonSymbol"
* extension[=].valueString = "１２３４５"
* extension[+].url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Coverage_InsuredPersonNumber"
* extension[=].valueString = "６７８９０"
* extension[+].url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Coverage_InsuredPersonSubNumber"
* extension[=].valueString = "01"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li>保険者番号：06123456</li><li>被保険者証記号・番号：１２３４５・６７８９０</li><li>枝番：01</li><li>患者区分：本人</li><li>有効期限：2020年3月31日</li></ul></div>"
* status = #active
* type = urn:oid:1.2.392.100495.20.2.61#1
* beneficiary = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* dependent = "01"
* relationship = urn:oid:1.2.392.100495.20.2.62#1 "被保険者"
* period.start = "2018-04-01"
* period.end = "2022-03-31"
* payor = Reference(urn:uuid:7c9f9f7f-e546-0ac2-6828-a9e0b24e5750)