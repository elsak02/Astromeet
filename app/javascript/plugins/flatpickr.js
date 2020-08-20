import flatpickr from "flatpickr";



const initFlatpicker = () => {
  const dateElement = document.querySelector('#booking_date');
  const dates = JSON.parse(dateElement.dataset.unavailableDates);


   flatpickr(".datepicker", {
    minDate: "today",
    disable: dates,
    altInput: true,
    inline: true,
  });
}

export { initFlatpicker }
