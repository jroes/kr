# hc

A quick Heroku API console.

## Usage

```term
$ git clone https://github.com/jroes/hc
$ cd hc
$ bundle
$ be ./hc
>> h = connect
>> h.app.list.map { |a| a['name'] }
=> ["codetriage", "drankthirty", "the-best-app-ever", "iheartheroku"]
```
