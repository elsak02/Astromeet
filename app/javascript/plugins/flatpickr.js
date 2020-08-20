import flatpickr from "flatpickr";

const initFlatpicker = () => {
  flatpickr(".datepicker", {
    altInput: true,
    inline: true,
  });
}

export { initFlatpicker }
