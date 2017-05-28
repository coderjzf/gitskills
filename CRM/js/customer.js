function reset(){
	var table=document.getElementsByTagName("table");
	
	for(var i=0;i<table.length;i++){
		table.innerText="";
	}
}





function pageInit(){
	makeYear();
	makeMonth();
	makeDay();
}

function makeYear(){
	var year = document.getElementById("year");
	
	for(var i=1901;i<=2017;i++){
		var option=document.createElement("option");
		option.value=i;
		option.innerText=i;
		
		year.appendChild(option);
	}
}

function makeMonth(){
	var month = document.getElementById("month");
	
	for(var i=2;i<=12;i++){
		var option=document.createElement("option");
		option.value=i;
		option.innerText=i;
		
		month.appendChild(option);
	}
}

function makeDay(){
	var day = document.getElementById("day");
	
	for(var i=2;i<=31;i++){
		var option=document.createElement("option");
		option.value=i;
		option.innerText=i;
		
		day.appendChild(option);
	}
}