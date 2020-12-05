//%attributes = {}


$jsonText:="{}"
$jsonFixedText:=JSONTrailingCommaRemover($jsonText)
$parsed:=JSON Parse:C1218($jsonFixedText)

ASSERT:C1129($jsonText=$jsonFixedText)


//object


$jsonText:="{\"test\":\"value\"}"
$jsonFixedText:=JSONTrailingCommaRemover($jsonText)
$parsed:=JSON Parse:C1218($jsonFixedText)

ASSERT:C1129($jsonText=$jsonFixedText)  // equal only if compact


$jsonToFixText:="{\"test\":\"value\",}"  // added a trailing object comma
$jsonFixedText:=JSONTrailingCommaRemover($jsonToFixText)
$parsed:=JSON Parse:C1218($jsonFixedText)

ASSERT:C1129($jsonText=$jsonFixedText)  // equal only if compact

// col

$jsonText:="{\"test\":[5,6]}"
$jsonFixedText:=JSONTrailingCommaRemover($jsonText)
$parsed:=JSON Parse:C1218($jsonFixedText)

ASSERT:C1129($jsonText=$jsonFixedText)  // equal only if compact

$jsonToFixText:="{\"test\":[5,6,]}"
$jsonFixedText:=JSONTrailingCommaRemover($jsonToFixText)
$parsed:=JSON Parse:C1218($jsonFixedText)

ASSERT:C1129($jsonText=$jsonFixedText)  // equal only if compact
