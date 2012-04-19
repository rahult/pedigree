require 'tk'
require 'pry'
require_relative 'family'

canvas = TkCanvas.new(width: 600, height: 600)
canvas.pack

family = Family.new(canvas)
family.members << Member.new(canvas, name: "Rahul")
family.members << Member.new(canvas, name: "Mrinal")
family.members << Member.new(canvas, name: "Anil")
family.members << Member.new(canvas, name: "Sunita", gender: :female)

family.draw

