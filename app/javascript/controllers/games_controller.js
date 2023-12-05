import { Controller } from "@hotwired/stimulus"

console.log("Stimulus is working!");

export default class extends Controller {
  static targets = ["loadButton"];
  loadMore(event) {
    event.preventDefault();
    console.log("Load More function called");

    document.getElementById("todays-games").style.display = "none";
    document.getElementById("tomorrows-games").style.display = "none";

    document.getElementById("games-list").classList.add("visible");
    document.getElementById("games-list").style.display = "block";

    fetch(event.target.href, { headers: { accept: "application/json" } })
      .then(response => response.text())
      .then(data => {
        console.log("Fetch URL:", event.target.href);

        document.getElementById("games-list").innerHTML = data;

        event.target.style.display = "none";
      });
  }
}
console.log("end");
