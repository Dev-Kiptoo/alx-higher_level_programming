#!/usr/bin/node
// if a number can be converted to an integer then print my numb is
if (isNaN(process.argv[2])) {
  console.log('Not a number.');
} else { console.log('My number: ' + parseInt(process.argv[2])); }
