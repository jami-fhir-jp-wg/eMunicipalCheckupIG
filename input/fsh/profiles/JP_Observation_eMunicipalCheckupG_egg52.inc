
#define	$$urn   urn:oid:1.2.392.100495.100.
#define	$$url   http://jpfhir/eMunicipalCheckup/ValueSet/valueSet

//----------
#define	$$KN    乳がん検診

#define	$$item	過去の受診歴
#define	$$oidnum	2000
#define	$$cd$$KN_$$item	9P520000000000011
#define	$$cs$$KN_$$item	$$urn.$$oidnum
#define	$$cd$$KN_$$item	$$url-$$oidnum
#define $$item01    $$item

#define	$$item	がんに係る症状の有無
#define	$$oidnum	2052
#define	$$cd$$KN_$$item	9P521000000000011
#define	$$cs$$KN_$$item	$$urn.$$oidnum
#define	$$vs$$KN_$$item	$$url-$$oidnum
#define $$item02    $$item

#define	$$item	マンモグラフィー検査判定
#define	$$cd$$KN_$$item	9N281000000000011
#define	$$oidnum	2200
#define	 $$cs$$KN_$$item	$$urn.$$oidnum
#define	$$vs$$KN_$$item	$$url-$$oidnum
#define $$item03    $$item

#define	$$item	マンモグラフィー検査所見
#define	$$cd$$KN_$$item	9N281160800000049
#define $$item04    $$item

#define	$$item	精密検査対象有無 
#define	$$cd$$KN_$$item	9P522000000000011
#define	$$oidnum	2240
#define	$$cs$$KN_$$item	$$urn.$$oidnum
#define	$$vs$$KN_$$item	$$url-$$oidnum
#define $$item05    $$item

#define	$$item	その他所見
#define	$$cd$$KN_$$item	9P523160800000049
#define $$item06    $$item

#define	$$item	偶発症の有無
#define	$$cd$$KN_$$item	9P524000000000011
#define	$$oidnum	2010
#define	 $$cs$$KN_$$item	$$urn.$$oidnum
#define	$$vs$$KN_$$item	$$url-$$oidnum
#define $$item07    $$item

#define	$$item	精密検査結果
#define	$$cd$$KN_$$item	9P525000000000011
#define	$$oidnum	2250
#define	 $$cs$$KN_$$item	$$urn.$$oidnum
#define	$$vs$$KN_$$item	$$url-$$oidnum
#define $$item08    $$item

#define	$$item	精密検査所見
#define	$$cd$$KN_$$item	9P526160800000049
#define $$item09    $$item

#define	$$item	精密検査による偶発症の有無
#define	$$cd$$KN_$$item	9P527000000000011
#define	$$oidnum	2011
#define	 $$cs$$KN_$$item	$$urn.$$oidnum
#define	$$vs$$KN_$$item	$$url-$$oidnum
#define $$item10    $$item

// JP_Observation_eMunicipalCheckupG_egg52.incから展開 
* code.coding contains
        obs_$$cd$$KN_$$item01 0..1
    and obs_$$cd$$KN_$$item02 0..1
    and obs_$$cd$$KN_$$item03 0..1
    and obs_$$cd$$KN_$$item04 0..1
    and obs_$$cd$$KN_$$item05 1..1
    and obs_$$cd$$KN_$$item06 0..1
    and obs_$$cd$$KN_$$item07 0..1
    and obs_$$cd$$KN_$$item08 1..1
    and obs_$$cd$$KN_$$item09 0..1
    and obs_$$cd$$KN_$$item10 0..1

//-- ここから 検査項目JLAC10のsystem urlと項目コード（JLAC10)の出力
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd$$KN_$$item01)
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd$$KN_$$item02)
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd$$KN_$$item03)
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd$$KN_$$item04)
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd$$KN_$$item05)
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd$$KN_$$item06)
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd$$KN_$$item07)
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd$$KN_$$item08)
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd$$KN_$$item09)
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd$$KN_$$item10)
//--ここまで



// 検診種別ごとに検診 の結果のvalueSetを検診項目ごとに異なる制約を定義する
//-- ここから
// 乳がん検診
* value[x][valueCodeableConcept].coding contains
        obs_$$cd$$KN_$$item01 0..1
    and obs_$$cd$$KN_$$item02 0..1
    and obs_$$cd$$KN_$$item03 0..1
    and obs_$$cd$$KN_$$item05 1..1
    and obs_$$cd$$KN_$$item07 0..1
    and obs_$$cd$$KN_$$item08 1..1
    and obs_$$cd$$KN_$$item10 0..1

* insert valCC_coding_slicing($$cd$$KN_item01,$$cs$$KN_item01,$$vs$$KN_item01)
* insert valCC_coding_slicing($$cd$$KN_item02, $$cs$$KN_item02, $$vs$$KN_item02)
* insert valCC_coding_slicing($$cd$$KN_item03, $$cs$$KN_item03, $$vs$$KN_item03)
* insert valCC_coding_slicing($$cd$$KN_item05, $$cs$$KN_item05, $$vs$$KN_item05)
* insert valCC_coding_slicing($$cd$$KN_item06, $$cs$$KN_item06, $$vs$$KN_item06)
* insert valCC_coding_slicing($$cd$$KN_item08, $$cs$$KN_item08, $$vs$$KN_item08)
* insert valCC_coding_slicing($$cd$$KN_item10, $$cs$$KN_item10, $$vs$$KN_item10)

//-- ここまで
