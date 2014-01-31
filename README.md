# kr

kr is short for *konsoru*, or console in Japanese. `kr` is a quick Heroku API console.

## Usage

```term
$ gem install kr
$ kr
>> h = connect
>> h.app.list.map { |a| a['name'] }
=> ["codetriage", "drankthirty", "the-best-app-ever", "iheartheroku"]
```
