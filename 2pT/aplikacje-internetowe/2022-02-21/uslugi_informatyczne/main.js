function przeslij(){


    if(document.getElementById("regulamin").checked){
        var imie = document.getElementById("imie").value;
        var nazwisko = document.getElementById("nazwisko").value;
        var usluga = document.getElementById("usluga").value;
        
        document.getElementById("result").innerHTML= imie.toUpperCase()+" "+nazwisko.toUpperCase()+"<br>Treść Twojej sprawy: "+usluga+"<br>Na podany e-mail zostanie wysłana oferta.";
    }else{
        document.getElementById("result").innerHTML= "<span style='color:red;'>Musisz zapoznać się z regulaminem</span>";
    }


}