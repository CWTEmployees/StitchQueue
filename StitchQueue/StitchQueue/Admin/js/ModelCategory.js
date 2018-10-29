$(document).ready(function() {
    //debugger;
    //var parentSelect = document.getElementById("DropDown1");
    //var childSelect = document.getElementById("DropDown2");
    //var options = [].slice.apply(childSelect, [0]);
    //var emptyOption = options[0];
    //childSelect.innerHTML = "";
    //childSelect.options.add(emptyOption);

    //parentSelect.addEventListener("change", function (e) {
    //    var selectedValue = parentSelect.options[parentSelect.selectedIndex].value;
    //    var setall = new Array();
    //    setall = selectedValue.split(',');
    //    var selectedValue = setall[0];
    //    childSelect.innerHTML = "";
    //    childSelect.options.add(emptyOption);
    //    if (selectedValue == 0) return;
    //    for (var i = 0; i < options.length; i++) {
    //        if (options[i].getAttribute("value").split(',')[0] == selectedValue) {
    //            childSelect.options.add(options[i]);
    //        }
    //    }

    //});
    //return false;

    //Reference: https://jsfiddle.net/fwv18zo1/
    var $DropDown1 = $('#DropDown1'),
            $DropDown2 = $('#DropDown2'),
        $options = $DropDown2.find('option');

    $DropDown1.on('change', function () {
        $DropDown2.html($options.filter('[value="' + this.value + '"]'));
    }).trigger('change');
});