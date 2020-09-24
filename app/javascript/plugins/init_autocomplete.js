import places from 'places.js';

const initAutocomplete = () => {
  // if (document.getElementById('geocoder-field')) {
  const addressInput = document.getElementById('producer_address');
  if (addressInput) {
    places({ container: addressInput });
  }
  // }
};

export { initAutocomplete };
