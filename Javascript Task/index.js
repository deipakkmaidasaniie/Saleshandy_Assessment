displayBox = document.getElementById("output-display");

let count = 0;

const hashmap = {
  0: {
    keys: ["0"],
    size: 1,
    lastClick: 0,
  },
  1: {
    keys: ["1", ".", ",", "!"],
    size: 4,
    lastClick: 0,
  },
  2: {
    keys: ["2", "A", "B", "C"],
    size: 4,
    lastClick: 0,
  },
  3: {
    keys: ["3", "D", "E", "F"],
    size: 4,
    lastClick: 0,
  },
  4: {
    keys: ["4", "G", "H", "I"],
    size: 4,
    lastClick: 0,
  },
  5: {
    keys: ["5", "J", "K", "L"],
    size: 4,
    lastClick: 0,
  },
  6: {
    keys: ["6", "M", "N", "O"],
    size: 4,
    lastClick: 0,
  },
  7: {
    keys: ["7", "P", "Q", "R", "S"],
    size: 5,
    lastClick: 0,
  },
  8: {
    keys: ["8", "T", "U", "V"],
    size: 4,
    lastClick: 0,
  },
  9: {
    keys: ["9", "W", "X", "Y", "Z"],
    size: 5,
    lastClick: 0,
  },

  "*": {
    keys: ["*"],
    size: 1,
    lastClick: 0,
  },

  "#": {
    keys: ["#"],
    size: 1,
    lastClick: 0,
  },
};

const addDigit = (key) => {
  const { keys, size, lastClick } = hashmap[key];
  if (displayBox.value.length < 10 || Date.now() - lastClick <= 1000) {
    if (Date.now() - lastClick > 1000) {
      count = 0;
      displayBox.value += keys[count % size];
    } else {
      count++;
      let s = displayBox.value;
      displayBox.value = s.substring(0, s.length - 1) + keys[count % size];
    }
    hashmap[key].lastClick = Date.now();
    console.log(count % size);
  }
};
