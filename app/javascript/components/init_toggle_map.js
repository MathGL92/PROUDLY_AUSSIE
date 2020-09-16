const mapToggle = document.querySelector(".display-map");
const listToggle = document.querySelector(".display-list");
const producerList = document.getElementById("js-producers")
const map = document.getElementById("js-map")
const active = document.querySelector("active");

const initToggleMap = () => { //when list clicked, map d-none
    mapToggle.addEventListener(("click"), () => {
        producerList.classList.add("d-none");
        map.classList.remove("d-none");
        mapToggle.classList.add("active");
        listToggle.classList.remove("active");
    });

    listToggle.addEventListener(("click"),() => {
       map.classList.add("d-none");
       producerList.classList.remove("d-none");
       mapToggle.classList.remove("active");
       listToggle.classList.add("active");
    });

}


export { initToggleMap }