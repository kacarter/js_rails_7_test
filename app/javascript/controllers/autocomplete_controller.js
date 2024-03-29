import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="autocomplete"
export default class extends Controller {
  connect() {
    $(".autocomplete").autocomplete({
      source: '/businesses_autocomplete'
    });
  }
}
