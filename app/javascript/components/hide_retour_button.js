const hideRetourButton = () => {
  const retourButton = document.getElementById("link-to-button");
  retourButton.addEventListener('click', (event) => {
    event.currentTarget.classList.add("hidden");
  })
}

export { hideRetourButton };


// for Each pour les card modal Id
