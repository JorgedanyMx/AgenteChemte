extends Container

class_name Card

var linkChar = ""
var bgCikir = ""
var resIzq = ""
var resDer = ""

func _ready():
	changeAlphaDer(0)
	changeAlphaIzq(0)

func infoCard(resp1,resp2,bgColor, linkImg):
	changeAlphaIzq(1)
	changeAlphaDer(1)
	if(linkImg!=null):
		$Front/Content.texture = load("linkImg")
	if(bgColor!=null):
		$Front.modulate =Color(bgColor)
	$Front/Content/RespDer/txtRespDer.text=resp1
	$Front/Content/RespIzq/txtRespIzq.text=resp2

func flipFront():
	$Back.visible=false
	$Front.visible=true

func changeAlphaIzq(alp):
	var color=$Front/Content/RespIzq.modulate
	color.a=alp
	$Front/Content/RespIzq.modulate=color
	
func changeAlphaDer(alp):
	var color=$Front/Content/RespDer.modulate
	color.a=alp
	$Front/Content/RespDer.modulate=color
	
func flipBack():
	$Back.visible=true
	$Front.visible=false
