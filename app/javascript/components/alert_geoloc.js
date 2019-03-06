const alertGeoloc = () => {
  const comprisButton = document.getElementById("custom-btn-home")
  if (comprisButton) {
    comprisButton.addEventListener("click", (event) => {
      alert('🌱 Acceptez la géolocalisation pour une meilleure utilisation 💪')
    });
  }
}

export { alertGeoloc };
