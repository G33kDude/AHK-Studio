social(){
	setup(22)
	Gui,Add,Link,,<a href="http://goo.gl/9odUcj">Google+</a>
	Gui,Add,Link,,<a href="http://www.autohotkey.com/board/topic/85996-ahk-studio/">AutoHotkey.com</a>
	Gui,Add,Link,,<a href="http://ahkscript.org/boards/viewtopic.php?f=6&t=300">ahkscript.com</a>
	Gui,Show,,Social
	Return
	22GuiEscape:
	22GuiClose:
	hwnd({rem:22})
	return
}