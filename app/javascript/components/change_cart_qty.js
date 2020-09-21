// const minusBtn = document.querySelector('.minus');

const changeCartQty = () => {
  const incrementBtns = document.querySelectorAll(".incrementer");
  incrementBtns.forEach((btn) => {
    const counterElement = btn.parentElement.querySelector('.counter');
    btn.addEventListener('click', (event) => {
      event.preventDefault();
      const btn = event.currentTarget;
      const isMinus = btn.classList.contains('minus');
      const counter = parseInt(counterElement.innerText, 10);
      const updateOffset = parseInt(btn.dataset.offset, 10);
      if ((counter < 2 && isMinus)) {
        btn.classList.add('disabled');
        // alert("The quantity must be at least 1");
      } else {
        btn.classList.remove('disabled');
        // counter += updateOffset;
        // counterElement.dataset.count = counter + updateOffset;
        counterElement.innerText = counter + updateOffset;
        // Rails.ajax({
        //   type: "PATCH",
        //   url: btn.href,
        // })
        // const price = document.getElementById('price-input').value / 100;
      }
    });
  });
};

export { changeCartQty };
