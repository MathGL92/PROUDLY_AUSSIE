const incrementBtns = document.querySelectorAll(".incrementer");

const counterText = document.getElementById('counter');
let counter = parseInt(counterText.dataset.count, 10);

const minusBtn = document.querySelector('.minus');

const changeCartQty = () => {
  if (counterText) {
    incrementBtns.forEach((btn) => {
      btn.addEventListener('click', (event) => {
        const update = parseInt(event.currentTarget.dataset.offset, 10);
        if ((counter < 2 && event.currentTarget.dataset.offset === "-1")) {
          minusBtn.classList.add('disabled');
          // alert("The quantity must be at least 1");
        } else {
          minusBtn.classList.remove('disabled');
          counter += parseInt(update, 10);
          counterText.dataset.count = counter;
          counterText.innerText = counter;
          // const price = document.getElementById('price-input').value / 100;
        }
      });
    });
  }
};

export { changeCartQty };
