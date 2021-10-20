# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Realtor.destroy_all
Contractor.destroy_all

Realtor.create({ name: "Chiodo Team Realty" })
Realtor.create({ name: "Apex Realty" })
Realtor.create({ name: "Power Homes Realty" })
Realtor.create({ name: "PCA Realty Group" })
Realtor.create({ name: "Titanic Properties Realty" })

Contractor.create({ name: "Melo Property Services LLC", lawn_care: true, plumbing: true, electrical: true })
Contractor.create({ name: "Lopez Bros Property Management", lawn_care: true, plumbing: false, electrical: false })
Contractor.create({ name: "Gallo Property Services", lawn_care: false, plumbing: true, electrical: true })
Contractor.create({ name: "Guardian Home Care", lawn_care: false, plumbing: false, electrical: true })
Contractor.create({ name: "Royalty Homes", lawn_care: true, plumbing: false, electrical: true })

Property.create({ address: "1314 Astor Street, Norristown, PA", vacancy: false, lawn_care: "N/A", plumbing: "N/A", electrical: "N/A" })
Property.create({ address: "22189 Chain Street, Philadelphia, PA", vacancy: true, lawn_care: "Lawn has not been maintained in 30 days, needs to be cut", plumbing: "Plumbing works fine", electrical: "Lights work fine" })
Property.create({ address: "814 Green Valley Drive, Philadelphia, PA", vacancy: true, lawn_care: "Lawn recently cut, no work needed", plumbing: "Leaky kitchen faucet, need to replace ASAP", electrical: "Basement lights do not work" })
Property.create({ address: "2501 Seaport Drive, Chester, PA", vacancy: true, lawn_care: "Lawn has not been maintained in 60 days, need full maintenance team", plumbing: "Foul odor coming out of 6th floor bathroom, need to inspect", electrical: "Lights work as intended" })
Property.create({ address: "420 South High Street, West Chester, PA", vacancy: true, lawn_care: "Property does not have a lawn, no work needed here", plumbing: "3/5 toilets do not work and need to be replaced", electrical: "Lights work as intended" })
Property.create({ address: "1776 Freedom Drive, Lancaster, PA", vacancy: true, lawn_care: "Lawn was recently cut, no work needed", plumbing: "Plumbing works fine, no work needed", electrical: "Lights work fine, no work needed" })
