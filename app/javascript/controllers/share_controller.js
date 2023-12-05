import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["card", "button"]

  toggle(event) {
    const index = this.buttonTargets.indexOf(event.currentTarget);
    this.cardTargets[index].classList.toggle('d-none');
  }
}
