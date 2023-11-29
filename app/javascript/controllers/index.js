// Import and register all your controllers from the importmap under controllers/*

import { application } from "controllers/application"

// Eager load all controllers defined in the import map under controllers/**/*_controller
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"
eagerLoadControllersFrom("controllers", application)

// Lazy load controllers as they appear in the DOM (remember not to preload controllers in import map!)
// import { lazyLoadControllersFrom } from "@hotwired/stimulus-loading"
// lazyLoadControllersFrom("controllers", application)

//for the filters
  function filterBy(category) {
    // Implement filtering logic here

    const cards = document.querySelectorAll('.memory-card-game');
    cards.forEach(card => {
      const categoryClass = card.getAttribute('data-category');

      if (category === 'all' || category === categoryClass) {
        card.style.display = 'block';
      } else {
        card.style.display = 'none';
      }
    });
  }

// for the search bar
  function filterBy() {
    document.querySelector('form').submit();
  }
