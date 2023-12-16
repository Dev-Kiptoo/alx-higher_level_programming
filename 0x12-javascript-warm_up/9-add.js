#!/usr/bin/node
// a function that adds two numbers
function add(a, b) {
	return parseInt(a) + parseInt(b);
}
if (isNaN(process.argv[2, 3]) || process.argv[2].length == 2) console.log('NaN');
else console.log(add(process.argv[2], process.argv[3]));

