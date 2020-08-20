const reviewForm = () => {
  const reviewButtons = document.querySelectorAll(".review-button");
  const cancelButtons = document.querySelectorAll("#cancel-button");
  if (reviewButtons.length > 0) {
    reviewButtons.forEach(reviewButton => {
      reviewButton.addEventListener( "click", () => {
        reviewButton.classList.toggle("d-none")
      });
    })
    cancelButtons.forEach(cancelButton => {
      cancelButton.addEventListener ("click", () => {
        const bookingId = cancelButton.dataset.bookingId;
        const reviewButton = document.querySelector(`#review-button${bookingId}`)
        reviewButton.click();
      })
    })
  }
}

export { reviewForm }
