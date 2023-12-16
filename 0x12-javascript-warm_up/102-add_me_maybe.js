#!/usr/bin/node
// a function that prints an incremented value
exports.addMeMaybe = function addMeMaybe (number, thefunction) {
  number++;
  thefunction(number);
};
