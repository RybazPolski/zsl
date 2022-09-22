var extension_part1 = `

  <h1>Wyszukiwanie</h1>
  <input type="text" placeholder="Nauczyciel/sala" style="width: auto;" id="query">
  <a class="plan_menu_link" href="#query" title="Wyświetl plan nauczyciela/sali" onclick="searchPlan()">&#187; Szukaj</a>
  <a href="#" id="clickme"></a>

`;

var extension_part2 = `

<h1 id="quered"><span style="color: red;">Wpisz zapytanie wyszukiwania!</span></h1>
    
    
        <table border="1">
        <tbody><tr class="naglowek">
        <th></th>
        <th></th>
        <th>Poniedziałek</th>
        <th>Wtorek</th>
        <th>Środa</th>
        <th>Czwartek</th>
        <th>Piątek</th>
        
        
        </tr>
    <tr class="plan_kolor2">
    
            <td style="text-align:center;">1</td>
            <td style="width:12%; text-align:center;">07:20-08:05</td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    </tr>
    <tr class="plan_kolor1">
    
            <td style="text-align:center;">2</td>
            <td style="width:12%; text-align:center;">08:10-08:55</td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    </tr>
    <tr class="plan_kolor2">
    
            <td style="text-align:center;">3</td>
            <td style="width:12%; text-align:center;">09:05-09:50</td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    </tr>
    <tr class="plan_kolor1">
    
            <td style="text-align:center;">4</td>
            <td style="width:12%; text-align:center;">10:00-10:45</td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    </tr>
    <tr class="plan_kolor2">
    
            <td style="text-align:center;">5</td>
            <td style="width:12%; text-align:center;">11:00-11:45</td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    </tr>
    <tr class="plan_kolor1">
    
            <td style="text-align:center;">6</td>
            <td style="width:12%; text-align:center;">11:55-12:40</td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    </tr>
    <tr class="plan_kolor2">
    
            <td style="text-align:center;">7</td>
            <td style="width:12%; text-align:center;">13:00-13:45</td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    </tr>
    <tr class="plan_kolor1">
    
            <td style="text-align:center;">8</td>
            <td style="width:12%; text-align:center;">14:05-14:50</td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    </tr>
    <tr class="plan_kolor2">
    
            <td style="text-align:center;">9</td>
            <td style="width:12%; text-align:center;">15:00-15:45</td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    </tr>
    <tr class="plan_kolor1">
    
            <td style="text-align:center;">10</td>
            <td style="width:12%; text-align:center;">15:55-16:40</td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    </tr>
    <tr class="plan_kolor2">
    
            <td style="text-align:center;">11</td>
            <td style="width:12%; text-align:center;">16:45-17:30</td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    </tr>
    <tr class="plan_kolor1">
    
            <td style="text-align:center;">12</td>
            <td style="width:12%; text-align:center;">17:35-18:20</td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    </tr>
    <tr class="plan_kolor2">
    
            <td style="text-align:center;">13</td>
            <td style="width:12%; text-align:center;">18:25-19:10</td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    </tr>
    <tr class="plan_kolor1">
    
            <td style="text-align:center;">14</td>
            <td style="width:12%; text-align:center;">19:15-20:00</td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    </tr>
    <tr class="plan_kolor2">
    
            <td style="text-align:center;">15</td>
            <td style="width:12%; text-align:center;">20:05-20:50</td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    <td style="width:17%;" class="qLekcja"></td>
    </tr>
    </tbody></table>

`;

extension_script = `

function searchPlan(){
    var i = 0;
    var el = [];
    var satisfy = [];
    var q = document.getElementById("query").value;
    if(q.length==0){
      document.getElementById("quered").innerHTML='<span style="color: red;">Wpisz zapytanie wyszukiwania!</span>';
    }else{
      document.getElementById("quered").innerHTML=q+' - plan lekcji';
      var plan = document.querySelectorAll(".lekcja");
      for(el[i] of plan){
          if(el[i].innerHTML.search(q)!=-1){
              satisfy.push(i);
          }
          i++;
      }
    
      var puste = '<td style="width:17%;" class="lekcja"></td>';
      var dodatkowe = document.querySelectorAll(".qLekcja");
    
      for(var clr of dodatkowe){
          clr.innerHTML = puste;
      }
    
      var dodatkowe = document.querySelectorAll(".qLekcja");
      for(var index of satisfy){
          dodatkowe[index % 75].innerHTML = plan[index].innerHTML ;
      }
    }
  }

`;


var plan_menu = document.getElementById("plan_menu");
var plan_plany = document.getElementById("plan_plany");

var s = document.createElement("script");
plan_menu.after(s);
s.type="text/javascript";
s.innerHTML=extension_script;

var p1 = document.createElement("div");
plan_menu.after(p1);
p1.className = "panelDodatkowy";
p1.id = "plan_menu";
p1.innerHTML = extension_part1;

var p2 = document.createElement("div");
plan_plany.append(p2);
p2.className = "plan_plan";
p2.lang = "query";
p2.innerHTML = extension_part2;

document.getElementById("clickme").click();