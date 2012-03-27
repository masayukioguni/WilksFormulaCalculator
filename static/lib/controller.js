function get_sex() {
	var res = $('#male').is(':checked'); 
	if (res) {
		return 1;
    } else {
    		return 0;
    }
}

function get_value(id) {
	var key = '#' + id;
	var value = $(key).get(0).value;
	value = parseFloat(value);
	if (isNaN(value)) {
		return 0;
	}
	return value;
}

function set_value(id,value) {
	var key = '#' + id;
	$(key).get(0).value = value;
}

function increment_weight(id) {
	var value = get_value(id);
	set_value(id,(value + 0.1).toFixed(1));
	update();
}

function decrement_weight(id) {
	var value = get_value(id);
	set_value(id,(value - 0.1).toFixed(1));
	update();
}

function increment_element(id) {
	var value = get_value(id);
	set_value(id,(value + 2.5).toFixed(1));
	update();
}

function decrement_element(id) {
	var value = get_value(id);
	set_value(id,(value - 2.5).toFixed(1));
	update();
}

function caluculate_total() {
	var sex = get_sex();
	var weight = get_value('weight');
	var sq = get_value('sq');
	var bp = get_value('bp');
	var dl = get_value('dl');
	var total = sq + bp + dl;
	var wc = new WilksCalculator(sex,weight,total);
	set_value('formula',wc.getWilksFormula().toFixed(4));
	set_value('factor',wc.getWilksFactor().toFixed(4));
	set_value('total',total);

}

function update() {
	caluculate_total();
}

