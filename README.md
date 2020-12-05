# JSONTrailingCommaRemover

Sometimes JSON string data are not parsable due to trailing comma.

Trailing comma are authorized in javascript (and [json5](https://json5.org/)) but not in strict JSON parsing like 4D `JSON Parse`

## JSONTrailingCommaRemover

This method use an offline we area and javascript to remove the trailing comma, and provide a parsable string for 4D.

```4d
$fixed:=JSONTrailingCommaRemover($yourJSONString)
$object:=JSON Parse($fixed)
````
