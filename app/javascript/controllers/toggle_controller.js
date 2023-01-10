import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  do_toggle() {
    $('.hide_show').toggle();
  }
}
