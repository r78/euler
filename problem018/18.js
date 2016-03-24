var t1 = "3\n\
7 4\n\
2 4 6\n\
8 5 9 3";

var t = "75\n\
95 64\n\
17 47 82\n\
18 35 87 10\n\
20 04 82 47 65\n\
19 01 23 75 03 34\n\
88 02 77 73 07 63 67\n\
99 65 04 28 06 16 70 92\n\
41 41 26 56 83 40 80 70 33\n\
41 48 72 33 47 32 37 16 94 29\n\
53 71 44 65 25 43 91 52 97 51 14\n\
70 11 33 28 77 73 17 78 39 68 17 57\n\
91 71 52 38 17 14 91 43 58 50 27 29 48\n\
63 66 04 68 89 53 67 30 73 16 69 87 40 31\n\
04 62 98 27 23 09 70 98 73 93 38 53 60 04 23";

var triangle = t.split('\n').map((l) => l.split(' ').map((x) => Number.parseInt(x)));


// [1,2,3,4] -> [[1,2], [2,3], [3,4]] 
function pairs(arr) {
    return arr.map((elem, idx, array) => [array[idx], array[idx+1]]).slice(0, arr.length - 1);
}

// [5,2,9,4] -> [5,9,9]
function maxPairs(arr) {
    return pairs(arr).map((x) => Math.max(...x));
}

// [8,5,9,3] [2,4,6] -> [10,13,15] 
function rowMerge(a, b) {
    return maxPairs(a).map((elem, idx) => [elem, b[idx]]).map((x) => x.reduce((prev, cur) => prev + cur));
}

var solution = triangle.reverse().reduce((prev, cur) => rowMerge(prev, cur))[0];
console.log(solution);
