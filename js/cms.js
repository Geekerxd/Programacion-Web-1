function tamaño() {
    const element = document.querySelector('.acontainer')
    const margin = element.style.marginLeft
    if(margin == "20%"){
        document.getElementById("acontainer").style.marginLeft = 'auto';
    }
    else{
    document.getElementById("acontainer").style.marginLeft="20%";
    }
  }