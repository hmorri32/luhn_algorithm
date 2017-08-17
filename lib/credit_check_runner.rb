require_relative 'credit_check'

card  = CreditCheck.new("4929735477250543")
amex1 = CreditCheck.new("342804633855673")
amex2 = CreditCheck.new("342801633855673")

valid  = CreditCheck.new("5541808923795240")
valid2 = CreditCheck.new("4024007136512380")
valid3 = CreditCheck.new("6011797668867828")

invalid  = CreditCheck.new("5541801923795240")
invalid2 = CreditCheck.new("4024007106512380")
invalid3 = CreditCheck.new("6011797668868728")

puts card.validate
puts amex1.validate
puts amex2.validate

puts valid.validate
puts valid2.validate
puts valid3.validate

puts invalid.validate
puts invalid2.validate
puts invalid3.validate
