// javascript/controllers/navbar_controller.js

import { Controller } from "stimulus";

export default class extends Controller {
  toggle() {
    const navbar = document.getElementById("navbarTogglerDemo02");
    const isExpanded = navbar.classList.contains("show");

    if (isExpanded) {
      navbar.classList.remove("show");
    } else {
      navbar.classList.add("show");
    }
  }
}
