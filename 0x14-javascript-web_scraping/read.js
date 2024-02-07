#!/usr/bin/node
const fs = require('fs')
const read = (filepath) =>{
	fs.readFile(filepath, 'utf-8', (err, data) => {
		if (err) {
			console.error('wrong usage');
		}
		else {
			console.log(data);
		}
	});
}
if (process.argv.length != 3)
{
	console.error('Usage: node script.js <filepath>')
}
else
{
	const filepath = process.argv[2];
	read(filepath);
}
