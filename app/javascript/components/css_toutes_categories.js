const cssToutesCategories = () => {
  const categories = document.querySelector(".category-choices");
  if (categories) {
    const toutesCategories = categories.children[1];
    toutesCategories.addEventListener('click', (event) => {
      const categoriesButtons = document.querySelectorAll('.category-choice');
      let i;
      for (i = 1; i < 6; i++) {
        console.log(categoriesButtons[i])
        categoriesButtons[i].click();
        // WHERE IS THE DOUBLE CLICK!?!??!
      }
      // categoriesButtons.forEach((categorie) => {
      //   categorie.click();
      // })
    })
  }
}

export { cssToutesCategories };
