
const foldBanner = () => {
  const upArrow = document.querySelector(".fas.fa-chevron-circle-up")
  upArrow.addEventListener("click", (event) => {
    const slogan = document.getElementById("slogan");
    const searchBar = document.getElementById("search-bar");
    const marginTop = document.querySelector(".simple_form.search");
    const banner = document.querySelector(".banner");
    event.currentTarget.classList.toggle("update-arrow-reduced-banner");
    banner.classList.toggle("banner-reduce-height");
    marginTop.classList.toggle("reduce-margin-top");
    slogan.classList.toggle("hidden");
    searchBar.classList.toggle("hidden");
  });
}

export { foldBanner };
