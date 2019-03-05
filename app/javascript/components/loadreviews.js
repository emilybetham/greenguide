const loadOtherReviews = () => {
  const down_arrows = document.querySelectorAll("#toggle_other_reviews").forEach((down_arrow) => {
    down_arrow.addEventListener("click", (event) => {
      event.currentTarget.lastElementChild.classList.toggle("hidden");
    });
  });

}

export { loadOtherReviews };
