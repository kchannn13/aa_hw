//Phase I

function titleize(arr, printCallback) {
    const new_arr = arr.map(ele => `Mx. ${ele} Jingleheimer Schmidt`);
    printCallback(new_arr);
}

function printCallback(arr) {
    arr.forEach(ele => console.log(ele))
}

//Phase II

function Elephant(name, height, arrTricks){
    this.name = name;
    this.height = height;
    this.arrTricks = arrTricks;
}

Elephant.prototype.trumpet = function() {
    console.log(`${this.name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!'`)
}

Elephant.prototype.grow = function() {
    this.height += 12;
}

Elephant.prototype.addTrick = function(trick) {
    this.arrTricks.push(trick);
}

Elephant.prototype.play = function() {
    console.log(this.arrTricks[Math.floor(Math.random() * this.arrTricks.length)]);
}