// composition.categoryが 以下のいずれかひとつだけ出現すること
      // 51：肺がん検診
      // 52：乳がん検診
      // 53：胃がん検診
      // 54：子宮頸がん検診
      // 55：大腸がん検診
      // 56：肝炎検診
      // 57：骨粗鬆症検診
      // 58：歯周疾患検診
Invariant: caregory-is-valid-one
Severity: #error
Description: "composition.category (報告区分コード)が 次のいずれかひとつだけ出現する。(51,52,53,54,55,56,57,58)"
Expression: 
    "(
      entry[0].where(resource is composition and resource.category.coding.code='51').count()=1
  xor entry[0].where(resource is composition and resource.category.coding.code='52').count()=1
  xor entry[0].where(resource is composition and resource.category.coding.code='53').count()=1
  xor entry[0].where(resource is composition and resource.category.coding.code='54').count()=1
  xor entry[0].where(resource is composition and resource.category.coding.code='55').count()=1
  xor entry[0].where(resource is composition and resource.category.coding.code='56').count()=1
  xor entry[0].where(resource is composition and resource.category.coding.code='57').count()=1
  xor entry[0].where(resource is composition and resource.category.coding.code='58').count()=1
    )"

Invariant: event-code-is-valid-one
Severity: #error
Description: "composition.event.code（健診プログラムサービスコード（検診区分））が 1,2,3のいずれかである。"
Expression: 
    "(
      entry[0].where(event.code.coding.code='1').count()=1
  xor entry[0].where(event.code.coding.code='2').count()=1
  xor entry[0].where(event.code.coding.code='3').count()=1
    )"

/* 雛形
Invariant: category51-event2-valid-obs
Severity: #error
Description: "肺がん51　二次健診で健診項目が充足している"
Expression: 
  "  (
      (entry[0].resource.category.coding.code='51'
        and entry[0].event.code.coding.code='2'
      )
      implies (


      )
    )"
*/