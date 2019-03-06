const hideToutesCategories = () => {
  const categories = document.querySelector(".category-choices");
  if (categories) {
    categories.children[1].classList.add("hidden");
  }
}

export { hideToutesCategories };
