Instance: example03
InstanceOf: Organization
Usage: #example
Description: "例3 Organizationリソース_作成組織情報_記述例"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>厚生労働省第一病院（1311234567）</p><p>〒100-0001 東京都千代田区千代田９－９－９</p><p>0123-456-7890</p></div>"
* identifier.system = "urn:oid:1.2.392.200119.6.102"
* identifier.value = "1311234567"
* type = $organization-type#prov
* name = "厚生労働省第一病院"
* telecom.system = #phone
* telecom.value = "0123-456-7890"
* address.text = "東京都千代田区千代田９－９－９"
* address.postalCode = "100-0001"
* address.country = "JP"