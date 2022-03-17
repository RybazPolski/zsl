var gf = {};

class Card{
    constructor(suit, rank){
        this.suit = suit
        this.rank = rank
        switch(rank){
            case 14:
                this.name = "ace";
                break;
            case 13:
                this.name = "king";  
                break;
            case 12:  
                this.name = "queen";  
                break;
            case 11:
                this.name = "jack";
                break;
            default:
                this.name = rank;
        }
        this.imgPth = `graphics/${this.name}_of_${this.suit}.png`;
    }
    set owner(name){
        this.ownedBy=name;
    }
}

class Player{
    constructor(name){
        this.name = name
        this.score = 0;
        this.deck = [];
        this.inGame = true
    }
    eliminate = ()=>{
        this.inGame=false
    }
}

gf.shuffle = (array) => {
    let curIndex = array.length, randIndex;

    while (curIndex != 0) {

        randIndex = Math.floor(Math.random() * curIndex);
        curIndex--;

        [array[curIndex], array[randIndex]] = [
            array[randIndex], array[curIndex]
        ];
    }

    return array;
}

gf.deal = (deck,players)=>{
    deck = gf.shuffle(deck)
    for(let i=0; i<deck.length; i++){
        players[i%players.length].deck.push(deck[i]);
        players[i%players.length].deck[Math.floor(i/players.length)].owner = players[i%players.length].name
    }
}

gf.turnOver = (players,qualifed,trId,row)=>{
    if(!row){
        $('#'+trId).html("")
        let cardsInGame = new Array;
        cardsInGame[row] = new Array;
        for(var player of players){
            if(qualifed.includes(player.name)&&player.inGame){
                cardsInGame[row].push(player.deck.shift())
                let curCard = cardsInGame[row][cardsInGame[row].length-1]
                $('#'+trId).append(`<td><img class="card" src="${curCard.imgPth}" alt="${curCard.name+' of '+curCard.suit}"></td>`)
            }
        }
        let winners = gf.winnersChecker(cardsInGame[row]);
        console.log("Zwycięża gracz "+winners)
        
        if(winners.length==1){
            let toAward = gf.shuffle(cardsInGame[row])
            for(var player of players){
                if(winners.includes(player.name)){
                    for(var card of toAward){
                        card.owner = player.name;
                        player.deck.push(card);
                    }
                }
            }
        }
        gf.updateDecks(players,'count')
        
    }else{
        
    }
}

gf.winnersChecker = (cards)=>{
    var topRank = 0;
    let winners = new Array;
    for(var card of cards){
        if(card.rank>topRank){
            topRank = card.rank
            winners = [card.ownedBy]
        }else if(card.rank==topRank){
            winners.push(card.ownedBy)
        }
    }
    return winners;
}

gf.selectPlayersNames=(players)=>{
    let names = new Array;
    for(var player of players){
        names.push(player.name)
    }
    return names;
}
gf.updateDecks=(players,counters)=>{
    // gf.findDuplicates(players);
    let counter = document.getElementsByClassName(counters)
    let i = 0;
    for(var player of players){
        counter[i].innerHTML = player.deck.length;
        if(player.deck.length<1){
            player.eliminate()
        }
        i++;
    }
}

gf.findDuplicates = (players)=>{
    for(var playerA of players){
        for(var playerB of players){
            if(playerA.name!=playerB.name){
                for(var card of playerB.deck){
                    if(playerA.deck.includes(card)){
                        alert("Znaleziono duplikat! ("+card.name+" of "+card.suit+" u graczy "+playerA.name+" oraz "+playerB.name+")")
                    }else{
                        console.log("OK")
                    }
                }
            }
        }
    }
}