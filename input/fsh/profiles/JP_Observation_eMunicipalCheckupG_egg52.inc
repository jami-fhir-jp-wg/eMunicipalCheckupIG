#define $$KN  乳がん検診

#define $$cd$$KN_過去の受診歴  9P520000000000011

#define  $$cd$$KN_過去の受診歴	9P520000000000011
#define  $$cd$$KN_がんに係る症状の有無	9P521000000000011
#define  $$cd$$KN_マンモグラフィー検査判定	9N281000000000011
#define  $$cd$$KN_マンモグラフィー検査所見	9N281160800000049
#define  $$cd$$KN_精密検査対象有無	9P522000000000011
#define  $$cd$$KN_その他所見	9P523160800000049
#define  $$cd$$KN_偶発症の有無	9P524000000000011
#define  $$cd$$KN_精密検査結果	9P525000000000011
#define  $$cd$$KN_精密検査所見	9P526160800000049
#define  $$cd$$KN_精密検査による偶発症の有無	9P527000000000011


// JP_Observation_eMunicipalCheckupG_egg52.incから展開 
* code.coding contains
        obs_$$cd$$KN_過去の受診歴 0..1
    and obs_$$cd$$KN_乳がんに係る症状の有無 0..1
    and obs_$$cd$$KN_喫煙指数 0..1
    and obs_$$cd$$KN_胸部エックス線検査判定 0..1
    and obs_$$cd$$KN_胸部エックス線検査所見 0..1
    and obs_$$cd$$KN_喀痰検査受診日 0..1
    and obs_$$cd$$KN_喀痰検査判定 0..1
    and obs_$$cd$$KN_喀痰検査所見 0..1
    and obs_$$cd$$KN_精密検査対象有無 0..1
    and obs_$$cd$$KN_その他所見 0..1
    and obs_$$cd$$KN_偶発症の有無 0..1
    and obs_$$cd$$KN_精密検査結果 0..1
    and obs_$$cd$$KN_精密検査その他所見 0..1
    and obs_$$cd$$KN_精密検査による偶発症の有無  0..1   

//
* code.coding[obs_$$cd$$KN_過去の受診歴]
  * system = $EMCUPX_observation_codes_cs
  * code = #$$cd$$KN_過去の受診歴  (exactly)  //  "$$KN_過去の受診歴"    // 乳がん一次検診,問診,CD,urn:oid:1.2.392.100495.100.2000

* code.coding[obs_$$cd$$KN_乳がんに係る症状の有無]
  * system = $EMCUPX_observation_codes_cs
  * code = #$$cd$$KN_乳がんに係る症状の有無 (exactly) //   "$$KN_乳がんに係る症状の有無"    // 乳がん一次検診,問診,CD,urn:oid:1.2.392.100495.100.2052

* code.coding[obs_$$cd$$KN_喫煙指数]
  * system = $EMCUPX_observation_codes_cs
  * code = #$$cd$$KN_喫煙指数  (exactly) //   "$$KN_喫煙指数"    // 乳がん一次検診,問診,PQ,

* code.coding[obs_$$cd$$KN_胸部エックス線検査判定]
  * system = $EMCUPX_observation_codes_cs
  * code = #$$cd$$KN_胸部エックス線検査判定  (exactly) //   "$$KN_胸部エックス線検査判定"    // 乳がん一次検診,胸部エックス線検査,CD,urn:oid:1.2.392.100495.100.2100

* code.coding[obs_$$cd$$KN_胸部エックス線検査所見]
  * system = $EMCUPX_observation_codes_cs
  * code = #$$cd$$KN_胸部エックス線検査所見   (exactly) // 乳がん一次検診,胸部エックス線検査,ST,

* code.coding[obs_$$cd$$KN_喀痰検査受診日]
  * system = $EMCUPX_observation_codes_cs
  * code = #$$cd$$KN_喀痰検査受診日  (exactly) //   "$$KN_喀痰検査受診日"    // 乳がん一次検診,喀痰検査,ST,
* code.coding[obs_$$cd$$KN_喀痰検査判定]
  * system = $EMCUPX_observation_codes_cs
  * code = #$$cd$$KN_喀痰検査判定  (exactly) //   "$$KN_喀痰検査判定"    // 乳がん一次検診,喀痰検査,CD,urn:oid:1.2.392.100495.100.2101

* code.coding[obs_$$cd$$KN_喀痰検査所見]
  * system = $EMCUPX_observation_codes_cs
  * code = #$$cd$$KN_喀痰検査所見  (exactly)  //   "$$KN_喀痰検査所見"    // 乳がん一次検診,喀痰検査,ST,
