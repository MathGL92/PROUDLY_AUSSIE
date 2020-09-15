const mapToggle = document.querySelector("display-map");
const listToggle = document.querySelector("display-list");

const initToggleMap = () => { 
    mapToggle.addEventListener("click", () => {
        console.log("map clicked");
    });
}

export { initToggleMap }