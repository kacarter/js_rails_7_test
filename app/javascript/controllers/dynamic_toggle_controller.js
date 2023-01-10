import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dynamic-toggle"
export default class extends Controller {
  static targets = ["content"];

  do_toggle() {
    this.contentTargets.forEach((t) => t.classList.toggle(data.get("class")));
  }
}
