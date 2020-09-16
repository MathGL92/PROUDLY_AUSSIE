const mapToggle = document.querySelector(".display-map");
const listToggle = document.querySelector(".display-list");
const producerList = document.getElementById("js-producers")
const map = document.getElementById("js-map")


const initToggleMap = (producerList) => { //when list clicked, map d-none
    listToggle.addEventListener(("click"),() => {
        //producerList.classList.add("d-none");
    });
    mapToggle.addEventListener(("click"), (producerList) => {
        //producerList.classList.add("d-none");
    });
}

export { initToggleMap }