
// FHIRpathのサンプル for Invariatnts
/*
Invariant: caregory-check-51-61
Severity: #error
Description: "caregory-check-51-61"
Expression: "entry.where(resource.category.coding.code='51').exists() 
  or entry.where(resource.category.coding.code='61').exists() 
   "
*/
//--- entryに指定したリソースが存在するかどうか
Invariant: Bundle-select-patient-check
Severity: #error  // OK expected
Description:  "Bundle.entry.select(resource as Patient).exists() "
Expression:   "Bundle.entry.select(resource as Patient).exists()"

Invariant: entry-select-patient-check
Severity: #error  // OK expected
Description:  "entry.select(resource as Patient).exists() "
Expression:   "entry.select(resource as Patient).exists()"

Invariant: Bundle-select-patient-check1
Severity: #error  // OK expected
Description:  "Bundle.entry.select(resource as Patient).count() =1 "
Expression:   "Bundle.entry.select(resource as Patient).count() =1 "

Invariant: entry-select-patient-check1
Severity: #error  // OK expected 
Description:  "entry.select(resource as Patient).count() =1  "
Expression:   "entry.select(resource as Patient).count() =1 "

Invariant: entry-where-ispatient-check
Severity: #error  // ok expected
Description:  "entry.where(resource is Patient).exists() "
Expression:   "entry.where(resource is Patient).exists()"

Invariant: entry1-where-ispatient-check
Severity: #error  // ok expected
Description:  "entry[1].where(resource is Patient).exists() "
Expression:   "entry[1].where(resource is Patient).exists() "

Invariant: entry-where-patient-name0-check
Severity: #error  // ok expected
Description:  "(entry.where(resource.name[0].family='健診')).exists() "
Expression:   "(entry.where(resource.name[0].family='健診')).exists()"

Invariant: entry-resource-where-patient-name0-check
Severity: #error   // ok expected
Description:  "(entry.resource.where(name[0].family='健診')).exists() "
Expression:   "(entry.resource.where(name[0].family='健診')).exists()"

Invariant: entry-where-resourceType-patient-check
Severity: #error  // false unexpected　原因不明。resourceTypeは文字列ではなくて特別なのかもしれない
Description:  "entry.where(resource.resourceType='Patient').exists() "
Expression:   "entry.where(resource.resourceType='Patient').exists()"

Invariant: entry-where-resourceTypepatient-check
Severity: #error  // false unexpected　原因不明。これもエラーになるresourceTypeは特別なのかもしれない
Description:  "entry.where(resource.resourceType=Patient).exists() "
Expression:   "entry.where(resource.resourceType=Patient).exists()"

Invariant: entry-where-idisvalid-check
Severity: #error  // true expected
Description:  "entry.where(resource.id='Inline-Instance-for-GOFSH-GENERATED-ID-21-2').exists() "
Expression:   "entry.where(resource.id='Inline-Instance-for-GOFSH-GENERATED-ID-21-2').exists()"

Invariant: entry-where-metaprofileisvalid-check
Severity: #error  // true expected
Description:  "entry.where(resource.meta.profile='http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Patient_eMunicipalCheckup').exists() "
Expression:   "entry.where(resource.meta.profile='http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Patient_eMunicipalCheckup').exists()"


//--- entryに指定したリソースが存在するかどうか-- うまくいかない例
Invariant: entry-where-patient-name-check
Severity: #error  // fail expected  name.familyが複数値があるためと思われる
Description:  "(entry.where(resource.name.family='健診')).exists() "
Expression:   "(entry.where(resource.name.family='健診')).exists()"

Invariant: entry-where-patient-nameIDE-check
Severity: #error  // true expected
Description:  "(entry.where(resource.name.where(extension.valueCode='IDE').family='健診')).exists() "
Expression:   "(entry.where(resource.name.where(extension.valueCode='IDE').family='健診')).exists() "


Invariant: entry-resource-where-patient-name-check
Severity: #error   // fail unexpected
Description:  "(entry.resource.where(name.family='健診')).exists() "
Expression:   "(entry.resource.where(name.family='健診')).exists()"

Invariant: entry1-where-patient-name-check
Severity: #error  // fail unexpected
Description:  "entry[1].where(resource.name.family='健診').exists() "
Expression:   "entry[1].where(resource.name.family='健診').exists()"

Invariant: entry2-where-patient-name-check
Severity: #error  //fail expected
Description:  "entry[2].where(resource.name.family='健診').exists() "
Expression:   "entry[2].where(resource.name.family='健診').exists()"

Invariant: entry-dot-patient-name-check
Severity: #error  //fail expected
Description:  "entry.resource.name.family='健診' "
Expression:   "entry.resource.name.family='健診'"

Invariant: entry1-dot-patient-name-check
Severity: #error  //OK expcted
Description:  "entry[1].resource.name.family='健診'"
Expression:   "entry[1].resource.name.family='健診'"

Invariant: entry2-dot-patient-name-check
Severity: #error  //fail expcted
Description:  "entry[2].resource.name.family='健診'"
Expression:   "entry[2].resource.name.family='健診'"

Invariant: Bundle-select-patient-check2
Severity: #error  // false expected
Description:  "Bundle.entry.select(resource as Patient).count() =2 "
Expression:   "Bundle.entry.select(resource as Patient).count() =2 "

