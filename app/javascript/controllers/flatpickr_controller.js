import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="flatpickr"
export default class extends Controller {
  static targets = [ "startTime", "endTime"]

  connect() {
    if (this.startTimeTarget) {
      const unavailableDates = JSON.parse(document.querySelector('#flat-booking-dates').dataset.unavailable)
      console.log(unavailableDates)
      this.endTimeTarget.disabled = true

      flatpickr(this.startTimeTarget, {
        minDate: "today",
        disable: unavailableDates,
        dateFormat: "d-m-Y",
      });

      this.startTimeTarget.addEventListener("change", (e) => {
        if (this.startTimeTarget != "") {
          this.endTimeTarget.disabled = false
        }
        flatpickr(this.endTimeTarget, {
          minDate: "today",
          disable: unavailableDates,
          dateFormat: "d-m-Y"
        });
      })
    };
  }
}
