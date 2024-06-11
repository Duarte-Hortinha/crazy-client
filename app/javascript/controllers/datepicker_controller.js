import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"; // You need to import this to use new flatpickr()


export default class extends Controller {
  static targets = [ "bookingStart" ]

  connect() {
    flatpickr(this.bookingStartTarget, {
      minDate: "today",
      altInput: true,
      defaultDate: "today",
      inline: true,
      "enableTime": true,
      minuteIncrement: 15,
    })
  }
}
