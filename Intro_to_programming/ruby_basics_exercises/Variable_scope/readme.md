# Variable Scope - Explanation through practise problems

What is my value? (Part 6)

```ruby
a = 7

def my_value(b)
  b = a + a
end

my_value(a)
puts a
```

### Error: undefined local variable or method `NameError`

When we invoke the method `my_value` and pass the value referenced by `a` as an argument. The method parameter is assigned to the value of `a` thereby binding itself to the object referenced  by `a`. In line 4 within the method definition we are trying to reassign the local method variable `b` to the result of the addition of two unitialised instance of the variable `a`. **Note**: The methods are self contained and hence cannot access the variables initialised outside and vice versa. hence in this instance Ruby cannot identify the local variable `a` as it is not initialized within the scope of the method definition. Due to this Ruby raises an error `NameError` denoting that it cannot reference to any such instance of variable `a` within the method scope.

## Added Points
- Methods are completely self contained and the variable initialised within it are not visible outside of it.
- The variables initialized outside of the methods are not visible within the method definition.
- However local variables initialized in the outer scope will be visible within `blocks, procs and lambdas`.
