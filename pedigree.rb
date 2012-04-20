require_relative 'family'

family   = Family.new
anil     = Member.new(family.canvas, name: "Anil")
sunita   = Member.new(family.canvas, name: "Sunita", gender: :female)
rahul    = Member.new(family.canvas, name: "Rahul", father: anil, mother: sunita)
spouse   = Member.new(family.canvas, name: "Spouse", spouse: rahul)
mrinal   = Member.new(family.canvas, name: "Mrinal", father: anil, mother: sunita)
rahuls   = Member.new(family.canvas, name: "Rahuls", father: rahul)
mrinals  = Member.new(family.canvas, name: "Mrinals", father: mrinal)
mrinalss = Member.new(family.canvas, name: "Mrinalss", father: mrinals)
mrinals_spouse  = Member.new(family.canvas, name: "Mrinals Spouse", spouse: mrinals)

family.members = [mrinals_spouse, anil, sunita, mrinalss, rahul, mrinal, rahuls, mrinals, spouse]
family.draw
