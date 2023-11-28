import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["venueSelect"];

  connect() {
    this.updateVenues();
  }

  updateVenues() {
    const selectedSport = this.selectedSport();
    const availableVenues = this.availableVenues(selectedSport);

    this.venueSelectTarget.innerHTML = availableVenues.map(venue => `<option value="${venue.id}">${venue.name}</option>`).join("");
  }

  selectedSport() {
    const sportSelect = document.querySelector("[data-target='venue-list.venueSelect']");
    return sportSelect.value.toLowerCase();
  }

  availableVenues(selectedSport) {
    return JSON.parse(this.data.get("venues"))
      .filter(venue => venue[selectedSport]);
  }
}
