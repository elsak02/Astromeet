

const reviewForm = () => {
  console.log("hello")
  const reviewButton = document.querySelector("#review-button");
  const cancelButton = document.querySelector("#cancel-button");
  const collapseForm = document.querySelector("#collapseExample")
  if (reviewButton) {
    reviewButton.addEventListener( "click", () => {
      reviewButton.classList.toggle("d-none")
    });
  cancelButton.addEventListener ("click", () => {
    reviewButton.click();
  })
  }
}

export { reviewForm }
