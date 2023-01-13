import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    connect() {
        $(".date").datepicker({dateFormat: "yy-mm-dd"});
    }
}