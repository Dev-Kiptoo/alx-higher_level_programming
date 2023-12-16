#!/usr/bin/node
// a script that prints argument not found, argument found and arguments found
f (process.argv.length === 2) {
	  console.log('No argument');
} else if (process.argv.length === 3) {
	  console.log('Argument found');
} else {
	  console.log('Arguments found');
}
