var oblicz = ()=>{
    weight = parseFloat(document.getElementById('weight').value);
height = parseFloat(document.getElementById('height').value);
bmi = weight/(height*height)*10000
document.getElementById('res').innerHTML= `Twoja waga ${weight}; Twój wzrost ${height}<br>BMI wynosi: ${bmi}`
}