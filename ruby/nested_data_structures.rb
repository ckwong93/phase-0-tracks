warriors = {
		Curry: {
			college: "Davidson",
			role: "MVP",
			accolades: ["MVP", "MVP", "ALL STAR", "ALL STAR"]
		}, 
		Thompson: {
			college: "WSH State",
			role: "3PT Specialist/Defense",
			accolades: ["All-star","All-star"]
		},
		Barnes: {
			college: "UNC",
			role: "3 & D",
			accolades:[ "Limitless Potential"]
		},
		Green: {
			college: "Michigan State",
			role: "Swiss Army Knife",
			accolades: ["DPOY Runner Up", "All-star"]
		},
		Bogut: {
			college: "Australia",
			role: "Manning the Paint",
			accolades:[ "Alley-oop & Block Meistro"]
		},
		Iguodala: {
			college:"Arizona",
			role: "6th man",
			accolades: ["Finals MVP"]
		},
		Livingston: {
			college:"None",
			role:"Backup-PG"
		},
		Barbosa: {
			college: "Brazil",
			role: "Speed Demon"
		},
		Speights: {
			college:"Florida",
			role:"Offensive Spark"
}}

#What college did Speights go to?
warriors[:Speights][:college]
#What are Green's accolades?
warriors[:Green][:accolades]
#Add "3 point champion" to Curry's Accolades
warriors[:Curry][:accolade].push("3 point champion")
#Remove "Limitless Potential" from Barnes' accolades
warriors[:Barnes][:accolades].delete("Limitless Potential")
#What was Curry's first Accolade?
warriors[:Curry][:accolades][2]
