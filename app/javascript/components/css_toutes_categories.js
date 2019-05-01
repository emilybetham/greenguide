const cssToutesCategories = () => {
  const categories = document.querySelector(".category-choices");
  if (categories) {
    const toutesCategories = categories.children[1];
    toutesCategories.addEventListener('click', (event) => {
      console.log(event.currentTarget);
    })
  }
}

export { cssToutesCategories };
