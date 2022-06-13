var cena

function suma(){
    cena = 0
    if(document.getElementById("peeling").checked == true){
        cena = cena + 45
    }
    if(document.getElementById("maska").checked == true){
        cena = cena + 30
    }
    if(document.getElementById("masaz").checked == true){
        cena = cena + 20
    }
    if(document.getElementById("brwi").checked == true){
        cena = cena + 5
    }
    document.getElementById("cena").innerText = "Cena zabiegów: " + cena + "zł"
}