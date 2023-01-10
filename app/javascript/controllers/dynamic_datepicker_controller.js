import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dynamic-datepicker"
export default class extends Controller {
  connect() {
    $("." + data.get("class")).datepicker({dateFormat: "mm/dd/yy"});
  }
}
