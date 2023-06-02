# Kebabize

def kebabize(str)
  str.delete('^a-zA-z') # "myCamelHasHumps"
     .split(/(?=[A-Z])/) # ["my", "Camel", "Has", "Humps"]
     .map(&:downcase) # ["my", "camel", "has", "humps"]
     .join("-") # "my-camel-has-humps"
end


p kebabize('myCamelCasedString') #== 'my-camel-cased-string'
p kebabize('myCamelHas3Humps') #== 'my-camel-has-humps'
p kebabize('-akon') == 'akon'