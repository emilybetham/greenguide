const hideToutesCategories = () => {
  const categories = document.querySelector(".category-choices");
  categories.children[1].classList.add("hidden");
}

export { hideToutesCategories };
