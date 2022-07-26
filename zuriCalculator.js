
const firstNumber = parseFloat (prompt('enter first number: '));
const secNumber = parseFloat (prompt('enter second number: '));

const operator = prompt('Enter operator (+, -, /, *)');

let result=0
if (isNaN(firstNumber) || isNaN(secNumber)) {
    alert('wrong input, refresh and try again.');
} else{
    if (operator == '+') {result = firstNumber + secNumber;
    }else if (operator == '-') {result = firstNumber - secNumber;
    }else if (operator == '/') {result = firstNumber / secNumber;
    }else if (operator == '*') {result = firstNumber * secNumber;
    }
    document.write(firstNumber + operator + secNumber + '=' + result);
}
