import { Controller } from "@hotwired/stimulus"

import flatpickr from "flatpickr"
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

export default class extends Controller {
  static values = { dates: Object }

  static targets = [ 'startDateInput', 'endDateInput' ]

  connect() {
    // this.initFlatPickr()
    console.log("Hello")
    console.log(this.datesValue)
    flatpickr(this.startDateInputTarget, {
      mode: 'range',
      "plugins": [new rangePlugin({ input: this.endDateInputTarget})],
      disable: this.datesValue.disable
    })
  }

  // #initFlatPickr() {
  //   flatpickr(".datepicker", this.#options());
  // }

  // #options() {
  //   return {
  //   ...this.#parsedBookedDates(),
  //   enableTime: true,
  //   minDate: new Date(),
  //   }
  // }

  // #parsedBookedDates() {
  //   return this.datesValue
  // }
}
