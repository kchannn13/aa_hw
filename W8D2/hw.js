function mysteryScoping1() {
    var x = 'out of block';
    if (true) {
      var x = 'in block';  
      console.log(x);
    }
    console.log(x);
  }
  
  function mysteryScoping2() {
    const x = 'out of block';
    if (true) {
      const x = 'in block';  
      console.log(x);
    }
    console.log(x);
  }
  
  function mysteryScoping3() {
    const x = 'out of block';
    if (true) {
      var x = 'in block';  
      console.log(x);
    }
    console.log(x);
  }
  
  function mysteryScoping4() {
    let x = 'out of block';
    if (true) {
      let x = 'in block';  
      console.log(x);
    }
    console.log(x);
  }
  
  function mysteryScoping5() {
    let x = 'out of block';
    if (true) {
      let x = 'in block';  
      console.log(x);
    }
    let x = 'out of block again';
    console.log(x);
  }

  function madLib(verb, adj, noun) {
    return `We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}.`
  }

  function isSubstring(string, substring) {
    return string.includes(substring);
  }