import { Controller } from "stimulus";

export default class extends Controller {
  loadMore(event) {
    event.preventDefault();

    // Hide today's and tomorrow's games
    document.getElementById("todays-games").style.display = "none";
    document.getElementById("tomorrows-games").style.display = "none";

    // Fetch all games
    fetch(event.target.href, { headers: { accept: "application/json" } })
      .then(response => response.text())
      .then(data => {
        // Replace the current games with the new games
        document.getElementById("grid-container").innerHTML = data;

        // Hide the "Load More Games" button
        event.target.style.display = "none";
      });
  }
}
