#!/usr/bin/node
// a script that prints argument not found, argument found and arguments found
if (process.argv.length === 2) {
  console.log('Argument not found');
} else if (process.argv.length === 1) {
  console.log('Argument found');
} else { console.log('Argument found'); }
