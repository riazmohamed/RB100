# Variable Scope - Explanation through practise problems

## 6. What is my value? (Part 6)

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

### Added Points
- Methods are completely self contained and the variable initialised within it are not visible outside of it.
- The variables initialized outside of the methods are not visible within the method definition.
- However local variables initialized in the outer scope will be visible within `blocks, procs and lambdas`.

## 7. What's My Value? (Part 7)

```ruby
a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a
#=> 3
```

### Output value: 3

- line 1. Initialize a local variable `a` and set it to point to the Integer `7`.
- line 2. Initialize an array `[1, 2, 3]` and set it to the local variable `array`
- line 4. Call the iterator method `Array#each` on the array `array`. `Array#each` method takes a block.
- line 5. For each iteration the variable `a` is reassigned to `element`.
- Finally `a` gets reassigned to `3`. Which will be the last element in the `array`.
- **Note**: The local variable `a` is visible within the `Array#each` method's block although it is initialized before this.
- line 8. Outputs the value of `a` as `3`.

### Added Points
- The scope of variables for a method invocation with a block is different from that of the method definition.
- Method definition restrict the visibility of the variables based on where they are initialized.
- Method invocation with a block on the other hand are more open with the local variable scope.

## 8. What's My Value? (Part 8)
```ruby
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a
# => undefined local variable or method `a' for main:Object (NameError)
```

### Error: undefined local variable or method 'a' for main:Object (NameError)

- An array `[1, 2, 3]` is initialized and is assigned to the local variable named `array`.
- `Array#each` method is called on the `array` and a block is passed to it.
- For every iteration the `each` method assigns the element to the block parameter `element`.
- within the body of the block we are trying to initiate a variable `a` which is local in scope to the block in which it is initiated and we are trying to assign the element current to `a`.
- Since this is an initiation and not an assignment the local variable `a` is not visible outside of the scope of the block.
- Hence when we try to output the value of `a` outside of the scope of the block Ruby raises an exception.

## 9. What's My Value? (Part 9) - Variable Shadowing

```ruby
a = 7
array = [1, 2, 3]

array.each { |a| a += 1 }
puts a
# => 7
```
### Definition of *Shadowing*
- *When a block argument hides a local variable that is defined in the outer scope of the block, __shadowing__ occurs. This can be resolved by using __unique variable/parameter names__*

1. The Array#each method when called on the array `[1, 2, 3]` assigns the element from the current iteration to the block parameter `a`.
2. Hence while executing `a += 1`. The block looks for the value for `a` and finds it. Hence it does not entertain looking for the value of `a` outside the local scope of the method. This is known as *shadowing*.
3. Therefore when we output the value of `a`. The original value referenced by 'a' i.e. `7` is output. This was the original value initialised outside of the each method.

## 10. What's My Value? (Part 10)
```ruby
a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each { |b| a += b }
end

my_value(array)
puts

# => undefined method `+' for nil:NilClass (NoMethodError)
```
This will raise an exception when we invoke the method `my_value` and pass `array` as an argument to it. Within the actual method definition of the method `my_value` we are calling the each method on the method parameter `ary` which now references to the array `[1, 2, 3]`. For each iteration the value is then assigned to the block parameter `b`(aka block local variable). In line 6 the block tries to execute the expression `a += b`. This will raise an exception since the method does not recognise its undefined local variable `a`. This is because the local variables initiated outside of the method definition is not visible within its scope. Hence we get a `NoMethodError`.

### Addition Points

- method definitions are self-contained with respect to local variables.
- Since the outer a is not visible inside the my_value method definition, it isn't visible inside the method invocation with a block.