* code.coding[obs_$$cd$$KN_精密検査対象有無]
  * system = $EMCUPX_observation_codes_cs
  * code = #$$cd$$KN_精密検査対象有無  (exactly)  //   "$$KN_精密検査対象有無"    // 乳がん一次検診,検診結果,CD,urn:oid:1.2.392.100495.100.2140

* code.coding[obs_$$cd$$KN_その他所見]
  * system = $EMCUPX_observation_codes_cs
  * code = #$$cd$$KN_その他所見  (exactly)  //   "$$KN_その他所見"    // 乳がん一次検診,検診結果,ST,
* code.coding[obs_$$cd$$KN_偶発症の有無]
  * system = $EMCUPX_observation_codes_cs
  * code = #$$cd$$KN_偶発症の有無  (exactly)     // 乳がん一次検診,検診結果,CD,urn:oid:1.2.392.100495.100.2010

* code.coding[obs_$$cd$$KN_精密検査結果]
  * system = $EMCUPX_observation_codes_cs
  * code = #$$cd$$KN_精密検査結果  (exactly)  //   "$$KN_精密検査結果"    // 乳がん精密検査,検診結果,CD,urn:oid:1.2.392.100495.100.2150

* code.coding[obs_$$cd$$KN_精密検査その他所見]
  * system = $EMCUPX_observation_codes_cs
  * code = #$$cd$$KN_精密検査その他所見  (exactly)  //   "$$KN_精密検査その他所見"    // 乳がん精密検査,検診結果,ST,
* code.coding[obs_$$cd$$KN_精密検査による偶発症の有無]
  * system = $EMCUPX_observation_codes_cs
  * code = #$$cd$$KN_精密検査による偶発症の有無  (exactly)  //   "$$KN_精密検査による偶発症の有無"    // 乳がん精密検査,検診結果,CD,urn:oid:1.2.392.100495.100.2011
//--ここまで


// 検診種別ごとに検診 の結果のvalueSetを検診項目ごとに異なる制約を定義する
//-- ここから
// 乳がん検診
* value[x][valueCodeableConcept].coding contains
        obs_$$cd$$KN_過去の受診歴 0..1
    and obs_$$cd$$KN_乳がんに係る症状の有無 0..1
    and obs_$$cd$$KN_胸部エックス線検査判定 0..1
    and obs_$$cd$$KN_喀痰検査判定 0..1
    and obs_$$cd$$KN_精密検査対象有無 0..1
    and obs_$$cd$$KN_偶発症の有無 0..1
    and obs_$$cd$$KN_精密検査結果 0..1
    and obs_$$cd$$KN_精密検査による偶発症の有無  0..1   

* value[x][valueCodeableConcept].coding[obs_$$cd$$KN_過去の受診歴]
  * system = "$$csys$$KN_過去の受診歴"  (exactly)
  * code from $$vset$$KN_過去の受診歴 (required)
* value[x][valueCodeableConcept].coding[obs_$$cd$$KN_乳がんに係る症状の有無]
  * system = "$$csys$$KN_乳がんに係る症状の有無" (exactly)
  * code from $$vset$$KN_乳がんに係る症状の有無 (required) 
* value[x][valueCodeableConcept].coding[obs_$$cd$$KN_胸部エックス線検査判定]
  * system = "$$csys$$KN_胸部エックス線検査判定" (exactly)
  * code from $$vset$$KN_胸部エックス線検査判定 (required)
* value[x][valueCodeableConcept].coding[obs_$$cd$$KN_喀痰検査判定]
  * system = "$$csys$$KN_喀痰検査判定" (exactly)
  * code from $$vset$$KN_喀痰検査判定 (required)
* value[x][valueCodeableConcept].coding[obs_$$cd$$KN_精密検査対象有無]
  * system = "$$csys$$KN_精密検査対象有無" (exactly)
  * code from $$vset$$KN_精密検査対象有無 (required)
* value[x][valueCodeableConcept].coding[obs_$$cd$$KN_偶発症の有無]
  * system = "$$csys$$KN_偶発症の有無" (exactly)
  * code from $$vset$$KN_偶発症の有無 (required)
* value[x][valueCodeableConcept].coding[obs_$$cd$$KN_精密検査結果]
  * system = "$$csys$$KN_精密検査結果" (exactly)
  * code from $$vset$$KN_精密検査結果 (required)
* value[x][valueCodeableConcept].coding[obs_$$cd$$KN_精密検査による偶発症の有無]
  * system = "$$csys$$KN_精密検査による偶発症の有無"  (exactly)
  * code from $$vset$$KN_精密検査による偶発症の有無 (required)
//-- ここまで
