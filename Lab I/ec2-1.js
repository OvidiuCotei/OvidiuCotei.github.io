document.getElementById("id_bussiness_version").innerHTML = "Bussiness version: 2018.10.15.2";

function Citire(){
    var _a = document.getElementById("id_a").value;
    var _b = document.getElementById("id_b").value;
    var _c = document.getElementById("id_c").value;
    var coeficienti = {a:_a, b:_b, c:_c};
    return coeficienti;
}

function Rezolvare(coeficienti){
    var delta = coeficienti.b * coeficienti.b - 4 * coeficienti.a * coeficienti.c;
    var x1_real, x1_imaginar, x2_real, x2_imaginar;
    
    if(delta >= 0)
    {
        x1_real = (-coeficienti.b + Math.sqrt(delta)) / ( 2  * coeficienti.a);
        x2_real = (-coeficienti.b - Math.sqrt(delta)) / ( 2  * coeficienti.a);
        x1_imaginar = x2_imaginar = 0;
    }
    else
    {
        x1_real = -coeficienti.b / (2 * coeficienti.a);
        x1_imaginar = Math.sqrt(-delta) / (2 * coeficienti.a);
        x2_real = -coeficienti.b / (2 * coeficienti.a);
        x2_imaginar = -Math.sqrt(-delta) / (2 * coeficienti.a);
    }
    
    var x1 = {re: x1_real, im:x1_imaginar};
    var x2 = {re:x2_real, re:x2_imaginar};
    
    return solutii;
}

function Afisare(solutii){
    document.getElementById("id_x1").innerHTML = solutii.x1_real + " + " + solutii.x1_imaginar + "i";
    document.getElementById("id_x2").innerHTML = solutii.x2_real + " + " + solutii.x2_imaginar + "i";
}

function Rezolva(){
    var coeficienti =  Citire();
    var solutii =  Rezolvare(coeficienti);
    Afisare(solutii);
}