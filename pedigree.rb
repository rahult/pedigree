require_relative 'family'

family   = Family.new
anil     = Member.new(family.canvas, name: "Anil")
sunita   = Member.new(family.canvas, name: "Sunita", gender: :female)
rahul    = Member.new(family.canvas, name: "Rahul", father: anil, mother: sunita)
mrinal   = Member.new(family.canvas, name: "Mrinal", father: anil, mother: sunita)
rahuls   = Member.new(family.canvas, name: "Rahuls", father: rahul)
mrinals  = Member.new(family.canvas, name: "Mrinals", father: mrinal)
mrinalss = Member.new(family.canvas, name: "Mrinalss", father: mrinals)

family.members = [anil, sunita, rahul, mrinal, rahuls, mrinals, mrinalss]
family.draw
