



Invariant: category51-event1xor2xor3
Severity: #error
Description: "肺がん51 健診"
Expression: 
  " 
    (entry[0].where(resource.category[0].coding[0].code='51')).exists() 
  and (
    (entry[0].where(resource.event[0].code[0].coding[0].code='1')).exists()
  xor  (entry[0].where(resource.event[0].code[0].coding[0].code='2')).exists()
  xor  (entry[0].where(resource.event[0].code[0].coding[0].code='3')).exists()     
    )
  "

Invariant: category51-event1-valid-obs
Severity: #error
Description: "肺がん51　一次健診で健診項目が充足している"
Expression: 
  "  (
    (entry[0].where(resource.category[0].coding[0].code='51')).exists()  
    and
    (entry[0].where(resource.event[0].code[0].coding[0].code='1')).exists() 
      )
      implies (
      entry.where(
        resource.category.coding.code='exam'
        and resource.code.coding.code='9P504000000000011').exists()
      and entry.where(
        resource.category.coding.code='exam'
        and resource.code.coding.code='9P507000000000011').exists().not()
      and entry.where(
        resource.category.coding.code='exam'
        and resource.code.coding.code='9P508160800000049').exists().not()
      and entry.where(
        resource.category.coding.code='exam'
        and resource.code.coding.code='9P509000000000011').exists().not() 
      )
    "
Invariant: category51-event1-valid-obs-9P504000000000011
Severity: #error
Description: "肺がん51　一次健診で健診項目 肺がん検診の精密検査対象有無が存在する"
Expression: 
  "  (
    (entry[0].where(resource.category[0].coding[0].code='51')).exists()  
    and
    (entry[0].where(resource.event[0].code[0].coding[0].code='1')).exists() 
      )
      implies (
      entry.where(
        resource.category.coding.code='exam'
        and resource.code.coding.code='9P504000000000011').exists()
      )
    "
Invariant: category51-event1-valid-obs-9P507000000000011
Severity: #error
Description: "肺がん51　一次健診で健診項目 肺がん検診の精密検査結果が存在してはいけない"
Expression: 
  "  (
    (entry[0].where(resource.category[0].coding[0].code='51')).exists()  
    and
    (entry[0].where(resource.event[0].code[0].coding[0].code='1')).exists() 
      )
      implies (
        entry.where(
        resource.category.coding.code='exam'
        and resource.code.coding.code='9P507000000000011').exists().not()
      )
    "

Invariant: category51-event1-valid-obs-9P508160800000049
Severity: #error
Description: "肺がん51　一次健診で健診項目 肺がん検診の精密検査その他所見が存在してはいけない"
Expression: 
  "  (
    (entry[0].where(resource.category[0].coding[0].code='51')).exists()  
    and
    (entry[0].where(resource.event[0].code[0].coding[0].code='1')).exists() 
      )
      implies (
       entry.where(
        resource.category.coding.code='exam'
        and resource.code.coding.code='9P508160800000049').exists().not()
      )
    "

Invariant: category51-event1-valid-obs-9P509000000000011
Severity: #error
Description: "肺がん51　一次健診で健診項目 肺がん検診の精密検査による偶発症の有無が存在してはいけない"
Expression: 
  "  (
    (entry[0].where(resource.category[0].coding[0].code='51')).exists()  
    and
    (entry[0].where(resource.event[0].code[0].coding[0].code='1')).exists() 
      )
      implies (
       entry.where(
        resource.category.coding.code='exam'
        and resource.code.coding.code='9P509000000000011').exists().not() 
      )
    "


Invariant: category51-event2-valid-obs
Severity: #error
Description: "肺がん51 二次健診で健診項目が充足している"
Expression: 
  "  (
    (entry[0].where(resource.category[0].coding[0].code='51')).exists()  
    and
    (entry[0].where(resource.event[0].code[0].coding[0].code='2')).exists() 
      )
      implies (
      entry.where(
        resource.category.coding.code='imaging'
        and resource.code.coding.code='9P500').exists().not() 
      and entry.where(
        resource.category.coding.code='imaging'
        and resource.code.coding.code='9P502000000000011').exists().not()
      and entry.where(
        resource.category.coding.code='imaging'
        and resource.code.coding.code='9P503160800000049').exists().not()

      and entry.where(
        resource.category.coding.code='laboratory'
        and resource.code.coding.code='7A030').exists().not() 
      and entry.where(
        resource.category.coding.code='laboratory'
        and resource.code.coding.code='7A030161506144349').exists().not()
      and entry.where(
        resource.category.coding.code='laboratory'
        and resource.code.coding.code='7A030000006144311').exists().not()
      and entry.where(
        resource.category.coding.code='laboratory'
        and resource.code.coding.code='7A030160806144349').exists().not()

      and entry.where(
        resource.category.coding.code='exam'
        and resource.code.coding.code='9P504000000000011').exists().not()
      and entry.where(
        resource.category.coding.code='exam'
        and resource.code.coding.code='9P505160800000049').exists().not()
      and entry.where(
        resource.category.coding.code='exam'
        and resource.code.coding.code='9P506000000000011').exists().not()
      and entry.where(
        resource.category.coding.code='exam'
        and resource.code.coding.code='9P507000000000011').exists() 
      and entry.where(
        resource.category.coding.code='exam'
        and resource.code.coding.code='9P508160800000049').exists().not()
      and entry.where(
        resource.category.coding.code='exam'
        and resource.code.coding.code='9P509000000000011').exists().not() 
      )
    "


Invariant: category51-event3-valid-obs
Severity: #error
Description: "肺がん51　一次＋二次健診で健診項目が充足している"
Expression: 
  "  (
    (entry[0].where(resource.category[0].coding[0].code='51')).exists() 
    and 
    (entry[0].where(resource.event[0].code[0].coding[0].code='3')).exists() 
      )
      implies (
      entry.where(
        resource.category.coding.code='exam'
        and resource.code.coding.code='9P504000000000011').exists()
      and entry.where(
        resource.category.coding.code='exam'
        and resource.code.coding.code='9P507000000000011').exists() 
      )
    "


