import { Controller } from "stimulus";
import flatpickr from "flatpickr";

export default class extends Controller {
  connect() {
    const inputField = this.element.querySelector(".flatpickr-input");
    if (inputField) {
      flatpickr(inputField, {
        enableTime: true,
        dateFormat: "Y-m-d H:i",
        minDate: "today"
      });
    }
  }
}
