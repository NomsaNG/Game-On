import { Controller } from "@hotwired/stimulus"


export default class extends Controller {
  static targets = ["loadButton"];
  loadMore(event) {
    event.preventDefault();

    document.getElementById("todays-games").style.display = "none";
    document.getElementById("tomorrows-games").style.display = "none";

    document.getElementById("games-list").classList.add("visible");
    document.getElementById("games-list").style.display = "block";

    this.loadButtonTarget.style.display = "none";
    
  }
}
