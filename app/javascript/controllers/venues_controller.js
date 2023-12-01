import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["venuesList", "selectedVenue", "submitButton", "venueInput"]
  connect() {
    console.log("Hello from venues_controller.js")
  }

  show() {
    this.venuesListTarget.classList.remove("d-none")
  }

  selectVenue(event) {
    event.currentTarget.classList.add("selected-venue-card-button");
    const venueId = event.currentTarget.dataset.venueId;
    this.venueInputTarget.value = venueId;
    this.submitButtonTarget.classList.remove("d-none");
  }
}
