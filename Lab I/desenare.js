document.getElementById("id_logic_version").innerHTML = "Bussiness version: 2018.10.22.1";
document.getElementById("id_button").addEventListener("click", start);

function start() 
{
	var canvas = document.getElementById("id_canvas");
	var context = canvas.getContext("2d");
	var unghi = {valoare:0};

	setInterval(deseneaza_cerc, 10, context, canvas.width, canvas.height, unghi);
}

function deseneaza_cerc(context, w, h, unghi)
{
	context.clearRect(0, 0, w, h);
	context.beginPath();
	context.arc( w / 2 + 100 * Math.cos(unghi.valoare * Math.PI / 180), h / 2 + Math.sin(unghi.valoare * Math.PI / 180) * 100, 50, 0, 2 * Math.PI);
	context.stroke();
	unghi.valoare++;
}