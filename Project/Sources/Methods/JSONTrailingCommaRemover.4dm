//%attributes = {"shared":true,"preemptive":"capable"}
#DECLARE ($jsonToFixText : Text)->$jsonText : Text
$jsonText:=cs:C1710.JSONFix.new($jsonToFixText).run()
