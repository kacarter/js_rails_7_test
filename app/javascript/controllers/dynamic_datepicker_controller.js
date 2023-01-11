import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dynamic-datepicker"
export default class extends Controller {
  static classes = ["date"];
  connect() {
    $("." + this.dateClass).datepicker({dateFormat: "mm/dd/yy"});
  }
}
