import "jquery-bar-rating";
import "jquery-bar-rating/dist/themes/css-stars.css";


const initStarRating = () => {
  const forms = document.querySelectorAll("#review-form")
  forms.forEach(form => {
    $(form).find("#review_rating").barrating({
      theme: 'css-stars'
    });
  })
};


export { initStarRating };

