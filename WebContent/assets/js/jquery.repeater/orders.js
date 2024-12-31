var room = 1;

function education_fields() {
  room++;
  var objTo = document.getElementById("education_fields");
  var divtest = document.createElement("div");
  divtest.setAttribute("class", "mb-3 removeclass" + room);
  var rdiv = "removeclass" + room;
  divtest.innerHTML ='<div class="form-floating mb-3 is-valid"><input type="text" class="form-control university" name="university" /><label for="university">University</label></div> <div class="form-group"> <button class="btn rounded-pill px-4 btn-light-danger text-danger font-weight-medium waves-effect waves-light" type="button" onclick="remove_education_fields(' +
    room +
');"> <i class="bi bi-backspace fs-5"></i> Remove</button> </div></div>';

  objTo.appendChild(divtest);
  feather.replace();
}

function remove_education_fields(rid) {
  $(".removeclass" + rid).remove();
}
