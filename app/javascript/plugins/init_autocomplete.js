import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('appointment_address');
  if (addressInput) {
    console.log("There is")
    places({ container: addressInput });
  }
};
export { initAutocomplete };
