var contenedor = document;
function tree(ID_MENU,TREE_ITEMS,TREE_Images, cont){
	if(cont)contenedor=cont;
	contenedor.getElementById(ID_MENU).innerHTML = "";  
	this.Tree_images=TREE_Images;
	this.tree_items=TREE_ITEMS;
	this.TreeObjectCurrent=this;
	this.elementos=[];
	this.tm6=null;
	this.indicador=-1;
	var imgIcon_E=new Image(),
		imgIcon_L=new Image();
	imgIcon_E.src=TREE_Images['icon_e'];
	imgIcon_L.src=TREE_Images['icon_l'];
	TREE_Images['im_e']=imgIcon_E;
	TREE_Images['im_l']=imgIcon_L;
	for(var i=0;i<64;i++)
		if(TREE_Images['icon_'+i]){
			var imgTemporal=new Image();
			TREE_Images['im_'+i]=imgTemporal;
			imgTemporal.src=TREE_Images['icon_'+i]
		}
	this.abrirCarpeta=function(tree_count){
		var elemento=this.elementos[tree_count];
		elemento.tmE(elemento.tmF)
	};
	this.SeleccionarCarpeta=function(tree_count){
		return this.elementos[tree_count].SeleccionarCarpeta()
	};
	this.onEventMouseOut=function(tree_count){
		this.elementos[tree_count].tmI(true)
	};
	this.onEventMouseOver=function(tree_count){
		this.elementos[tree_count].tmI()
	};
	this.tmK=[];
	for(var i=0;i<TREE_ITEMS.length;i++)
		new setElementos(this,i);
	this.tree_count=trees.length;
	trees[this.tree_count]=this;
	for(var i=0;i<this.tmK.length;i++){
		contenedor.getElementById(ID_MENU).innerHTML += (this.tmK[i].tmM());
		this.tmK[i].tmE()
	}
	
	//desplegar(3, this.tree_count);
	
		for(i=0;i<this.elementos.length;i++){
			try{
				trees[this.tree_count].abrirCarpeta(i);
			}catch(e){}
		}
	
	
}
function setElementos(TreeObject,indice){
	this.indicador=TreeObject.indicador+1;
	this.tree_items=TreeObject.tree_items[indice+(this.indicador?2:0)];
	if(!this.tree_items)
		return;
	this.TreeObjectCurrent=TreeObject.TreeObjectCurrent;
	this.TreeObject=TreeObject;
	this.indice=indice;
	this.tmF=!this.indicador;
	this.tree_count=this.TreeObjectCurrent.elementos.length;
	this.TreeObjectCurrent.elementos[this.tree_count]=this;
	TreeObject.tmK[indice]=this;
	this.tmK=[];
	for(var i=0;i<this.tree_items.length-2;i++)
		new setElementos(this,i);
	this.tmP=tmQ;
	this.tmE=tmR;
	this.SeleccionarCarpeta=tmS;
	this.tmM=tmT;
	this.tmI=setTimeOut;
	this.tmV=function(){
		return this.indice==this.TreeObject.tmK.length-1
	}
}

function tmR(tmW){
	var tmX=getElementoMenu('i_div'+this.TreeObjectCurrent.tree_count+'_'+this.tree_count);
	if(!tmX)return;
	if(!tmX.innerHTML){
		var tmK=[];
		for(var i=0;i<this.tmK.length;i++)
			tmK[i]=this.tmK[i].tmM();
		tmX.innerHTML=tmK.join('')
	}
	//tmX.style.display=(tmW?'none':'block');
	this.tmF=!tmW;
	var tmZ=contenedor.images['j_img'+this.TreeObjectCurrent.tree_count+'_'+this.tree_count],
		imgTemporal=contenedor.images['i_img'+this.TreeObjectCurrent.tree_count+'_'+this.tree_count];
	if(tmZ)tmZ.src=this.tmP(true);
	if(imgTemporal)imgTemporal.src=this.tmP();
	this.tmI()
}
function tmS(abrirCarpeta){
	if(!abrirCarpeta){
		var tree_count=this.TreeObjectCurrent.tm6;
		this.TreeObjectCurrent.tm6=this;
		if(tree_count)tree_count.SeleccionarCarpeta(true)
	}
	var imgTemporal=contenedor.images['i_img'+this.TreeObjectCurrent.tree_count+'_'+this.tree_count];
	if(imgTemporal)imgTemporal.src=this.tmP();
	getElementoMenu('i_txt'+this.TreeObjectCurrent.tree_count+'_'+this.tree_count).style.fontWeight=abrirCarpeta?'normal':'bold';
	this.tmI();
	return Boolean(this.tree_items[1])
}
function setTimeOut(elemento){
	window.setTimeout('window.status="'+(elemento?'':this.tree_items[0]+(this.tree_items[1]?' ('+this.tree_items[1]+')':''))+'"',10)
}
function tmT(){
	var tme=[],tmf=this.TreeObject;
	for(var i=this.indicador;i>1;i--){
		tme[i]='<img src="'+this.TreeObjectCurrent.Tree_images[tmf.tmV()?'icon_e':'icon_l']+'" border="0" align="absbottom">';
		tmf=tmf.TreeObject
	}
	return '<table cellpadding="0" cellspacing="0" border="0"><tr><td nowrap>'+(this.indicador?tme.join('')+(this.tmK.length?'<a href="javascript: trees['+this.TreeObjectCurrent.tree_count+'].abrirCarpeta('+this.tree_count+')" onmouseover="trees['+this.TreeObjectCurrent.tree_count+'].onEventMouseOver('+this.tree_count+')" onmouseout="trees['+this.TreeObjectCurrent.tree_count+'].onEventMouseOut('+this.tree_count+')"><img src="'+this.tmP(true)+'" border="0" align="absbottom" name="j_img'+this.TreeObjectCurrent.tree_count+'_'+this.tree_count+'" ></a>':'<img src="'+this.tmP(true)+'" border="0" align="absbottom">'):'')+'<a href="'+this.tree_items[1]+'" target="'+this.TreeObjectCurrent.Tree_images['target']+'" onclick="Rix.CloseMessageBar(); return trees['+this.TreeObjectCurrent.tree_count+'].SeleccionarCarpeta('+this.tree_count+');" ondblclick="trees['+this.TreeObjectCurrent.tree_count+'].abrirCarpeta('+this.tree_count+')" onmouseover="trees['+this.TreeObjectCurrent.tree_count+'].onEventMouseOver('+this.tree_count+')" onmouseout="trees['+this.TreeObjectCurrent.tree_count+'].onEventMouseOut('+this.tree_count+')" class="t'+this.TreeObjectCurrent.tree_count+'i" id="i_txt'+this.TreeObjectCurrent.tree_count+'_'+this.tree_count+'"><img src="'+this.tmP()+'" border="0" align="absbottom" name="i_img'+this.TreeObjectCurrent.tree_count+'_'+this.tree_count+'" class="t'+this.TreeObjectCurrent.tree_count+'im">'+this.tree_items[0]+'</a></td></tr></table>'+(this.tmK.length?'<div id="i_div'+this.TreeObjectCurrent.tree_count+'_'+this.tree_count+'" ></div>':'')
}
function tmQ(SeleccionarCarpeta){
	return this.TreeObjectCurrent.Tree_images['icon_'+((this.indicador?0:32)+(this.tmK.length?16:0)+(this.tmK.length&&this.tmF?8:0)+(!SeleccionarCarpeta&&this.TreeObjectCurrent.tm6==this?4:0)+(SeleccionarCarpeta?2:0)+(SeleccionarCarpeta&&this.tmV()?1:0))]
}
var trees=[];
getElementoMenu=contenedor.all?function(tmh){
		return contenedor.all[tmh]
	}:function(tmh){
		return contenedor.getElementById(tmh)
	};
	
function desplegar(parametro, indiceTree){
	
	try{
		if(indiceTree==null)indiceTree=0; 
		trees[indiceTree].abrirCarpeta(parametro) /* Desplegar una carpeta */ 
	}catch(e){}
}

function marcarItem(parametro, indiceTree){
	try{ 
		if(indiceTree==null)indiceTree=0; 
		trees[indiceTree].SeleccionarCarpeta(parametro); 
	}catch(e){}
}

