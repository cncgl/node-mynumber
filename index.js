
module.exports = {
  corporate_number: function(num) {
    if ( !num.match(/^\d{13}$/) ) return false;

    var chars = num.split(''), digits = [];
    for(var i=0; i<chars.length; i++) {
      digits.push(Number(chars[i]));
    }
    var check_digit = digits.pop(), remainder = 0;
    for(i=0; i<digits.length; i++) {
      var q = (i % 2 == 0) ? 1 : 2;
      remainder += (digits[i] * q) % 9;
      remainder = remainder % 9;
    }
    return (check_digit == (9 - remainder));
  },
  individual_number: function(num) {
    if ( !num.match(/^\d{12}$/) ) return false;

    var chars = num.split(''), digits = [];
    for(var i=0;i<chars.length;i++) {
      digits.push(Number(chars[i]));
    }
    var check_digit = digits.pop(), remainder = 0;
    for(i=0;i<digits.length;i++) {
      var idx = 11 - i;
      var q = (idx <= 6) ? idx + 1 : idx - 5;
      remainder += (digits[i] * q) % 11;
      remainder = remainder % 11;
    }
    switch(remainder) {
      case 0:
      case 1:
        return (check_digit == 0);
      default:
        return (check_digit == (11 - remainder));
    }

  },
  valid: function(num) {
    return (this.corporate_number(num) || this.individual_number(num));
  }
};
