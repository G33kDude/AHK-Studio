new(filename=""){
	if (filename=1){
		index:=0
		if !FileExist(A_WorkingDir "\Projects")
			FileCreateDir,% A_WorkingDir "\Projects"
		if !FileExist(A_WorkingDir "\Projects\Untitled")
			FileCreateDir,% A_WorkingDir "\Projects\Untitled"
		while,FileExist(A_WorkingDir "\Projects\Untitled\Untitled" A_Index)
			index:=A_Index
		index++
		FileCreateDir,% A_WorkingDir "\Projects\Untitled\Untitled" index
		filename:=A_WorkingDir "\Projects\Untitled\Untitled" index "\Untitled.ahk"
		FileAppend,`;New File,%filename%
	}else if (filename=""){
		FileSelectFile,filename,S,,Create A New Project,*.ahk
		if ErrorLevel
			return
		filename:=InStr(filename,".ahk")?filename:filename ".ahk"
		template:=settings.ssn("//template").text?settings.ssn("//template").text:"`;New File"
		FileAppend,%template%,%filename%
	}
	Gui,1:Default
	Gui,1:TreeView,SysTreeView321
	root:=open(filename,1)
	SetTimer,selectnewfile,100
	return
	selectnewfile:
	SetTimer,selectnewfile,Off
	tv(root)
	return
}