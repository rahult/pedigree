require 'tk'
require 'pry'
require_relative 'family'

canvas = TkCanvas.new(width: 600, height: 600)
canvas.pack

anil   = Member.new(canvas, name: "Anil")
sunita = Member.new(canvas, name: "Sunita", gender: :female)
rahul  = Member.new(canvas, name: "Rahul", father: anil, mother: sunita)
mrinal = Member.new(canvas, name: "Mrinal", father: anil, monther: sunita)

family = Family.new(canvas)
family.members = [anil, sunita, rahul, mrinal]
family.draw

