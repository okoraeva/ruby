require 'set'

keywords = Set.new %w[BEGIN END alias and and begin break case class def defined? do else elsif 
end ensure false for if in module next nil not or redo rescue retry return self super then 
true undef unless until when while yield]

keywords.map! { |el| el.downcase }

p keywords
