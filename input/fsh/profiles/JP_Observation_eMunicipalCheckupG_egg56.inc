#define	$$urn   urn:oid:1.2.392.100495.100
#define	$$url   http://jpfhir/eMunicipalCheckup/ValueSet/valueSet

//-----------
#define	$$KN  肝炎ウイルス検診

#define	$$item01	問診肝臓病歴、肝機能が悪いと言われた経験の有無
#define	$$cd01	9P600000000000011
#define	$$oidnum01	2052
#define	$$cs01	$$urn.$$oidnum01
#define	$$vs01	$$url-$$oidnum01


#define	$$item02	問診肝臓病歴、肝機能が悪いと言われた時期
#define	$$cd02	9P601160800000049


#define	$$item03	問診広範な外科的処置歴の有無
#define	$$cd03	9P602000000000011
#define	$$oidnum03	2054
#define	$$cs03	$$urn.$$oidnum03
#define	$$vs03	$$url-$$oidnum03


#define	$$item04	問診広範な外科的処置時期
#define	$$cd04	9P603160800000049


#define	$$item05	問診妊娠・分娩時の多量出血歴の有無
#define	$$cd05	9P604000000000011
#define	$$oidnum05	2054
#define	$$cs05	$$urn.$$oidnum05
#define	$$vs05	$$url-$$oidnum05


#define	$$item06	問診妊娠・分娩時の多量出血の時期
#define	$$cd06	9P605160800000049


#define	$$item07	問診定期的な肝機能検査受診の有無
#define	$$cd07	9P606000000000011
#define	$$oidnum07	2054
#define	$$cs07	$$urn.$$oidnum07
#define	$$vs07	$$url-$$oidnum07


#define	$$item08	問診B型肝炎ウイルス検査の受診歴の有無
#define	$$cd08	9P607000000000011
#define	$$oidnum08	2054
#define	$$cs08	$$urn.$$oidnum08
#define	$$vs08	$$url-$$oidnum08


#define	$$item09	問診B型肝炎ウイルス検査の受診時期
#define	$$cd09	9P608160800000049

#define	$$item10	問診B型肝炎治療歴の有無
#define	$$cd10	9P609000000000011
#define	$$oidnum10	2054
#define	$$cs10	$$urn.$$oidnum10
#define	$$vs10	$$url-$$oidnum10


#define	$$item11	問診B型肝炎治療時期
#define	$$cd11	9P610160800000049


#define	$$item12	問診C型肝炎ウイルス検査の受診歴の有無
#define	$$cd12	9P611000000000011
#define	$$oidnum12	2054
#define	$$cs12	$$urn.$$oidnum12
#define	$$vs12	$$url-$$oidnum12


#define	$$item13	問診C型肝炎ウイルス検査の受診時期
#define	$$cd13	9P612160800000049

#define	$$item14	問診C型肝炎治療歴の有無
#define	$$cd14	9P613000000000011
#define	$$oidnum14	2054
#define	$$cs14	$$urn.$$oidnum14
#define	$$vs14	$$url-$$oidnum14


#define	$$item15	問診C型肝炎治療時期
#define	$$cd15	9P614160800000049

#define	$$item16	B型肝炎ウイルス検査判定
#define	$$cd16	9P615000000000011
#define	$$oidnum16	2640
#define	$$cs16	$$urn.$$oidnum16
#define	$$vs16	$$url-$$oidnum16


#define	$$item17	C型肝炎ウイルス検査判定
#define	$$cd17	9N401000000000011
#define	$$oidnum17	2641
#define	$$cs17	$$urn.$$oidnum17
#define	$$vs17	$$url-$$oidnum17


#define	$$item18	精密検査結果
#define	$$cd18	9P616000000000011
#define	$$oidnum18	2650
#define	$$cs18	$$urn.$$oidnum18
#define	$$vs18	$$url-$$oidnum18


#define	$$item19	精密検査所見
#define	$$cd19	9P617160800000049


//-- ここから
// 肝炎ウイルス検診
// JP_Observation_eMunicipalCheckupG_egg56.incから展開 
* code.coding contains
        obs_$$cd01 0..1
    and obs_$$cd02 0..1
    and obs_$$cd03 0..1
    and obs_$$cd04 0..1
    and obs_$$cd05 0..1
    and obs_$$cd06 0..1
    and obs_$$cd07 0..1
    and obs_$$cd08 0..1
    and obs_$$cd09 0..1
    and obs_$$cd10 0..1
    and obs_$$cd11 0..1
    and obs_$$cd12 0..1
    and obs_$$cd13 0..1
    and obs_$$cd14 0..1   
    and obs_$$cd15 0..1   
    and obs_$$cd16 0..1   
    and obs_$$cd17 0..1   
    and obs_$$cd18 0..1   
    and obs_$$cd19 0..1   

//-- ここから 検査項目JLAC10のsystem urlと項目コード（JLAC10)の出力
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd01)
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd02)
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd03)
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd04)
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd05)
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd06)
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd07)
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd08)
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd09)
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd10)
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd11)
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd12)
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd13)
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd14)
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd15)
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd16)
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd17)
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd18)
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd19)
//--ここまで

//-- ここから
// 肝炎ウイルス検診
// 検診種別ごとに検診 の結果のvalueSet へのbindingを検診項目ごとに異なる制約として定義する
/*
* value[x][valueCodeableConcept].coding contains
        obs_$$cd01 0..1
    and obs_$$cd03 0..1
    and obs_$$cd05 0..1
    and obs_$$cd07 0..1
    and obs_$$cd08 0..1
    and obs_$$cd10 0..1
    and obs_$$cd12 0..1
    and obs_$$cd14 0..1   
    and obs_$$cd16 0..1   
    and obs_$$cd17 0..1   
    and obs_$$cd18 0..1   

* insert valCC_coding_slicing($$cd01, $$cs01, $$vs01)
* insert valCC_coding_slicing($$cd03, $$cs03, $$vs03)
* insert valCC_coding_slicing($$cd05, $$cs05, $$vs05)
* insert valCC_coding_slicing($$cd07, $$cs07, $$vs07)
* insert valCC_coding_slicing($$cd08, $$cs08, $$vs08)
* insert valCC_coding_slicing($$cd10, $$cs10, $$vs10)
* insert valCC_coding_slicing($$cd12, $$cs12, $$vs12)
* insert valCC_coding_slicing($$cd14, $$cs14, $$vs14)
* insert valCC_coding_slicing($$cd16, $$cs16, $$vs16)
* insert valCC_coding_slicing($$cd17, $$cs17, $$vs17)
* insert valCC_coding_slicing($$cd18, $$cs18, $$vs18)
*/
//-- ここまで
