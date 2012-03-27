
var WilksCalculatorUtil = function() {
}

WilksCalculatorUtil.prototype.increment_value = function(value,increment_value){
    var float_value = parseFloat(value);
    var float_increment_value = parseFloat(increment_value);
    
    return float_value + float_increment_value;
}

WilksCalculatorUtil.prototype.decrement_value = function(value,decrement_value){
    var float_value = parseFloat(value);
    var float_increment_value = parseFloat(decrement_value);
    
    var res = float_value - decrement_value;
    
    if ( res < 0) {
      res = 0;
    }
    return res;
}

