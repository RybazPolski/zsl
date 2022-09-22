var gallery = {}

gallery.images = ['cat1','cat2','cat3','cat4','cat5','cat6','cat7']
gallery.curImg = 0

gallery.moveImages = (back=false)=>{
    if(back){
        var space = -1 
    }else{
        var space = 1
    }
    gallery.curImg+=space
    gallery.curImg = gallery.curImg < 0 ? gallery.images.length + gallery.curImg : gallery.curImg
    gallery.curImg %= 7
    let imgs = document.getElementsByClassName('imageList')
    let toSet = gallery.curImg-1;
    for(let td of imgs){
        toSet = toSet < 0 ?  gallery.images.length + toSet : toSet
        toSet %= 7
        td.style.backgroundImage=`url(./graphics/${gallery.images[toSet]}.png)`
        toSet+=1
        
    }
    document.getElementsByClassName('image')[0].style.backgroundImage = `url(./graphics/${gallery.images[gallery.curImg]}.png)`

} 


document.getElementById("left").addEventListener('click',()=>{gallery.moveImages(true)})
document.getElementById("right").addEventListener('click',()=>{gallery.moveImages()})

gallery.moveImages()
gallery.moveImages(true)