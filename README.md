# Issues Importer

This is an issues importer that will import issues from Bitbucket to Github.
It imports issues with `open`, `new`, `on hold`, `duplicate`, `resolved`, `wontfix` and `invalid` status from Bitbucket.  The issues that are imported to Github will be labeled `bitbucket`.

## Usage

First, you need to provide the necessary credentials in the importer.rb
file.  Also, make sure that you have `bundler` installed.

Then:

```
git clone https://github.com/siong1987/issues_importer.git
cd issues_importer
bundle install
ruby importer.rb
```

## Contact

siong(1900+87) (at) gmail (dot) com.

## LICENSE

(The MIT License)

Copyright (c) 2013 Teng Siong Ong

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
