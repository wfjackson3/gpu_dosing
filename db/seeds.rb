# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)



lines = Line.create([{:name => "DMI"}, {:name => "DMX"}, {:name => "DDI"}, {:name => "DME"}, {:name => "DMS"}, {:name => "DMH"}])

Ball.create(:material => "PTFE", :typekey => "T", :tradename => "Teflon")
Ball.create(:material => "Al2O3", :typekey => "C", :tradename => "Ceramic")
Ball.create(:material => "Glass", :typekey => "G", :tradename => "Glass")
Ball.create(:material => "AISI 316", :typekey => "SS", :tradename => "Stainless Steel")

Gasket.create(:material => "PTFE", :typekey => "T", :tradename => "Teflon")
Gasket.create(:material => "FKM", :typekey => "V", :tradename => "Viton")
Gasket.create(:material => "EPDM", :typekey => "E", :tradename => "EPDM")

Head.create(:material => "PVDF", :typekey => "PV", :tradename => "Kynar")
Head.create(:material => "PP", :typekey => "PP", :tradename => "Polypropylene")
Head.create(:material => "PVC", :typekey => "PVC", :tradename => "Polyvinylchloride")
Head.create(:material => "AISI 316", :typekey => "SS", :tradename => "Stainless Steel")

dnsizes = Dnsize.create([{ :size => 4}, { :size => 8}, { :size => 16}, { :size => 20}])

Size.create(:flow => 2, :pressure => 18, :line_id => Line.where(:name => "DME"), :dnsize_id => Dnsize.find_by_size(8))


Valve.create(:partnumber => 96446836, :head_id => Head.where(:typekey => "PP"), :gasket_id => Gasket.where(:typekey => "V"), :ball_id => Ball.where(:typekey => "C"), :dnsize_id => Dnsize.where(:size => 4), :line_id => Line.where(:name => "DME"), :iskit => true)
Valve.create(:partnumber => 91134297, :head_id => Head.where(:typekey => "PP"), :gasket_id => Gasket.where(:typekey => "V"), :ball_id => Ball.where(:typekey => "T"), :dnsize_id => Dnsize.where(:size => 4), :line_id => Line.where(:name => "DME"), :iskit => true)
Valve.create(:partnumber => 96573952, :head_id => Head.where(:typekey => "PV"), :gasket_id => Gasket.where(:typekey => "T"), :ball_id => Ball.where(:typekey => "C"), :dnsize_id => Dnsize.where(:size => 8), :line_id => Line.where(:name => "DME"), :iskit => true)
#Find the dn size for this pump
#Valve.create(:partnumber => 96519455, :head_id => Head.where(:typekey => "SS"), :gasket_id => Gasket.where(:typekey => "V"), :ball_id => Ball.where(:typekey => "SS"), :dnsize_id => Dnsize.where(:size => ), :line_id => Line.where(:name => "DME"), :iskit => true)


# Both of these call types work
# Dnsize.find(:all, :conditions => {:size => 8})[0].id
# Dnsize.find_by_size(8).id