import flatpickr from "flatpickr";

flatpickr(".datepicker", {
  enableTime: true,
  disableMobile: "true",
  dateFormat: "d-m-Y H:i",
  minuteIncrement: 10


});
flatpickr(".timepicker", {
  enableTime: true,
  disableMobile: "true",
  noCalendar: true,
  dateFormat: "H:i",
  minuteIncrement: 10
});
