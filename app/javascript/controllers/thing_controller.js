import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    connect() {
        console.log("hi");
        $("#thing_expiration_date").datepicker({dateFormat: "mm/dd/yy"});
    }
}