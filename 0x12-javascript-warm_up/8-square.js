#!/usr/bin/node
// using the loops to do some operations
if (isNaN(process.argv[2])) console.log('Missing size');
else {
  const i = process.argv[2];
  for (let x = 0; x < i; x++) {
	  console.log('X'.repeat(i));
  }
}
