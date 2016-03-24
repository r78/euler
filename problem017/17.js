#!/usr/bin/env node

var first_ten = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten'];
var second_ten = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen','seventeen', 'eighteen', 'nineteen'];
var units = first_ten.slice(0,9);
var tens = ['twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety'];
var thousand = ['one', 'thousand'];

function count(arr) {
    return arr.join(" ").replace(/\s|\-/g, '').length;
}

var other_tens = [];
tens.forEach(function(t) {
    units.forEach((u) => other_tens.push(`${t}-${u}`));
    other_tens.push(t);
});

var hundreds = units.map((u) => `${u} hundred`);

var more_than_hundred = [];

hundreds.forEach(function(h) {
    more_than_hundred.push(h);
    first_ten.concat(second_ten).concat(other_tens).forEach((t) => more_than_hundred.push(`${h} and ${t}`));
});

var total = count(first_ten) + count(second_ten) + count(other_tens) + count(more_than_hundred) + count(thousand);
console.log(total);
