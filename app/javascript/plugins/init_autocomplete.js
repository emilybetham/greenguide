import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('address-id');
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };
