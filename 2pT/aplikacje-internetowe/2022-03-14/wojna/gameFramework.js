

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

class GameFramework{

shuffle = (array) => {
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

deal = (deck,players)=>{
    deck = this.shuffle(deck)
    for(let i=0; i<deck.length; i++){
        players[i%players.length].deck.push(deck[i]);
        players[i%players.length].deck[Math.floor(i/players.length)].owner = players[i%players.length].name
    }
}

turnOver = (players,trId,row)=>{
    if(!row){
        var trHtml ="";
        for(var player of players){
            trHtml=trHtml+`<td id="${player.name}"></td>`
        }
        $('#'+trId).html(trHtml)
        let cardsInGame = new Array;
        cardsInGame[row] = new Array;
        for(var player of players){
            if(player.inGame){
                cardsInGame[row].push(player.deck.shift())
                let curCard = cardsInGame[row][cardsInGame[row].length-1]
                $('#'+player.name).append(`<img class="card" src="${curCard.imgPth}" alt="${curCard.name+' of '+curCard.suit}">`)
            }
        }
        let winners = this.winnersChecker(cardsInGame[row]);
        console.log("Zwycięża gracz "+winners)
        
        if(winners.length==1){
            let toAward = this.shuffle(cardsInGame[row])
            for(var player of players){
                if(winners.includes(player.name)){
                    for(var card of toAward){
                        card.owner = player.name;
                        player.deck.push(card);
                    }
                }
            }
        }else{
            // for(var player of players){
            //     if(winners.includes(player.name)){
            //         for(var card of cardsInGame){
            //             card.owner = player.name;
            //             player.deck.push(card);
            //         }
            //     }
            // }

            console.log("remis")
            this.war(players,winners,row+1,cardsInGame)

        }
        this.updateDecks(players,'count')
        
    }else{
        
    }
}

winnersChecker = (cards)=>{
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

selectPlayersNames=(players)=>{
    let names = new Array;
    for(var player of players){
        names.push(player.name)
    }
    return names;
}
updateDecks=(players,counters)=>{
    // this.findDuplicates(players);
    let counter = document.getElementsByClassName(counters)
    let i = 0;
    for(var player of players){
        counter[i].innerHTML = player.deck.length;
        if(player.deck.length<1){
            counter[i].parentElement.style.opacity=0.5
            player.eliminate()
        }
        i++;
        console.log(`player ${player.name} has ${player.deck.length} cards`)
    }
    this.tryEnd(players)
    
    
}

findDuplicates = (players)=>{
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

war = (players,qualified,row,cardsInGame)=>{
    cardsInGame[row] = new Array;
    cardsInGame[row+1] = new Array;
    for(var player of players){
        if((player.deck.length<2||!player.inGame)&&qualified.includes(player.name)){
            console.log('Gracz '+player.name+" nie może wojować!")
            qualified.unshift(player.name)
        }
    }
    console.log(qualified)
    for(var player of players){
        if(qualified.includes(player.name)&&player.inGame){
            cardsInGame[row].push(player.deck.pop())
            cardsInGame[row+1].push(player.deck.pop())
            let hiddenCard = cardsInGame[row][cardsInGame[row].length-1]
            let curCard = cardsInGame[row+1][cardsInGame[row].length-1]
            $('#'+player.name).append(`<br><img class="card" src="graphics/back.png" style="margin-top:-10vh" alt="hiddenCard">`)
            $('#'+player.name).append(`<br><img class="card" src="${curCard.imgPth}" style="margin-top:-10vh" alt="${curCard.name+' of '+curCard.suit}">`)
        }
    }
    this.updateDecks(players,'count')
    let winners = this.winnersChecker(cardsInGame[row+1])
    console.log(cardsInGame)
    console.log("Zwycięża gracz "+winners)

    if(winners.length==1){
        for(var toAward of cardsInGame){
            toAward = this.shuffle(toAward)
            for(var player of players){
                if(winners.includes(player.name)){
                    for(var card of toAward){
                        card.owner = player.name;
                        player.deck.push(card);
                    }
                }
            }
        }
    }else{
        this.war(players,winners,row+2,cardsInGame)
    }

}
countInGame = (players)=>{
    let i = 0;
    for(var player of players){
        if(player.inGame){
            i++
        }
    }
    return i;
}
findFirstAlive = (players)=>{
    for(var player of players){
        if(player.inGame){
            return player;
        }
    }
}
tryEnd = (players)=>{
    if(this.countInGame(players)<=1){
        $("#winner").html(`${this.findFirstAlive(players).name}!`)
        $('#winnerSplash').css('display','block')
        console.log("passed")
    }else{
        console.log("passedn't")
    }
}
}