Invariant: entry-select-patient-check2
Severity: #error   // false expected
Description:  "entry.select(resource as Patient).count() =2  "
Expression:   "entry.select(resource as Patient).count() =2 "

Invariant: Bundle-select-MedicationRequest-check
Severity: #error   // false expected
Description:  "Bundle.entry.select(resource as MedicationRequest).exists() "
Expression:   "Bundle.entry.select(resource as MedicationRequest).exists()"

Invariant: entry-select-MedicationRequest-check
Severity: #error  // false expected 
Description:  "entry.select(resource as MedicationRequest).exists() "
Expression:   "entry.select(resource as MedicationRequest).exists()"


/*
Invariant: entry-where-dummy-check
Severity: #error    // failed 問題なし
Description:  "entry.where(resource.resourceType='dummy').exists() "
Expression:   "entry.where(resource.resourceType='dummy').exists()"

Invariant: entry1-where-dummy-check
Severity: #error    // failed 問題なし
Description:  "entry[1].where(resource.resourceType='dummy').exists() "
Expression:   "entry[1].where(resource.resourceType='dummy').exists()"


Invariant: entry-dot-patient-check
Severity: #error    // failed 
Description:  "(entry.resource.resourceType='Patient').exists() "
Expression:   "(entry.resource.resourceType='Patient').exists()"

Invariant: entry1-dot-patient-check
Severity: #error   // failed 
Description:  "(entry[1].resource.resourceType='Patient').exists() "
Expression:   "(entry[1].resource.resourceType='Patient').exists()"

Invariant: entry-dot-dummy-check
Severity: #error   // failed 問題なし
Description:  "(entry.resource.resourceType='dummy').exists() "
Expression:   "(entry.resource.resourceType='dummy').exists()"

Invariant: entry1-dot-dummy-check
Severity: #error   // failed 問題なし
Description:  "(entry[1].resource.resourceType='dummy').exists() "
Expression:   "(entry[1].resource.resourceType='dummy').exists()"


Invariant: caregory-check-01-ok
Severity: #error  // OK  よさそう
Description:  "entry.where(resource.category.coding.code='51').exists() "
Expression:   "entry.where(resource.category.coding.code='51').exists()"

Invariant: caregory-check-02-ok
Severity: #error  // OK  よさそう
Description:  "entry[0].where(resource.category.coding.code='51').exists() "
Expression:   "entry[0].where(resource.category.coding.code='51').exists()"

Invariant: caregory-check-021-ok
Severity: #error  // faild 問題なし
Description:  "entry[1].where(resource.category.coding.code='51').exists() "
Expression:   "entry[1].where(resource.category.coding.code='51').exists()"


Invariant: caregory-check-03-ok
Severity: #error  // OK  よさそう
Description:  "entry[0].resource.category[0].coding[0].code='51'.exists() "
Expression:   "entry[0].resource.category[0].coding[0].code='51'.exists() "

Invariant: caregory-check-04-ok
Severity: #error  // OK  よさそう
Description:  "entry[0].resource.category.coding[0].code='51'.exists() "
Expression:   "entry[0].resource.category.coding[0].code='51'.exists() "
*/
Invariant: caregory-check-05-ok
Severity: #error  // OK  よさそう
Description:  "entry[0].resource.category.coding.code='51'.exists() "
Expression:   "entry[0].resource.category.coding.code='51'.exists() "
/**/
Invariant: caregory-check-01-err
Severity: #error  //faild よさそう
Description:  "entry.where(resource.category.coding.code='52').exists() "
Expression:   "entry.where(resource.category.coding.code='52').exists()"

Invariant: caregory-check-02-err
Severity: #error  //faild よさそう
Description:  "entry[0].where(resource.category.coding.code='52').exists() "
Expression:   "entry[0].where(resource.category.coding.code='52').exists()"

Invariant: caregory-check-021-err
Severity: #error    //faild 問題なし
Description:  "entry[1].where(resource.category.coding.code='52').exists() "
Expression:   "entry[1].where(resource.category.coding.code='52').exists()"


Invariant: caregory-check-03-err
Severity: #error  // failになるはずなのにOKになる
Description:  "entry[0].resource.category[0].coding[0].code='52'.exists() "
Expression:   "entry[0].resource.category[0].coding[0].code='52'.exists() "

Invariant: caregory-check-04-err
Severity: #error  // failになるはずなのにOKになる
Description:  "entry[0].resource.category.coding[0].code='52'.exists() "
Expression:   "entry[0].resource.category.coding[0].code='52'.exists() "

Invariant: caregory-check-05-err
Severity: #error  // failになるはずなのにOKになる
Description:  "entry[0].resource.category.coding.code='52'.exists() "
Expression:   "entry[0].resource.category.coding.code='52'.exists() "

Invariant: entry0-exists-check-01
Severity: #error  // OK 
Description:  "entry[0].exists() "
Expression:   "entry[0].exists()"

Invariant: entry1-exists-check-01
Severity: #error  // OK 
Description:  "entry[1].exists() "
Expression:   "entry[1].exists()"

Invariant: entry31-exists-check-01-err
Severity: #error 
Description:  "entry[31].exists() "
Expression:   "entry[31].exists()"