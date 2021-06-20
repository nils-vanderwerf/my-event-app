// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

import '../css/main.scss'
import '../css/custom.scss'
import "@fortawesome/fontawesome-free/js/all"

  // Get all "navbar-burger" elements
  const $navbarBurgers = Array.prototype.slice.call(document.querySelectorAll('.navbar-burger'), 0);

  // Check if there are any navbar burgers
  if ($navbarBurgers.length > 0) {

    document.addEventListener('DOMContentLoaded', () => {
    // Add a click event on each of them
    $navbarBurgers.forEach( element => {
      element.addEventListener('click', () => {

        // Get the target from the "data-target" attribute
        const target = element.dataset.target;
        const $target = document.getElementById(target);

        // Toggle the "is-active" class on both the "navbar-burger" and the "navbar-menu"
        element.classList.toggle('is-active');
        $target.classList.toggle('is-active');

      });
    });
  });
  
};
