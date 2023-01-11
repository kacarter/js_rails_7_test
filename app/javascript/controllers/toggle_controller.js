import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  do_toggle() {
    console.log("toggle");
    $('.hide_show').toggle();
  }
}
