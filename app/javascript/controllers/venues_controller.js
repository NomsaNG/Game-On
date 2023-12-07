import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["venuesList", "selectedVenue", "submitButton", "venuesDisplay", "communitiesList"]

  connect() {
    console.log("Hello from venues_controller.js");
  }

  show() {
    this.venuesListTarget.classList.remove("d-none");
    this.venuesDisplayTarget.classList.remove("d-none");
  }

  showCommunities() {
    // this.communitiesListTarget.classList.remove("d-none");
  }
}
