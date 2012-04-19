require_relative 'family'

family = Family.new
anil   = Member.new(family.canvas, name: "Anil")
sunita = Member.new(family.canvas, name: "Sunita", gender: :female)
rahul  = Member.new(family.canvas, name: "Rahul", father: anil, mother: sunita)
mrinal = Member.new(family.canvas, name: "Mrinal", father: anil, monther: sunita)

family.members = [anil, sunita, rahul, mrinal]
family.draw

