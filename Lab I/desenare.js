document.getElementById("id_logic_version").innerHTML = "Bussiness version: 2018.10.22.0";
document.getElementById("id_button").addEventListener("click", start);

function start() 
{
	var canvas = document.getElementById("id_canvas");
	var context = canvas.getContext("2d");
	context.beginPath();
	context.arc(canvas.width / 2, canvas.height / 2, 50, 0, 2 * Math.PI);
	context.stroke();
}