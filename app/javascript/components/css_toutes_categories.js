// const cssToutesCategories = () => {
//   const categories = document.querySelector(".category-choices");
//   if (categories) {
//     const toutesCategories = categories.children[1];
//     toutesCategories.addEventListener('click', (event) => {
//       const categoriesButtons = document.querySelectorAll('.category-choice');
//       let i;
//       for (i = 1; i < categoriesButtons.length; i++) {
//         // console.log(categoriesButtons[i])
//         categoriesButtons[i].classList.add('new-class-for-js-of-all-categories-autoselect')
//         // WHERE IS THE DOUBLE CLICK!?!??!
//       }
//       // BELOW WORKS BUT DE-CLICKS THE TOUTES CATEGORIES BUTTON
//       // categoriesButtons.forEach((categorie) => {
//       //   categorie.click();
//       // })
//     })
//   }
// }

const cssToutesCategories = () => {
  const toutesCategoriesButton = document.getElementById('search_categories_toutes catégories');
  toutesCategoriesButton.addEventListener('click', (event) => {
    const categoriesButtons = document.querySelectorAll('.category-choice');
    categoriesButtons.forEach((categorie) => {
      // NEED TO ADD SOMETHING WHICH DE-SELECTS IF THERE IS ALREADY A CURRENT FILTER, BCAUSE OTHERWISE IT STAYS EVEN AFTER TOGGLE!
      categorie.classList.add('new-class-to-unselect-exisitng-selection')
      categorie.classList.toggle('new-class-for-js-of-all-categories-autoselect');

    });
  });
}


export { cssToutesCategories };

