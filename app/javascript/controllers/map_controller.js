import { Controller } from "@hotwired/stimulus"
import mapboxgl from 'mapbox-gl'

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/pdunleav/cjofefl7u3j3e2sp0ylex3cyb"
    })
    this.#addMarkersToMap()
    this.#fitMapToMarkers()

    this.interval = setInterval(() => {
      this.#resizeMap();
    }, 10);

    // const mapDiv = this.element;
    // console.log(mapDiv);
    // if (!mapDiv.classList.contains("d-none")) this.map.resize();
    // console.log(!mapDiv.classList.contains("d-none"));


    this.map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
      mapboxgl: mapboxgl }))
  }



  // const mapDiv = document.getElementById('map');
  // if (mapDiv.style.visibility === true) map.resize();

  #resizeMap() {
    this.map.resize();
    console.log("Map resized");
  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window_html)
      new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(this.map)
    });
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }
}
