Instance: example08
InstanceOf: Observation
Usage: #example
Description: "例8　Observationリソース_健診項目_記述例 定量数値結果"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li>骨粗鬆症検診のDXA検査骨量値 80.4 %YAM</li></ul></div>"
* status = #final
* category = $observation-category#imaging
* code = $jlac10_cs#9Z507195600000001 "骨粗鬆症検診のDXA検査骨量値"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* valueQuantity = 95 '{%YAM}' "%YAM"
* interpretation = $v3-ObservationInterpretation#N
* referenceRange.low = 80 '{%YAM}' "%YAM"
* referenceRange.high = 100 '{%YAM}' "%YAM"