[![Build Status](https://travis-ci.org/cncgl/node-mynumber.svg)](https://travis-ci.org/cncgl/node-mynumber)
[![npm version](https://badge.fury.io/js/mynumber.svg)](https://badge.fury.io/js/mynumber)

# node-mynumber
MyNumber Validator

# Usage

```
$ npm i mynumber
```

sample code
```
mynumber = require('mynumber');
mynumber.corporate_number('1010601008968'); # => true
mynumber.individual_number('548836529885'); # => true
mynumber.valid("1010601008968"); # => true
```

# Spec

- https://www.j-lis.go.jp/data/open/cnt/3/1282/1/H2707_qa.pdf
- https://www.nta.go.jp/mynumberinfo/FAQ/03houjinbangoukankei.htm

# License
MIT


