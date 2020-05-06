/*
A circular buffer, cyclic buffer or ring buffer is a data structure that uses a single, fixed-size buffer as if it were connected end-to-end.

A circular buffer first starts empty and of some predefined length. For example, this is an empty 7-element buffer:

[ ][ ][ ][ ][ ][ ][ ]
Assume that a 1 is written into the middle of the buffer (exact starting location does not matter in a circular buffer):

[ ][ ][ ][1][ ][ ][ ]
Then assume that two more elements are added, or written to the buffer — 2 & 3 — which get appended after the 1:

[ ][ ][ ][1][2][3][ ]
If two elements are then read, or removed from the buffer, the oldest values inside the buffer are removed. The two elements removed, in this case, are 1 & 2, leaving the buffer with just a 3:

[ ][ ][ ][ ][ ][3][ ]
If the buffer has 7 elements then it is completely full:

[6][7][8][9][3][4][5]
When the buffer is full an error will be raised, alerting the client that further writes are blocked until a slot becomes free.

The client can opt to overwrite the oldest data with a forced write. In this case, two more elements — A & B — are added and they overwrite the 3 & 4:

[6][7][8][9][A][B][5]
Finally, if two elements are now removed then what would be returned is not 3 & 4 but 5 & 6 because A & B overwrote the 3 & the 4 yielding the buffer with:

[ ][7][8][9][A][B][ ]


Create a circular buffer
Demonstrate that it works correctly

Input: a command, and an optional element
Output: current state of the buffer logged to console

A cicular buffer is a FIFO data structure
- fixed length
- elements can be added up to length
- if buffer is full, then elements can be force added
  - force added elements 'overwrite' earlier elements in the buffer, and are treated as newly added elements (i.e. a force added element is last to be removed)

Create a buffer of a given size
  - initialize global scope array
  - add a property maxSize to array
Write elements to the buffer
  - first, check if buffer.length === buffer.maxsize
    - Throw error if buffer is full
      - log 'Buffer is full. Remove elements or force a write?'
      - log state of buffer
  - Else, buffer.push(el)
    - log element added!
    - log state of buffer
Force write elements to the buffer
  - shift element from buffer
  - push new element to buffer
  - log force added element.
  - log state of buffer
Read elements from the buffer
  - check if buffer.length === 0
    - Empty buffer!
  - else, el = buffer.shift
  - log 'element read from buffer'
Log buffer
-  map buffer
  - if el then [ el ] or  [  ]
  - join and log


Data structure
- array
- push method to write to buffer
- shift method to read from buffer
*/


function createBuffer(max) {
  let newBuffer = [];
  newBuffer.maxSize = max;
  return newBuffer;
}

function write(buffer, ...args) {
  let i;

  for (i = 0; i < args.length; i += 1) {
    if (buffer.length === buffer.maxSize) {
      console.log('Buffer is full! Remove elements or force write remaining elements: ', args.slice(i));
      console.log('Current buffer:');
      log(buffer);
      return args.slice(i);
    }
    buffer.push(args[i]);
  }
  console.log('Buffer updated. Current buffer:');
  log(buffer);
}

function forceWrite(buffer, ...el) {
  let shifted;
  while (buffer.length < buffer.maxSize) {
    shifted = el.shift();
    buffer.push(shifted);
    console.log(`${shifted} succesfully added to buffer.`)
  }
  console.log('Force writing the following elements: ', el);
  el.forEach(function(el) {
    buffer.shift();
    buffer.push(el);
  })

  console.log('Buffer updated. Current buffer:')
  log(buffer);
}

function read(buffer) {

}

function log(buffer) {
  let bufferLog = '';
  let emptyBlocks;
  bufferLog = buffer.map(function(el) {
    return `[ ${el} ]`;
  }).join(' ');
  if (buffer.length < buffer.maxSize) {
    emptyBlocks = new Array (buffer.maxSize - buffer.length).fill('[  ]')
    bufferLog = bufferLog.concat(emptyBlocks.join(' '));
  }

  console.log(bufferLog);
}

let buffer = createBuffer(7);
log(buffer);
write(buffer, 5, 'A', 7, 'B');
let result = write(buffer, 8, 'C', 9, 'D');
forceWrite(buffer, result);
