def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

bar(foo)
#"no"
#foo always returns "yes"
#thus the bar ternary express evaluates to "yes == "no ? "yes" : "no"
#which is false and thus "no" is returned. 


