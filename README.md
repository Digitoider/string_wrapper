# StringWrapper

This string *StringWrapper* allows to replace string pattern with
substitute.

For example:
```
str = StringWrapper.new('la la')
str.replace('la').with('lo')

# => "lo lo"
```

An equivalent to the code above is:

```
str = StringWrapper.new('la la')
str.with('lo').replace('la')

# => "lo lo"
```

In this small gem I have applied two patterns:
- Decorator
- State

Decorator wraps 'String' functionality.

There are three states:
1) `initial state` - when instance is created or when replacement is done;
2) `pattern specified state` - when method `pattern` is called
3) `subsitute specified state` - when method `with` is called
