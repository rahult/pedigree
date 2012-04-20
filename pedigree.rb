require_relative 'family'

family   = Family.new
blabla   = Member.new(family.canvas, name: "blabla")
blablas  = Member.new(family.canvas, name: "blablas", father: blabla)
anil     = Member.new(family.canvas, name: "Anil")
sunita   = Member.new(family.canvas, name: "Sunita", gender: :female)
rahul    = Member.new(family.canvas, name: "Rahul", father: anil, mother: sunita)
spouse   = Member.new(family.canvas, name: "Spouse", spouse: rahul, gender: :female)
mrinal   = Member.new(family.canvas, name: "Mrinal", father: anil, mother: sunita)
mrinal_spouse = Member.new(family.canvas, name: "Mrinal Spouse", spouse: mrinal, gender: :female)
rahuls   = Member.new(family.canvas, name: "Rahuls", father: rahul)
mrinals  = Member.new(family.canvas, name: "Mrinals", father: mrinal)
mrinalss = Member.new(family.canvas, name: "Mrinalss", father: mrinals)
mrinals_spouse  = Member.new(family.canvas, name: "Mrinals Spouse", spouse: mrinals, gender: :female)
mrinalsss = Member.new(family.canvas, name: "Mrinalsss", father: mrinalss)

family.members = [mrinals_spouse, blabla, anil, sunita, mrinalss, rahul, mrinal,
                  rahuls, mrinals, spouse, mrinal_spouse, mrinalsss, blablas]
family.draw
