function tamaño() {
    const element = document.querySelector('.acontainer')
    const margin = element.style.marginLeft
    if (margin == "20%") {
        document.getElementById("acontainer").style.marginLeft = 'auto';
    } else {
        document.getElementById("acontainer").style.marginLeft = "20%";
    }
}

function IncreaseNumberImages() {

    var divImage = document.createElement("DIV");
    divImage.class = "form-group";

    var LB = document.createElement("LABEL");
    var INP = document.createElement("INPUT");
    var small = document.createElement("SMALL");

    var contador = document.getElementById("contador").getAttribute("value");
    let integer = parseInt(contador, 10);
    //divImage.innerHTML=LB.innerHTML="Imagen" ;
    //divImage.innerHTML=INP;

    LB.innerHTML = "Imagen " + contador;
    LB.setAttribute("for", "Imagen" + contador);
    INP.setAttribute("type", "file");
    INP.setAttribute("class", "form-control");
    INP.setAttribute("id", "Imagen" + contador);
    INP.setAttribute("name", "Imagen" + contador);//required
    INP.setAttribute("required","required");
    // <label for="image">Imagen</label>

    document.getElementById("increase").appendChild(LB);
    document.getElementById("increase").appendChild(INP);

    contador = document.getElementById("contador").setAttribute("value", integer + 1);
}

function contar() {

    const conta = 0;

}