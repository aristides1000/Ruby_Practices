family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

# la familia directa está formada por hermanas y hermanos
# mi código
=begin
family_only_values = family.select { |k,v| k == :sisters || k == :brothers }

p family_only_values.values.flatten
=end

# El código de la respuesta
=begin
immediate_family = family.select do |k, v|
  k == :sisters || k == :brothers
end

arr = immediate_family.values.flatten

p arr
=end
