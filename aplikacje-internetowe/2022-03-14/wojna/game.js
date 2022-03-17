var deck = [];
var players = [];

for(let i=2; i<=14; i++){
    deck.push(new Card("hearts",i))
    deck.push(new Card("diamonds",i))
    deck.push(new Card("spades",i))
    deck.push(new Card("clubs",i))
}


function tryStart(){
    let playerFields = document.getElementsByClassName('nicknameField');
    if(playerFields.length>52){
        alert("Za dużo graczy!");
        return 0;
    }
    let approved = [];
    for(var field of playerFields){
        if(field.value.replace(' ','')!="" && !approved.includes(field.value)){
            approved.push(field.value);
        }else{
            alert("Uzupełnij wszystkich graczy. Nazwy graczy nie mogą się powtarzać.")
            break;
        }
    }
    if(playerFields.length==approved.length){
        initialize();
    }
}

function initialize(){
    let playerFields = document.getElementsByClassName('nicknameField');
    for(var field of playerFields){
        players.push(new Player(field.value))
    }
    gf.deal(deck,players)
    $('#titleScreen').css('display','none');

    for(var player of players){
        $('#decks').append(`<td><div class="card"><div class="count">${player.deck.length}</div></div></td>`)    
        $('#players').append(`<td><strong>${player.name}<strong></td>`)    
    }

}
function turnOver(){
    gf.turnOver(players,gf.selectPlayersNames(players),"shownCards",0)
}