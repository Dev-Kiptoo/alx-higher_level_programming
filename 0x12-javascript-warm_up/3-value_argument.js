#!/usr/bin/node
// if there is no argument print no argument with no use of length
if (process.argv[2] === undefined) {
  console.log('No argument');
} else {
  console.log(process.argv[2]);
}
