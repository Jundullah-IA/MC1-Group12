//
//  Mountain.swift
//  MC1-Group12
//
//  Created by Jundullah Ilhaq Aulia on 19/05/22.
//

import Foundation

struct Mountain: Identifiable {
    let id = UUID()
    var name: String = ""
    var location: String
    var height: Int
    var image: String = ""
    var estimation: HikingEstimation?
    var informations: [MountainInfo]?
    var essentials: MountainEssential
    var requirements: [MountainRequirement]?
}

struct MountainInfo: Identifiable {
    let id = UUID()
    var title: String = ""
    var information: String = ""
}

struct MountainEssential: Identifiable {
    let id = UUID()
    var groupLogistic: [String] = [String]()
    var personalLogistic: [String] = [String]()
}

struct MountainRequirement: Identifiable {
    let id = UUID()
    var title: String = ""
    var items: [String] = [String]()
}

struct HikingEstimation {
    var duration: String = ""
    var distance: Int = 0
    var pathways: Int = 0
}

let MountainList: [Mountain] = [
    Mountain(
        name: "Semeru",
        location: "Malang, Indonesia",
        height: 3676,
        image: "semeru",
        estimation: HikingEstimation(
            duration: "3D2N",
            distance: 16,
            pathways: 1
        ),
        informations: [
            MountainInfo(
                title: "Mountain Status",
                information: "- Active"
            ),
            MountainInfo(
                title: "Temp",
                information: "- Average Temperature 3˚C - 8˚C"
            ),
            MountainInfo(
                title: "Mountain Fun Fact",
                information: "- Highest mountain in Java island, \n- Third most highest mountain in Indonesia"
                
            ),
        ],
        essentials: MountainEssential(
            groupLogistic: [
                "Tents",
                "Flysheet",
                "Nesting (2 Aluminum Pans, 1 Frying Pan, 1 Spatula)",
                "Portable Stove",
                "Portable Gas",
                "Jerrycan",
                "Prustic rope",
                "Raffia rope",
                "Webbing Rope",
                "First Aid (Paracetamol, Betadine, Eucalyptus Oil, Plaster, Sterile Gauze, Oxygen)",
                "Matches",
                "Compass",
                "Aluminum Foil",
                "Knife",
                "Small Machete/Saw",
                "Little Hoe",
                "Garbage Plastic Bags",
                "Rice",
                "Oil"
            ],
            personalLogistic: [
                "Carrier Bag 40 50 L",
                "Mountain Jacket",
                "Hiking Boots",
                "Sleeping Bag",
                "Mattress",
                "Raincoat",
                "2 Pairs of Change of Clothes (Quick Dry Material)",
                "Gloves",
                "Mountain Flip Flops",
                "Cutlery (Plates, Spoons, Forks)",
                "Dry Tissue",
                "Personal Medicines",
                "Flashlight/Headlamp",
                "Trekking Pole",
                "Food",
                "Drinks",
                "Private Water Bottle",
                "Garbage Bag",
                "Survival Kit (Multipurpose Folding Knife, Compass, Match)",
                "Helmet"
            ]
        ),
        requirements: [
            MountainRequirement(
                title: "Simaksi",
                items: [
                    "- Weekdays : IDR 19.000",
                    "- Weekend : IDR 24.000"
                ]
            ),
            MountainRequirement(
                title: "Group Members",
                items: [
                    "- Minimum : 4 Members",
                    "- Maximum : 7 Members"
                ]
            ),
            MountainRequirement(
                title: "Document",
                items: [
                    "- Identity Card (KTP, Student Card, SIM, etc.)",
                    "- Parental/Guardian Permission to climb for hiker under 17 years old",
                    "- Health Certificate, including a certificate of being free from ISPA"
                ]
            )
        ]
    ), // Sumeru
    Mountain(
        name: "Ciremai",
        location: "Kuningan, Indonesia",
        height: 3078,
        image: "ciremai",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 9,
            pathways: 4
        ),
        informations: [
            MountainInfo(
                title: "Mountain Status",
                information: "- Active"
            ),
            MountainInfo(
                title: "Temp",
                information: "- Average temperature 6˚C - 10˚C"
            ),
            MountainInfo(
                title: "Mountain Fun Fact",
                information: "- Highest mountain in West Java \nLatest Eruption at 1983 \n- Have a double crater on west side and east side"
                
            )
        ],
        essentials: MountainEssential(
            groupLogistic: [
                "Tents",
                "Flysheet",
                "Nesting (2 Aluminum Pans, 1 Frying Pan, 1 Spatula)",
                "Portable Stove",
                "Portable Gas",
                "Jerrycan",
                "Prustic rope",
                "Raffia rope",
                "Webbing Rope",
                "First Aid (Paracetamol, Betadine, Eucalyptus Oil, Plaster, Sterile Gauze, Oxygen)",
                "Matches",
                "Compass",
                "Aluminum Foil",
                "Knife",
                "Small Machete/Saw",
                "Little Hoe",
                "Garbage Plastic Bags",
                "Rice",
                "Oil"
            ],
            personalLogistic: [
                "Carrier Bag 40 50 L",
                "Mountain Jacket",
                "Hiking Boots",
                "Sleeping Bag",
                "Mattress",
                "Raincoat",
                "2 Pairs of Change of Clothes (Quick Dry Material)",
                "Gloves",
                "Mountain Flip Flops",
                "Cutlery (Plates, Spoons, Forks)",
                "Dry Tissue",
                "Personal Medicines",
                "Flashlight/Headlamp",
                "Trekking Pole",
                "Food",
                "Drinks",
                "Private Water Bottle",
                "Garbage Bag",
                "Survival Kit (Multipurpose Folding Knife, Compass, Match)",
                "Helmet"
              
            ]
        ),
        requirements: [
            MountainRequirement(
                title: "Minimum Cost",
                items: [
                    "- Weekeday : IDR 5.000",
                    "- Weekend : IDR 7.500"
                ]
            ),
            MountainRequirement(
                title: "Group Members",
                items: [
                    "- Minimum : 4 Members",
                    "- Maximum : 8 Members"
                ]
            ),
            MountainRequirement(
                title: "Document",
                items: [
                    "- Identity Card (KTP, Student Card, SIM, etc.)",
                    "- Parental/Guardian Permission to climb for hiker under 17 years old",
                    "- Health Certificate"
                ]
            )
        ]
    ), // Ciremai
    Mountain(
        name: "Raung",
        location: "Bondowoso, Indonesia",
        height: 3344,
        image: "raung",
        estimation: HikingEstimation(
            duration: "3D2N",
            distance: 14,
            pathways: 2
        ),
        informations: [
            MountainInfo(
                title: "Mountain Status",
                information: "Active"
            ),
            MountainInfo(
                title: "Temp",
                information: "- Average temperature 4˚C - 9˚C"
            ),
            MountainInfo(
                title: "Mountain Fun Fact",
                information: "- The most extreme track in java \n- Has the largest caldera on the island of Java with a width of 2KM \n- There is no water sources along the track path"
                
            )
        ],
        essentials: MountainEssential(
            groupLogistic: [
                "Tents",
                "Flysheet",
                "Nesting (2 Aluminum Pans, 1 Frying Pan, 1 Spatula)",
                "Portable Stove",
                "Portable Gas",
                "Jerrycan",
                "Prustic rope",
                "Raffia rope",
                "Webbing Rope",
                "Handy Talkie",
                "First Aid (Paracetamol, Betadine, Eucalyptus Oil, Plaster, Sterile Gauze, Oxygen)",
                "Matches",
                "Compass",
                "Aluminum Foil",
                "Knife",
                "Small Machete/Saw",
                "Little Hoe",
                "Garbage Plastic Bags",
                "Rice",
                "Oil"
            ],
            personalLogistic: [
                "Carrier Bag 40 50 L",
                "Mountain Jacket",
                "Hiking Boots",
                "Sleeping Bag",
                "Mattress",
                "Raincoat",
                "2 Pairs of Change of Clothes (Quick Dry Material)",
                "Gloves",
                "Mountain Flip Flops",
                "Cutlery (Plates, Spoons, Forks)",
                "Dry Tissue",
                "Personal Medicines",
                "Flashlight/Headlamp",
                "Trekking Pole",
                "Food",
                "Drinks",
                "Private Water Bottle",
                "Garbage Bag",
                "Survival Kit (Multipurpose Folding Knife, Compass, Match)",
                "Karmantel",
                "Carrabiner",
                "Webbing",
                "Harnezt",
                "Ascender",
                "Helm",
                "Prusic Rope"
            
            ]
        ),
        requirements: [
            MountainRequirement(
                title: "Minimum Cost",
                items: [
                    "- Weekeday : IDR 15.000",
                    "- Weekend : IDR 15.000"
                ]
            ),
            MountainRequirement(
                title: "Group Members",
                items: [
                    "- Minimum : 1 Members + Guide"
                ]
            ),
            MountainRequirement(
                title: "Document",
                items: [
                    "- Identity Card (KTP, Student Card, SIM, etc.)",
                    "- Parental/Guardian Permission to climb for hiker under 17 years old",
                    "- Health Certificate, including a certificate of being free from ISPA",
                    "- Stamp Duty"
                ]
            )
        ]
    ), // Raung
    Mountain(
        name: "Gede Pangrango",
        location: "Cianjur, Indonesia",
        height: 2958,
        image: "gede-pangrango",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 9,
            pathways: 3
        ),
        informations: [
            MountainInfo(
                title: "Mountain Status",
                information: "Active"
            ),
            MountainInfo(
                title: "Temp",
                information: "- Average Temperature 9˚C - 11˚C"
            ),
            MountainInfo(
                title: "Mountain Fun Fact",
                information: "- The most visited mountain in Indonesia \n- Gunung Gede Pangrango is a two different mountains"
                
            )
        ],
        essentials: MountainEssential(
            groupLogistic: [
                "Tents",
                "Flysheet",
                "Nesting (2 Aluminum Pans, 1 Frying Pan, 1 Spatula)",
                "Portable Stove",
                "Portable Gas",
                "Jerrycan",
                "Prustic rope",
                "Raffia rope",
                "Webbing Rope",
                "First Aid (Paracetamol, Betadine, Eucalyptus Oil, Plaster, Sterile Gauze, Oxygen)",
                "Matches",
                "Compass",
                "Aluminum Foil",
                "Knife",
                "Small Machete/Saw",
                "Little Hoe",
                "Garbage Plastic Bags",
                "Rice",
                "Oil"
            ],
            personalLogistic: [
                "Carrier Bag 40 50 L",
                "Mountain Jacket",
                "Hiking Boots",
                "Sleeping Bag",
                "Mattress",
                "Raincoat",
                "2 Pairs of Change of Clothes (Quick Dry Material)",
                "Gloves",
                "Mountain Flip Flops",
                "Cutlery (Plates, Spoons, Forks)",
                "Dry Tissue",
                "Personal Medicines",
                "Flashlight/Headlamp",
                "Trekking Pole",
                "Food",
                "Drinks",
                "Private Water Bottle",
                "Garbage Bag",
                "Survival Kit (Multipurpose Folding Knife, Compass, Match)",
                "Helmet"
            ]
        ),
        requirements: [
            MountainRequirement(
                title: "Minimum Cost",
                items: [
                    "- Weekeday : IDR 34.000",
                    "- Weekend : IDR 29.000"
                ]
            ),
            MountainRequirement(
                title: "Group Members",
                items: [
                    "- Minimum : 3 Members",
                    "- Maximum : 10 Members"
                ]
            ),
            MountainRequirement(
                title: "Document",
                items: [
                    "- Identity Card (KTP, Student Card, SIM, etc.)",
                    "- Parental/Guardian Permission to climb for hiker under 17 years old",
                    "- Health Certificate"
                ]
            )
        ]
    ), // Gede
    Mountain(
        name: "Papandayan",
        location: "Garut, Indonesia",
        height: 2665,
        image: "papandayan",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 9,
            pathways: 1
        ),
        informations: [
            MountainInfo(
                title: "Mountain Status",
                information: "- Active"
            ),
            MountainInfo(
                title: "Temp",
                information: "- Average Temperature 11˚C - 12˚C"
            ),
            MountainInfo(
                title: "Mountain Fun Fact",
                information: "- Highly recommended for a begginer hikers \n- The most iconic thing about papandayan is Dead Forest and Edelweis Park"
            )
        ],
        essentials: MountainEssential(
            groupLogistic: [
                "Tents",
                "Flysheet",
                "Nesting (2 Aluminum Pans, 1 Frying Pan, 1 Spatula)",
                "Portable Stove",
                "Portable Gas",
                "Jerrycan",
                "Prustic rope",
                "Raffia rope",
                "Webbing Rope",
                "First Aid (Paracetamol, Betadine, Eucalyptus Oil, Plaster, Sterile Gauze, Oxygen)",
                "Matches",
                "Compass",
                "Aluminum Foil",
                "Knife",
                "Small Machete/Saw",
                "Little Hoe",
                "Garbage Plastic Bags",
                "Rice",
                "Oil"
            ],
            personalLogistic: [
                "Carrier Bag 40 50 L",
                "Mountain Jacket",
                "Hiking Boots",
                "Sleeping Bag",
                "Mattress",
                "Raincoat",
                "2 Pairs of Change of Clothes (Quick Dry Material)",
                "Gloves",
                "Mountain Flip Flops",
                "Cutlery (Plates, Spoons, Forks)",
                "Dry Tissue",
                "Personal Medicines",
                "Flashlight/Headlamp",
                "Trekking Pole",
                "Food",
                "Drinks",
                "Private Water Bottle",
                "Garbage Bag",
                "Survival Kit (Multipurpose Folding Knife, Compass, Match)"
            ]
        ),
        requirements: [
            MountainRequirement(
                title: "Minimum Cost",
                items: [
                    "- Weekeday : IDR 30.000",
                    "- Weekend : IDR 20.000"
                ]
            ),
            MountainRequirement(
                title: "Group Members",
                items: [
                    "- Minimum : 1 Member"
                ]
            ),
            MountainRequirement(
                title: "Document",
                items: [
                    "- Identity Card (KTP, Student Card, SIM, etc.)",
                    "- Parental/Guardian Permission to climb for hiker under 17 years old",
                    "- Health Certificate"
                ]
            )
        ]
    ), // Papandayan
    Mountain(
        name: "Cikuray",
        location: "Garut, Indonesia",
        height: 2821,
        image: "cikuray",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 10,
            pathways: 4
        ),
        informations: [
            MountainInfo(
                title: "Mountain Status",
                information: "- Active"
            ),
            MountainInfo(
                title: "Temp",
                information: "- Average Temperature 14˚C - 15˚C"
            ),
            MountainInfo(
                title: "Mountain Fun Fact",
                information: "- There is a wild boar that sometimes steal hikers food. and called by Bagas (Babi Ganas)"
            )
        ],
        essentials: MountainEssential(
            groupLogistic: [
                "Tents",
                "Flysheet",
                "Nesting (2 Aluminum Pans, 1 Frying Pan, 1 Spatula)",
                "Portable Stove",
                "Portable Gas",
                "Jerrycan",
                "Prustic rope",
                "Raffia rope",
                "Webbing Rope",
                "First Aid (Paracetamol, Betadine, Eucalyptus Oil, Plaster, Sterile Gauze, Oxygen)",
                "Matches",
                "Compass",
                "Aluminum Foil",
                "Knife",
                "Small Machete/Saw",
                "Little Hoe",
                "Garbage Plastic Bags",
                "Rice",
                "Oil"
            ],
            personalLogistic: [
                "Carrier Bag 40 50 L",
                "Mountain Jacket",
                "Hiking Boots",
                "Sleeping Bag",
                "Mattress",
                "Raincoat",
                "2 Pairs of Change of Clothes (Quick Dry Material)",
                "Gloves",
                "Mountain Flip Flops",
                "Cutlery (Plates, Spoons, Forks)",
                "Dry Tissue",
                "Personal Medicines",
                "Flashlight/Headlamp",
                "Trekking Pole",
                "Food",
                "Drinks",
                "Private Water Bottle",
                "Garbage Bag",
                "Survival Kit (Multipurpose Folding Knife, Compass, Match)"
            ]
        ),
        requirements: [
            MountainRequirement(
                title: "Minimum Cost",
                items: [
                    "- Weekeday : IDR 10.000",
                    "- Weekend : IDR 10.000"
                ]
            ),
            MountainRequirement(
                title: "Group Members",
                items: [
                    "- Minimum : 1 Member"
                ]
            ),
            MountainRequirement(
                title: "Document",
                items: [
                    "- Identity Card (KTP, Student Card, SIM, etc.)",
                    "- Parental/Guardian Permission to climb for hiker under 17 years old",
                    "- Health Certificate"
                ]
            )
        ]
    ), // Cikuray---------------------------------
    Mountain(
        name: "Kerinci",
        location: "Jambi, Indonesia",
        height: 3805,
        image: "kerinci",
        estimation: HikingEstimation(
            duration: "3D1N",
            distance: 17,
            pathways: 1
        ),
        informations: [
            MountainInfo(
                title: "Mountain Status",
                information: "- Active"
            ),
            MountainInfo(
                title: "Temp",
                information: "- Average Temperature 6˚C - 9˚C"
            ),
            MountainInfo(
                title: "Mountain Fun Fact",
                information: "- Highest mountain in sumatra \nThere is a habitat for sumatran tigers \nHave a clear view to indian ocean"
            )
        ],
        essentials: MountainEssential(
            groupLogistic: [
                "Tents",
                "Flysheet",
                "Nesting (2 Aluminum Pans, 1 Frying Pan, 1 Spatula)",
                "Portable Stove",
                "Portable Gas",
                "Jerrycan",
                "Prustic rope",
                "Raffia rope",
                "Webbing Rope",
                "First Aid (Paracetamol, Betadine, Eucalyptus Oil, Plaster, Sterile Gauze, Oxygen)",
                "Matches",
                "Compass",
                "Aluminum Foil",
                "Knife",
                "Small Machete/Saw",
                "Little Hoe",
                "Garbage Plastic Bags",
                "Rice",
                "Oil"
            ],
            personalLogistic: [
                "Carrier Bag 40 50 L",
                "Mountain Jacket",
                "Hiking Boots",
                "Sleeping Bag",
                "Mattress",
                "Raincoat",
                "2 Pairs of Change of Clothes (Quick Dry Material)",
                "Gloves",
                "Mountain Flip Flops",
                "Cutlery (Plates, Spoons, Forks)",
                "Dry Tissue",
                "Personal Medicines",
                "Flashlight/Headlamp",
                "Trekking Pole",
                "Food",
                "Drinks",
                "Private Water Bottle",
                "Garbage Bag",
                "Survival Kit (Multipurpose Folding Knife, Compass, Match)"
            ]
        ),
        requirements: [
            MountainRequirement(
                title: "Minimum Cost",
                items: [
                    "- Weekeday : IDR 10.000",
                    "- Weekend : IDR 10.000"
                ]
            ),
            MountainRequirement(
                title: "Group Members",
                items: [
                    "- Minimum : 1 Member"
                ]
            ),
            MountainRequirement(
                title: "Document",
                items: [
                    "- Identity Card (KTP, Student Card, SIM, etc.)",
                    "- Parental/Guardian Permission to climb for hiker under 17 years old",
                    "- Health Certificate"
                ]
            )
        ]
    ), // Kerinci
    Mountain(
        name: "Jayawijaya",
        location: "Papua, Indonesia",
        height: 4884,
        image: "jaya-wijaya",
        estimation: HikingEstimation(
            duration: "14D13N",
            distance: 96,
            pathways: 1
        ),
        informations: [
            MountainInfo(
                title: "Mountain Status",
                information: "- Active"
            ),
            MountainInfo(
                title: "Temp",
                information: "- Average temperature -4˚C - 3˚C"
            ),
            MountainInfo(
                title: "Mountain Fun Fact",
                information: "- Eternal snow on the peak of jayawijaya \n- Having a glacier \n- Sometimes its called by Mounta Cartenz \n- Included in seven summits of the world \n- Highest mountain in Indnesia"
            )
        ],
        essentials: MountainEssential(
            groupLogistic: [
                "Tents",
                "Flysheet",
                "Nesting (2 Aluminum Pans, 1 Frying Pan, 1 Spatula)",
                "Portable Stove",
                "Portable Gas",
                "Jerrycan",
                "Prustic rope",
                "Raffia rope",
                "Webbing Rope",
                "First Aid (Paracetamol, Betadine, Eucalyptus Oil, Plaster, Sterile Gauze, Oxygen)",
                "Matches",
                "Compass",
                "Aluminum Foil",
                "Knife",
                "Small Machete/Saw",
                "Little Hoe",
                "Garbage Plastic Bags",
                "Rice",
                "Oil"
            ],
            personalLogistic: [
                "Mountaineering boots",
                "Fully insulated boots",
                "Crampoon",
                "Gaiter",
                "Ice Axe",
                "Carabiner",
                "Ascender",
                "Pellon",
                "Webbing",
                "Climbing Harness",
                "Carrier Bag 40 50 L",
                "Mountain Jacket",
                "Hiking Boots",
                "Sleeping Bag",
                "Mattress",
                "Raincoat",
                "2 Pairs of Change of Clothes (Quick Dry Material)",
                "Gloves",
                "Mountain Flip Flops",
                "Cutlery (Plates, Spoons, Forks)",
                "Dry Tissue",
                "Personal Medicines",
                "Flashlight/Headlamp",
                "Trekking Pole",
                "Food",
                "Drinks",
                "Private Water Bottle",
                "Garbage Bag",
                "Survival Kit (Multipurpose Folding Knife, Compass, Match)"
            ]
        ),
        requirements: [
            MountainRequirement(
                title: "Minimum Cost",
                items: [
                    "- Domestic : IDR 40.000.000",
                    "- Foreign: IDR 200.000.000"
                ]
            ),
            MountainRequirement(
                title: "Group Members",
                items: [
                    "- Minimum : 3 Member + Guide + Porter"
                ]
            ),
            MountainRequirement(
                title: "Document",
                items: [
                    "- Permit letter from Menpora",
                    "- Permit letter from Kapolri",
                    "- Permit letter from BIA-intelejen Indonesia",
                    "- Permit letter from Menhutbun/PKA",
                    "- Recommendation letter from Federasi Panjat Tebing Indonesia (FPTI)",
                    "- Recommendation letter from Bakorstranasda",
                    "- Recommendation letter from Kapolda",
                    "- Recomendation letter from EPO",
                    "- Permit letter from PT Freeport Indonesia (PTFI)",
                    "- Identity Card (KTP, Student Card, SIM, etc.)",
                    "- Health Certificate"
                ]
            )
        ]
    ), // Jayawijaya
    Mountain(
        name: "Rinjani",
        location: "Lombok, Indonesia",
        height: 3726,
        image: "rinjani",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 10,
            pathways: 6
        ),
        informations: [
            MountainInfo(
                title: "Mountain Status",
                information: "Active"
            ),
            MountainInfo(
                title: "Fun Fact",
                information: "Mount Cikuray, which has a height of 2,821 meters above sea level, has no active crater and is the fourth highest mountain in West Java after Mount Ciremai, Mount Pangrango, and Mount Gede. The climate in Mount Cikuray and its surroundings is categorized as a humid tropical climate. Rainfall around Mount Cikuray reaches 3500-4000mm with a calculation of 9 wet months and 3 dry months and also temperature variations from 10º C to 24º C."
            )
        ],
        essentials: MountainEssential(
            groupLogistic: [
                "Tents",
                "Flysheet",
                "Nesting (2 Aluminum Pans, 1 Frying Pan, 1 Spatula)",
                "Portable Stove",
                "Portable Gas",
                "Jerrycan",
                "Prustic rope",
                "Raffia rope",
                "Webbing Rope",
                "First Aid (Paracetamol, Betadine, Eucalyptus Oil, Plaster, Sterile Gauze, Oxygen)",
                "Matches",
                "Compass",
                "Aluminum Foil",
                "Knife",
                "Small Machete/Saw",
                "Little Hoe",
                "Garbage Plastic Bags",
                "Rice",
                "Oil"
            ],
            personalLogistic: [
                "Carrier Bag 40 50 L",
                "Mountain Jacket",
                "Hiking Boots",
                "Sleeping Bag",
                "Mattress",
                "Raincoat",
                "2 Pairs of Change of Clothes (Quick Dry Material)",
                "Gloves",
                "Mountain Flip Flops",
                "Cutlery (Plates, Spoons, Forks)",
                "Dry Tissue",
                "Personal Medicines",
                "Flashlight/Headlamp",
                "Trekking Pole",
                "Food",
                "Drinks",
                "Private Water Bottle",
                "Garbage Bag",
                "Survival Kit (Multipurpose Folding Knife, Compass, Match)"
            ]
        ),
        requirements: [
            MountainRequirement(
                title: "Minimum Cost",
                items: [
                    "Weekeday : IDR 10.000",
                    "Weekend : IDR 10.000"
                ]
            ),
            MountainRequirement(
                title: "Group Members",
                items: [
                    "Minimum : 1 Member"
                ]
            ),
            MountainRequirement(
                title: "Document",
                items: [
                    "Identity Card (KTP, Student Card, SIM, etc.)",
                    "Health Certificate"
                ]
            )
        ]
    ), // Rinjani
    Mountain(
        name: "Sumbing",
        location: "Magelang, Indonesia",
        height: 3371,
        image: "sumbing",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 10,
            pathways: 4
        ),
        informations: [
            MountainInfo(
                title: "Mountain Status",
                information: "Active"
            ),
            MountainInfo(
                title: "Fun Fact",
                information: "Mount Cikuray, which has a height of 2,821 meters above sea level, has no active crater and is the fourth highest mountain in West Java after Mount Ciremai, Mount Pangrango, and Mount Gede. The climate in Mount Cikuray and its surroundings is categorized as a humid tropical climate. Rainfall around Mount Cikuray reaches 3500-4000mm with a calculation of 9 wet months and 3 dry months and also temperature variations from 10º C to 24º C."
            )
        ],
        essentials: MountainEssential(
            groupLogistic: [
                "Tents",
                "Flysheet",
                "Nesting (2 Aluminum Pans, 1 Frying Pan, 1 Spatula)",
                "Portable Stove",
                "Portable Gas",
                "Jerrycan",
                "Prustic rope",
                "Raffia rope",
                "Webbing Rope",
                "First Aid (Paracetamol, Betadine, Eucalyptus Oil, Plaster, Sterile Gauze, Oxygen)",
                "Matches",
                "Compass",
                "Aluminum Foil",
                "Knife",
                "Small Machete/Saw",
                "Little Hoe",
                "Garbage Plastic Bags",
                "Rice",
                "Oil"
            ],
            personalLogistic: [
                "Carrier Bag 40 50 L",
                "Mountain Jacket",
                "Hiking Boots",
                "Sleeping Bag",
                "Mattress",
                "Raincoat",
                "2 Pairs of Change of Clothes (Quick Dry Material)",
                "Gloves",
                "Mountain Flip Flops",
                "Cutlery (Plates, Spoons, Forks)",
                "Dry Tissue",
                "Personal Medicines",
                "Flashlight/Headlamp",
                "Trekking Pole",
                "Food",
                "Drinks",
                "Private Water Bottle",
                "Garbage Bag",
                "Survival Kit (Multipurpose Folding Knife, Compass, Match)"
            ]
        ),
        requirements: [
            MountainRequirement(
                title: "Minimum Cost",
                items: [
                    "Weekeday : IDR 10.000",
                    "Weekend : IDR 10.000"
                ]
            ),
            MountainRequirement(
                title: "Group Members",
                items: [
                    "Minimum : 1 Member"
                ]
            ),
            MountainRequirement(
                title: "Document",
                items: [
                    "Identity Card (KTP, Student Card, SIM, etc.)",
                    "Health Certificate"
                ]
            )
        ]
    ), // Sumbing
    Mountain(
        name: "Sindoro",
        location: "Temanggung, Indonesia",
        height: 3136,
        image: "sindoro",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 10,
            pathways: 2
        ),
        informations: [
            MountainInfo(
                title: "Mountain Status",
                information: "Active"
            ),
            MountainInfo(
                title: "Fun Fact",
                information: "Mount Cikuray, which has a height of 2,821 meters above sea level, has no active crater and is the fourth highest mountain in West Java after Mount Ciremai, Mount Pangrango, and Mount Gede. The climate in Mount Cikuray and its surroundings is categorized as a humid tropical climate. Rainfall around Mount Cikuray reaches 3500-4000mm with a calculation of 9 wet months and 3 dry months and also temperature variations from 10º C to 24º C."
            )
        ],
        essentials: MountainEssential(
            groupLogistic: [
                "Tents",
                "Flysheet",
                "Nesting (2 Aluminum Pans, 1 Frying Pan, 1 Spatula)",
                "Portable Stove",
                "Portable Gas",
                "Jerrycan",
                "Prustic rope",
                "Raffia rope",
                "Webbing Rope",
                "First Aid (Paracetamol, Betadine, Eucalyptus Oil, Plaster, Sterile Gauze, Oxygen)",
                "Matches",
                "Compass",
                "Aluminum Foil",
                "Knife",
                "Small Machete/Saw",
                "Little Hoe",
                "Garbage Plastic Bags",
                "Rice",
                "Oil"
            ],
            personalLogistic: [
                "Carrier Bag 40 50 L",
                "Mountain Jacket",
                "Hiking Boots",
                "Sleeping Bag",
                "Mattress",
                "Raincoat",
                "2 Pairs of Change of Clothes (Quick Dry Material)",
                "Gloves",
                "Mountain Flip Flops",
                "Cutlery (Plates, Spoons, Forks)",
                "Dry Tissue",
                "Personal Medicines",
                "Flashlight/Headlamp",
                "Trekking Pole",
                "Food",
                "Drinks",
                "Private Water Bottle",
                "Garbage Bag",
                "Survival Kit (Multipurpose Folding Knife, Compass, Match)"
            ]
        ),
        requirements: [
            MountainRequirement(
                title: "Minimum Cost",
                items: [
                    "Weekeday : IDR 10.000",
                    "Weekend : IDR 10.000"
                ]
            ),
            MountainRequirement(
                title: "Group Members",
                items: [
                    "Minimum : 1 Member"
                ]
            ),
            MountainRequirement(
                title: "Document",
                items: [
                    "Identity Card (KTP, Student Card, SIM, etc.)",
                    "Health Certificate"
                ]
            )
        ]
    ), // Sundoro
    Mountain(
        name: "Lawu",
        location: "Karanganyar, Indonesia",
        height: 3265,
        image: "lawu",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 10,
            pathways: 6
        ),
        informations: [
            MountainInfo(
                title: "Mountain Status",
                information: "Active"
            ),
            MountainInfo(
                title: "Fun Fact",
                information: "Mount Cikuray, which has a height of 2,821 meters above sea level, has no active crater and is the fourth highest mountain in West Java after Mount Ciremai, Mount Pangrango, and Mount Gede. The climate in Mount Cikuray and its surroundings is categorized as a humid tropical climate. Rainfall around Mount Cikuray reaches 3500-4000mm with a calculation of 9 wet months and 3 dry months and also temperature variations from 10º C to 24º C."
            )
        ],
        essentials: MountainEssential(
            groupLogistic: [
                "Tents",
                "Flysheet",
                "Nesting (2 Aluminum Pans, 1 Frying Pan, 1 Spatula)",
                "Portable Stove",
                "Portable Gas",
                "Jerrycan",
                "Prustic rope",
                "Raffia rope",
                "Webbing Rope",
                "First Aid (Paracetamol, Betadine, Eucalyptus Oil, Plaster, Sterile Gauze, Oxygen)",
                "Matches",
                "Compass",
                "Aluminum Foil",
                "Knife",
                "Small Machete/Saw",
                "Little Hoe",
                "Garbage Plastic Bags",
                "Rice",
                "Oil"
            ],
            personalLogistic: [
                "Carrier Bag 40 50 L",
                "Mountain Jacket",
                "Hiking Boots",
                "Sleeping Bag",
                "Mattress",
                "Raincoat",
                "2 Pairs of Change of Clothes (Quick Dry Material)",
                "Gloves",
                "Mountain Flip Flops",
                "Cutlery (Plates, Spoons, Forks)",
                "Dry Tissue",
                "Personal Medicines",
                "Flashlight/Headlamp",
                "Trekking Pole",
                "Food",
                "Drinks",
                "Private Water Bottle",
                "Garbage Bag",
                "Survival Kit (Multipurpose Folding Knife, Compass, Match)"
            ]
        ),
        requirements: [
            MountainRequirement(
                title: "Minimum Cost",
                items: [
                    "Weekeday : IDR 10.000",
                    "Weekend : IDR 10.000"
                ]
            ),
            MountainRequirement(
                title: "Group Members",
                items: [
                    "Minimum : 1 Member"
                ]
            ),
            MountainRequirement(
                title: "Document",
                items: [
                    "Identity Card (KTP, Student Card, SIM, etc.)",
                    "Health Certificate"
                ]
            )
        ]
    ), // Lawu
    Mountain(
        name: "Merbabu",
        location: "Boyolali, Indonesia",
        height: 3145,
        image: "merbabu",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 10,
            pathways: 5
        ),
        informations: [
            MountainInfo(
                title: "Mountain Status",
                information: "Active"
            ),
            MountainInfo(
                title: "Fun Fact",
                information: "Mount Cikuray, which has a height of 2,821 meters above sea level, has no active crater and is the fourth highest mountain in West Java after Mount Ciremai, Mount Pangrango, and Mount Gede. The climate in Mount Cikuray and its surroundings is categorized as a humid tropical climate. Rainfall around Mount Cikuray reaches 3500-4000mm with a calculation of 9 wet months and 3 dry months and also temperature variations from 10º C to 24º C."
            )
        ],
        essentials: MountainEssential(
            groupLogistic: [
                "Tents",
                "Flysheet",
                "Nesting (2 Aluminum Pans, 1 Frying Pan, 1 Spatula)",
                "Portable Stove",
                "Portable Gas",
                "Jerrycan",
                "Prustic rope",
                "Raffia rope",
                "Webbing Rope",
                "First Aid (Paracetamol, Betadine, Eucalyptus Oil, Plaster, Sterile Gauze, Oxygen)",
                "Matches",
                "Compass",
                "Aluminum Foil",
                "Knife",
                "Small Machete/Saw",
                "Little Hoe",
                "Garbage Plastic Bags",
                "Rice",
                "Oil"
            ],
            personalLogistic: [
                "Carrier Bag 40 50 L",
                "Mountain Jacket",
                "Hiking Boots",
                "Sleeping Bag",
                "Mattress",
                "Raincoat",
                "2 Pairs of Change of Clothes (Quick Dry Material)",
                "Gloves",
                "Mountain Flip Flops",
                "Cutlery (Plates, Spoons, Forks)",
                "Dry Tissue",
                "Personal Medicines",
                "Flashlight/Headlamp",
                "Trekking Pole",
                "Food",
                "Drinks",
                "Private Water Bottle",
                "Garbage Bag",
                "Survival Kit (Multipurpose Folding Knife, Compass, Match)"
            ]
        ),
        requirements: [
            MountainRequirement(
                title: "Minimum Cost",
                items: [
                    "Weekeday : IDR 10.000",
                    "Weekend : IDR 10.000"
                ]
            ),
            MountainRequirement(
                title: "Group Members",
                items: [
                    "Minimum : 1 Member"
                ]
            ),
            MountainRequirement(
                title: "Document",
                items: [
                    "Identity Card (KTP, Student Card, SIM, etc.)",
                    "Health Certificate"
                ]
            )
        ]
    ), // Merbabu
    Mountain(
        name: "Latimojong",
        location: "Enrekan, Indonesia",
        height: 3478,
        image: "latimojong",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 10,
            pathways: 3
        ),
        informations: [
            MountainInfo(
                title: "Mountain Status",
                information: "Active"
            ),
            MountainInfo(
                title: "Fun Fact",
                information: "Mount Cikuray, which has a height of 2,821 meters above sea level, has no active crater and is the fourth highest mountain in West Java after Mount Ciremai, Mount Pangrango, and Mount Gede. The climate in Mount Cikuray and its surroundings is categorized as a humid tropical climate. Rainfall around Mount Cikuray reaches 3500-4000mm with a calculation of 9 wet months and 3 dry months and also temperature variations from 10º C to 24º C."
            )
        ],
        essentials: MountainEssential(
            groupLogistic: [
                "Tents",
                "Flysheet",
                "Nesting (2 Aluminum Pans, 1 Frying Pan, 1 Spatula)",
                "Portable Stove",
                "Portable Gas",
                "Jerrycan",
                "Prustic rope",
                "Raffia rope",
                "Webbing Rope",
                "First Aid (Paracetamol, Betadine, Eucalyptus Oil, Plaster, Sterile Gauze, Oxygen)",
                "Matches",
                "Compass",
                "Aluminum Foil",
                "Knife",
                "Small Machete/Saw",
                "Little Hoe",
                "Garbage Plastic Bags",
                "Rice",
                "Oil"
            ],
            personalLogistic: [
                "Carrier Bag 40 50 L",
                "Mountain Jacket",
                "Hiking Boots",
                "Sleeping Bag",
                "Mattress",
                "Raincoat",
                "2 Pairs of Change of Clothes (Quick Dry Material)",
                "Gloves",
                "Mountain Flip Flops",
                "Cutlery (Plates, Spoons, Forks)",
                "Dry Tissue",
                "Personal Medicines",
                "Flashlight/Headlamp",
                "Trekking Pole",
                "Food",
                "Drinks",
                "Private Water Bottle",
                "Garbage Bag",
                "Survival Kit (Multipurpose Folding Knife, Compass, Match)"
            ]
        ),
        requirements: [
            MountainRequirement(
                title: "Minimum Cost",
                items: [
                    "Weekeday : IDR 10.000",
                    "Weekend : IDR 10.000"
                ]
            ),
            MountainRequirement(
                title: "Group Members",
                items: [
                    "Minimum : 1 Member"
                ]
            ),
            MountainRequirement(
                title: "Document",
                items: [
                    "Identity Card (KTP, Student Card, SIM, etc.)",
                    "Health Certificate"
                ]
            )
        ]
    ), // Latimojong
    Mountain(
        name: "Kelud",
        location: "Kediri, Indonesia",
        height: 1731,
        image: "kelud",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 10,
            pathways: 2
        ),
        informations: [
            MountainInfo(
                title: "Mountain Status",
                information: "Active"
            ),
            MountainInfo(
                title: "Fun Fact",
                information: "Mount Cikuray, which has a height of 2,821 meters above sea level, has no active crater and is the fourth highest mountain in West Java after Mount Ciremai, Mount Pangrango, and Mount Gede. The climate in Mount Cikuray and its surroundings is categorized as a humid tropical climate. Rainfall around Mount Cikuray reaches 3500-4000mm with a calculation of 9 wet months and 3 dry months and also temperature variations from 10º C to 24º C."
            )
        ],
        essentials: MountainEssential(
            groupLogistic: [
                "Tents",
                "Flysheet",
                "Nesting (2 Aluminum Pans, 1 Frying Pan, 1 Spatula)",
                "Portable Stove",
                "Portable Gas",
                "Jerrycan",
                "Prustic rope",
                "Raffia rope",
                "Webbing Rope",
                "First Aid (Paracetamol, Betadine, Eucalyptus Oil, Plaster, Sterile Gauze, Oxygen)",
                "Matches",
                "Compass",
                "Aluminum Foil",
                "Knife",
                "Small Machete/Saw",
                "Little Hoe",
                "Garbage Plastic Bags",
                "Rice",
                "Oil"
            ],
            personalLogistic: [
                "Carrier Bag 40 50 L",
                "Mountain Jacket",
                "Hiking Boots",
                "Sleeping Bag",
                "Mattress",
                "Raincoat",
                "2 Pairs of Change of Clothes (Quick Dry Material)",
                "Gloves",
                "Mountain Flip Flops",
                "Cutlery (Plates, Spoons, Forks)",
                "Dry Tissue",
                "Personal Medicines",
                "Flashlight/Headlamp",
                "Trekking Pole",
                "Food",
                "Drinks",
                "Private Water Bottle",
                "Garbage Bag",
                "Survival Kit (Multipurpose Folding Knife, Compass, Match)"
            ]
        ),
        requirements: [
            MountainRequirement(
                title: "Minimum Cost",
                items: [
                    "Weekeday : IDR 10.000",
                    "Weekend : IDR 10.000"
                ]
            ),
            MountainRequirement(
                title: "Group Members",
                items: [
                    "Minimum : 1 Member"
                ]
            ),
            MountainRequirement(
                title: "Document",
                items: [
                    "Identity Card (KTP, Student Card, SIM, etc.)",
                    "Health Certificate"
                ]
            )
        ]
    ), // Kelud
    Mountain(
        name: "Arjuno-Welirang",
        location: "Malang, Indonesia",
        height: 3339,
        image: "arjuno",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 10,
            pathways: 4
        ),
        informations: [
            MountainInfo(
                title: "Mountain Status",
                information: "Active"
            ),
            MountainInfo(
                title: "Fun Fact",
                information: "Mount Cikuray, which has a height of 2,821 meters above sea level, has no active crater and is the fourth highest mountain in West Java after Mount Ciremai, Mount Pangrango, and Mount Gede. The climate in Mount Cikuray and its surroundings is categorized as a humid tropical climate. Rainfall around Mount Cikuray reaches 3500-4000mm with a calculation of 9 wet months and 3 dry months and also temperature variations from 10º C to 24º C."
            )
        ],
        essentials: MountainEssential(
            groupLogistic: [
                "Tents",
                "Flysheet",
                "Nesting (2 Aluminum Pans, 1 Frying Pan, 1 Spatula)",
                "Portable Stove",
                "Portable Gas",
                "Jerrycan",
                "Prustic rope",
                "Raffia rope",
                "Webbing Rope",
                "First Aid (Paracetamol, Betadine, Eucalyptus Oil, Plaster, Sterile Gauze, Oxygen)",
                "Matches",
                "Compass",
                "Aluminum Foil",
                "Knife",
                "Small Machete/Saw",
                "Little Hoe",
                "Garbage Plastic Bags",
                "Rice",
                "Oil"
            ],
            personalLogistic: [
                "Carrier Bag 40 50 L",
                "Mountain Jacket",
                "Hiking Boots",
                "Sleeping Bag",
                "Mattress",
                "Raincoat",
                "2 Pairs of Change of Clothes (Quick Dry Material)",
                "Gloves",
                "Mountain Flip Flops",
                "Cutlery (Plates, Spoons, Forks)",
                "Dry Tissue",
                "Personal Medicines",
                "Flashlight/Headlamp",
                "Trekking Pole",
                "Food",
                "Drinks",
                "Private Water Bottle",
                "Garbage Bag",
                "Survival Kit (Multipurpose Folding Knife, Compass, Match)"
            ]
        ),
        requirements: [
            MountainRequirement(
                title: "Minimum Cost",
                items: [
                    "Weekeday : IDR 10.000",
                    "Weekend : IDR 10.000"
                ]
            ),
            MountainRequirement(
                title: "Group Members",
                items: [
                    "Minimum : 1 Member"
                ]
            ),
            MountainRequirement(
                title: "Document",
                items: [
                    "Identity Card (KTP, Student Card, SIM, etc.)",
                    "Health Certificate"
                ]
            )
        ]
    ), // Arjuno-Welirang
    Mountain(
        name: "Argopuro",
        location: "Probolinggo, Indonesia",
        height: 3088,
        image: "argopuro",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 10,
            pathways: 2
        ),
        informations: [
            MountainInfo(
                title: "Mountain Status",
                information: "Active"
            ),
            MountainInfo(
                title: "Fun Fact",
                information: "Mount Cikuray, which has a height of 2,821 meters above sea level, has no active crater and is the fourth highest mountain in West Java after Mount Ciremai, Mount Pangrango, and Mount Gede. The climate in Mount Cikuray and its surroundings is categorized as a humid tropical climate. Rainfall around Mount Cikuray reaches 3500-4000mm with a calculation of 9 wet months and 3 dry months and also temperature variations from 10º C to 24º C."
            )
        ],
        essentials: MountainEssential(
            groupLogistic: [
                "Tents",
                "Flysheet",
                "Nesting (2 Aluminum Pans, 1 Frying Pan, 1 Spatula)",
                "Portable Stove",
                "Portable Gas",
                "Jerrycan",
                "Prustic rope",
                "Raffia rope",
                "Webbing Rope",
                "First Aid (Paracetamol, Betadine, Eucalyptus Oil, Plaster, Sterile Gauze, Oxygen)",
                "Matches",
                "Compass",
                "Aluminum Foil",
                "Knife",
                "Small Machete/Saw",
                "Little Hoe",
                "Garbage Plastic Bags",
                "Rice",
                "Oil"
            ],
            personalLogistic: [
                "Carrier Bag 40 50 L",
                "Mountain Jacket",
                "Hiking Boots",
                "Sleeping Bag",
                "Mattress",
                "Raincoat",
                "2 Pairs of Change of Clothes (Quick Dry Material)",
                "Gloves",
                "Mountain Flip Flops",
                "Cutlery (Plates, Spoons, Forks)",
                "Dry Tissue",
                "Personal Medicines",
                "Flashlight/Headlamp",
                "Trekking Pole",
                "Food",
                "Drinks",
                "Private Water Bottle",
                "Garbage Bag",
                "Survival Kit (Multipurpose Folding Knife, Compass, Match)"
            ]
        ),
        requirements: [
            MountainRequirement(
                title: "Minimum Cost",
                items: [
                    "Weekeday : IDR 10.000",
                    "Weekend : IDR 10.000"
                ]
            ),
            MountainRequirement(
                title: "Group Members",
                items: [
                    "Minimum : 1 Member"
                ]
            ),
            MountainRequirement(
                title: "Document",
                items: [
                    "Identity Card (KTP, Student Card, SIM, etc.)",
                    "Health Certificate"
                ]
            )
        ]
    ), // Argopuro
    Mountain(
        name: "Guntur",
        location: "Garut, Indonesia",
        height: 2249,
        image: "guntur",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 10,
            pathways: 2
        ),
        informations: [
            MountainInfo(
                title: "Mountain Status",
                information: "Active"
            ),
            MountainInfo(
                title: "Fun Fact",
                information: "Mount Cikuray, which has a height of 2,821 meters above sea level, has no active crater and is the fourth highest mountain in West Java after Mount Ciremai, Mount Pangrango, and Mount Gede. The climate in Mount Cikuray and its surroundings is categorized as a humid tropical climate. Rainfall around Mount Cikuray reaches 3500-4000mm with a calculation of 9 wet months and 3 dry months and also temperature variations from 10º C to 24º C."
            )
        ],
        essentials: MountainEssential(
            groupLogistic: [
                "Tents",
                "Flysheet",
                "Nesting (2 Aluminum Pans, 1 Frying Pan, 1 Spatula)",
                "Portable Stove",
                "Portable Gas",
                "Jerrycan",
                "Prustic rope",
                "Raffia rope",
                "Webbing Rope",
                "First Aid (Paracetamol, Betadine, Eucalyptus Oil, Plaster, Sterile Gauze, Oxygen)",
                "Matches",
                "Compass",
                "Aluminum Foil",
                "Knife",
                "Small Machete/Saw",
                "Little Hoe",
                "Garbage Plastic Bags",
                "Rice",
                "Oil"
            ],
            personalLogistic: [
                "Carrier Bag 40 50 L",
                "Mountain Jacket",
                "Hiking Boots",
                "Sleeping Bag",
                "Mattress",
                "Raincoat",
                "2 Pairs of Change of Clothes (Quick Dry Material)",
                "Gloves",
                "Mountain Flip Flops",
                "Cutlery (Plates, Spoons, Forks)",
                "Dry Tissue",
                "Personal Medicines",
                "Flashlight/Headlamp",
                "Trekking Pole",
                "Food",
                "Drinks",
                "Private Water Bottle",
                "Garbage Bag",
                "Survival Kit (Multipurpose Folding Knife, Compass, Match)"
            ]
        ),
        requirements: [
            MountainRequirement(
                title: "Minimum Cost",
                items: [
                    "Weekeday : IDR 10.000",
                    "Weekend : IDR 10.000"
                ]
            ),
            MountainRequirement(
                title: "Group Members",
                items: [
                    "Minimum : 1 Member"
                ]
            ),
            MountainRequirement(
                title: "Document",
                items: [
                    "Identity Card (KTP, Student Card, SIM, etc.)",
                    "Health Certificate"
                ]
            )
        ]
    ), // Guntur
    Mountain(
        name: "Agung",
        location: "Bali, Indonesia",
        height: 3142,
        image: "agung",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 10,
            pathways: 2
        ),
        informations: [
            MountainInfo(
                title: "Mountain Status",
                information: "Active"
            ),
            MountainInfo(
                title: "Fun Fact",
                information: "Mount Cikuray, which has a height of 2,821 meters above sea level, has no active crater and is the fourth highest mountain in West Java after Mount Ciremai, Mount Pangrango, and Mount Gede. The climate in Mount Cikuray and its surroundings is categorized as a humid tropical climate. Rainfall around Mount Cikuray reaches 3500-4000mm with a calculation of 9 wet months and 3 dry months and also temperature variations from 10º C to 24º C."
            )
        ],
        essentials: MountainEssential(
            groupLogistic: [
                "Tents",
                "Flysheet",
                "Nesting (2 Aluminum Pans, 1 Frying Pan, 1 Spatula)",
                "Portable Stove",
                "Portable Gas",
                "Jerrycan",
                "Prustic rope",
                "Raffia rope",
                "Webbing Rope",
                "First Aid (Paracetamol, Betadine, Eucalyptus Oil, Plaster, Sterile Gauze, Oxygen)",
                "Matches",
                "Compass",
                "Aluminum Foil",
                "Knife",
                "Small Machete/Saw",
                "Little Hoe",
                "Garbage Plastic Bags",
                "Rice",
                "Oil"
            ],
            personalLogistic: [
                "Carrier Bag 40 50 L",
                "Mountain Jacket",
                "Hiking Boots",
                "Sleeping Bag",
                "Mattress",
                "Raincoat",
                "2 Pairs of Change of Clothes (Quick Dry Material)",
                "Gloves",
                "Mountain Flip Flops",
                "Cutlery (Plates, Spoons, Forks)",
                "Dry Tissue",
                "Personal Medicines",
                "Flashlight/Headlamp",
                "Trekking Pole",
                "Food",
                "Drinks",
                "Private Water Bottle",
                "Garbage Bag",
                "Survival Kit (Multipurpose Folding Knife, Compass, Match)"
            ]
        ),
        requirements: [
            MountainRequirement(
                title: "Minimum Cost",
                items: [
                    "Weekeday : IDR 10.000",
                    "Weekend : IDR 10.000"
                ]
            ),
            MountainRequirement(
                title: "Group Members",
                items: [
                    "Minimum : 1 Member"
                ]
            ),
            MountainRequirement(
                title: "Document",
                items: [
                    "Identity Card (KTP, Student Card, SIM, etc.)",
                    "Health Certificate"
                ]
            )
        ]
    ), // Agung
    Mountain(
        name: "Ungaran",
        location: "Semarang, Indonesia",
        height: 2050,
        image: "unggaran",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 10,
            pathways: 3
        ),
        informations: [
            MountainInfo(
                title: "Mountain Status",
                information: "Active"
            ),
            MountainInfo(
                title: "Fun Fact",
                information: "Mount Cikuray, which has a height of 2,821 meters above sea level, has no active crater and is the fourth highest mountain in West Java after Mount Ciremai, Mount Pangrango, and Mount Gede. The climate in Mount Cikuray and its surroundings is categorized as a humid tropical climate. Rainfall around Mount Cikuray reaches 3500-4000mm with a calculation of 9 wet months and 3 dry months and also temperature variations from 10º C to 24º C."
            )
        ],
        essentials: MountainEssential(
            groupLogistic: [
                "Tents",
                "Flysheet",
                "Nesting (2 Aluminum Pans, 1 Frying Pan, 1 Spatula)",
                "Portable Stove",
                "Portable Gas",
                "Jerrycan",
                "Prustic rope",
                "Raffia rope",
                "Webbing Rope",
                "First Aid (Paracetamol, Betadine, Eucalyptus Oil, Plaster, Sterile Gauze, Oxygen)",
                "Matches",
                "Compass",
                "Aluminum Foil",
                "Knife",
                "Small Machete/Saw",
                "Little Hoe",
                "Garbage Plastic Bags",
                "Rice",
                "Oil"
            ],
            personalLogistic: [
                "Carrier Bag 40 50 L",
                "Mountain Jacket",
                "Hiking Boots",
                "Sleeping Bag",
                "Mattress",
                "Raincoat",
                "2 Pairs of Change of Clothes (Quick Dry Material)",
                "Gloves",
                "Mountain Flip Flops",
                "Cutlery (Plates, Spoons, Forks)",
                "Dry Tissue",
                "Personal Medicines",
                "Flashlight/Headlamp",
                "Trekking Pole",
                "Food",
                "Drinks",
                "Private Water Bottle",
                "Garbage Bag",
                "Survival Kit (Multipurpose Folding Knife, Compass, Match)"
            ]
        ),
        requirements: [
            MountainRequirement(
                title: "Minimum Cost",
                items: [
                    "Weekeday : IDR 10.000",
                    "Weekend : IDR 10.000"
                ]
            ),
            MountainRequirement(
                title: "Group Members",
                items: [
                    "Minimum : 1 Member"
                ]
            ),
            MountainRequirement(
                title: "Document",
                items: [
                    "Identity Card (KTP, Student Card, SIM, etc.)",
                    "Health Certificate"
                ]
            )
        ]
    ), // Ungaran
    Mountain(
        name: "Wilis",
        location: "Kediri, Indonesia",
        height: 2563,
        image: "wilis",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 10,
            pathways: 5
        ),
        informations: [
            MountainInfo(
                title: "Mountain Status",
                information: "Active"
            ),
            MountainInfo(
                title: "Fun Fact",
                information: "Mount Cikuray, which has a height of 2,821 meters above sea level, has no active crater and is the fourth highest mountain in West Java after Mount Ciremai, Mount Pangrango, and Mount Gede. The climate in Mount Cikuray and its surroundings is categorized as a humid tropical climate. Rainfall around Mount Cikuray reaches 3500-4000mm with a calculation of 9 wet months and 3 dry months and also temperature variations from 10º C to 24º C."
            )
        ],
        essentials: MountainEssential(
            groupLogistic: [
                "Tents",
                "Flysheet",
                "Nesting (2 Aluminum Pans, 1 Frying Pan, 1 Spatula)",
                "Portable Stove",
                "Portable Gas",
                "Jerrycan",
                "Prustic rope",
                "Raffia rope",
                "Webbing Rope",
                "First Aid (Paracetamol, Betadine, Eucalyptus Oil, Plaster, Sterile Gauze, Oxygen)",
                "Matches",
                "Compass",
                "Aluminum Foil",
                "Knife",
                "Small Machete/Saw",
                "Little Hoe",
                "Garbage Plastic Bags",
                "Rice",
                "Oil"
            ],
            personalLogistic: [
                "Carrier Bag 40 50 L",
                "Mountain Jacket",
                "Hiking Boots",
                "Sleeping Bag",
                "Mattress",
                "Raincoat",
                "2 Pairs of Change of Clothes (Quick Dry Material)",
                "Gloves",
                "Mountain Flip Flops",
                "Cutlery (Plates, Spoons, Forks)",
                "Dry Tissue",
                "Personal Medicines",
                "Flashlight/Headlamp",
                "Trekking Pole",
                "Food",
                "Drinks",
                "Private Water Bottle",
                "Garbage Bag",
                "Survival Kit (Multipurpose Folding Knife, Compass, Match)"
            ]
        ),
        requirements: [
            MountainRequirement(
                title: "Minimum Cost",
                items: [
                    "Weekeday : IDR 10.000",
                    "Weekend : IDR 10.000"
                ]
            ),
            MountainRequirement(
                title: "Group Members",
                items: [
                    "Minimum : 1 Member"
                ]
            ),
            MountainRequirement(
                title: "Document",
                items: [
                    "Identity Card (KTP, Student Card, SIM, etc.)",
                    "Health Certificate"
                ]
            )
        ]
    ), // Wilis
    Mountain(
        name: "Tambora",
        location: "Sumbawa, Indonesia",
        height: 2850,
        image: "tambora",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 10,
            pathways: 4
        ),
        informations: [
            MountainInfo(
                title: "Mountain Status",
                information: "Active"
            ),
            MountainInfo(
                title: "Fun Fact",
                information: "Mount Cikuray, which has a height of 2,821 meters above sea level, has no active crater and is the fourth highest mountain in West Java after Mount Ciremai, Mount Pangrango, and Mount Gede. The climate in Mount Cikuray and its surroundings is categorized as a humid tropical climate. Rainfall around Mount Cikuray reaches 3500-4000mm with a calculation of 9 wet months and 3 dry months and also temperature variations from 10º C to 24º C."
            )
        ],
        essentials: MountainEssential(
            groupLogistic: [
                "Tents",
                "Flysheet",
                "Nesting (2 Aluminum Pans, 1 Frying Pan, 1 Spatula)",
                "Portable Stove",
                "Portable Gas",
                "Jerrycan",
                "Prustic rope",
                "Raffia rope",
                "Webbing Rope",
                "First Aid (Paracetamol, Betadine, Eucalyptus Oil, Plaster, Sterile Gauze, Oxygen)",
                "Matches",
                "Compass",
                "Aluminum Foil",
                "Knife",
                "Small Machete/Saw",
                "Little Hoe",
                "Garbage Plastic Bags",
                "Rice",
                "Oil"
            ],
            personalLogistic: [
                "Carrier Bag 40 50 L",
                "Mountain Jacket",
                "Hiking Boots",
                "Sleeping Bag",
                "Mattress",
                "Raincoat",
                "2 Pairs of Change of Clothes (Quick Dry Material)",
                "Gloves",
                "Mountain Flip Flops",
                "Cutlery (Plates, Spoons, Forks)",
                "Dry Tissue",
                "Personal Medicines",
                "Flashlight/Headlamp",
                "Trekking Pole",
                "Food",
                "Drinks",
                "Private Water Bottle",
                "Garbage Bag",
                "Survival Kit (Multipurpose Folding Knife, Compass, Match)"
            ]
        ),
        requirements: [
            MountainRequirement(
                title: "Minimum Cost",
                items: [
                    "Weekeday : IDR 10.000",
                    "Weekend : IDR 10.000"
                ]
            ),
            MountainRequirement(
                title: "Group Members",
                items: [
                    "Minimum : 1 Member"
                ]
            ),
            MountainRequirement(
                title: "Document",
                items: [
                    "Identity Card (KTP, Student Card, SIM, etc.)",
                    "Health Certificate"
                ]
            )
        ]
    ), // Tambora
    Mountain(
        name: "Geureudong",
        location: "Aceh, Indonesia",
        height: 2885,
        image: "geureudong",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 10,
            pathways: 1
        ),
        informations: [
            MountainInfo(
                title: "Mountain Status",
                information: "Active"
            ),
            MountainInfo(
                title: "Fun Fact",
                information: "Mount Cikuray, which has a height of 2,821 meters above sea level, has no active crater and is the fourth highest mountain in West Java after Mount Ciremai, Mount Pangrango, and Mount Gede. The climate in Mount Cikuray and its surroundings is categorized as a humid tropical climate. Rainfall around Mount Cikuray reaches 3500-4000mm with a calculation of 9 wet months and 3 dry months and also temperature variations from 10º C to 24º C."
            )
        ],
        essentials: MountainEssential(
            groupLogistic: [
                "Tents",
                "Flysheet",
                "Nesting (2 Aluminum Pans, 1 Frying Pan, 1 Spatula)",
                "Portable Stove",
                "Portable Gas",
                "Jerrycan",
                "Prustic rope",
                "Raffia rope",
                "Webbing Rope",
                "First Aid (Paracetamol, Betadine, Eucalyptus Oil, Plaster, Sterile Gauze, Oxygen)",
                "Matches",
                "Compass",
                "Aluminum Foil",
                "Knife",
                "Small Machete/Saw",
                "Little Hoe",
                "Garbage Plastic Bags",
                "Rice",
                "Oil"
            ],
            personalLogistic: [
                "Carrier Bag 40 50 L",
                "Mountain Jacket",
                "Hiking Boots",
                "Sleeping Bag",
                "Mattress",
                "Raincoat",
                "2 Pairs of Change of Clothes (Quick Dry Material)",
                "Gloves",
                "Mountain Flip Flops",
                "Cutlery (Plates, Spoons, Forks)",
                "Dry Tissue",
                "Personal Medicines",
                "Flashlight/Headlamp",
                "Trekking Pole",
                "Food",
                "Drinks",
                "Private Water Bottle",
                "Garbage Bag",
                "Survival Kit (Multipurpose Folding Knife, Compass, Match)"
            ]
        ),
        requirements: [
            MountainRequirement(
                title: "Minimum Cost",
                items: [
                    "Weekeday : IDR 10.000",
                    "Weekend : IDR 10.000"
                ]
            ),
            MountainRequirement(
                title: "Group Members",
                items: [
                    "Minimum : 1 Member"
                ]
            ),
            MountainRequirement(
                title: "Document",
                items: [
                    "Identity Card (KTP, Student Card, SIM, etc.)",
                    "Health Certificate"
                ]
            )
        ]
    ), // Geureudong
    Mountain(
        name: "Singgalang",
        location: "Agam, Indonesia",
        height: 2877,
        image: "singgalang",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 10,
            pathways: 4
        ),
        informations: [
            MountainInfo(
                title: "Mountain Status",
                information: "Active"
            ),
            MountainInfo(
                title: "Fun Fact",
                information: "Mount Cikuray, which has a height of 2,821 meters above sea level, has no active crater and is the fourth highest mountain in West Java after Mount Ciremai, Mount Pangrango, and Mount Gede. The climate in Mount Cikuray and its surroundings is categorized as a humid tropical climate. Rainfall around Mount Cikuray reaches 3500-4000mm with a calculation of 9 wet months and 3 dry months and also temperature variations from 10º C to 24º C."
            )
        ],
        essentials: MountainEssential(
            groupLogistic: [
                "Tents",
                "Flysheet",
                "Nesting (2 Aluminum Pans, 1 Frying Pan, 1 Spatula)",
                "Portable Stove",
                "Portable Gas",
                "Jerrycan",
                "Prustic rope",
                "Raffia rope",
                "Webbing Rope",
                "First Aid (Paracetamol, Betadine, Eucalyptus Oil, Plaster, Sterile Gauze, Oxygen)",
                "Matches",
                "Compass",
                "Aluminum Foil",
                "Knife",
                "Small Machete/Saw",
                "Little Hoe",
                "Garbage Plastic Bags",
                "Rice",
                "Oil"
            ],
            personalLogistic: [
                "Carrier Bag 40 50 L",
                "Mountain Jacket",
                "Hiking Boots",
                "Sleeping Bag",
                "Mattress",
                "Raincoat",
                "2 Pairs of Change of Clothes (Quick Dry Material)",
                "Gloves",
                "Mountain Flip Flops",
                "Cutlery (Plates, Spoons, Forks)",
                "Dry Tissue",
                "Personal Medicines",
                "Flashlight/Headlamp",
                "Trekking Pole",
                "Food",
                "Drinks",
                "Private Water Bottle",
                "Garbage Bag",
                "Survival Kit (Multipurpose Folding Knife, Compass, Match)"
            ]
        ),
        requirements: [
            MountainRequirement(
                title: "Minimum Cost",
                items: [
                    "Weekeday : IDR 10.000",
                    "Weekend : IDR 10.000"
                ]
            ),
            MountainRequirement(
                title: "Group Members",
                items: [
                    "Minimum : 1 Member"
                ]
            ),
            MountainRequirement(
                title: "Document",
                items: [
                    "Identity Card (KTP, Student Card, SIM, etc.)",
                    "Health Certificate"
                ]
            )
        ]
    ), // Singgalang
    Mountain(
        name: "Leuser",
        location: "Aceh, Indonesia",
        height: 3404,
        image: "leuseur",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 10,
            pathways: 3
        ),
        informations: [
            MountainInfo(
                title: "Mountain Status",
                information: "Active"
            ),
            MountainInfo(
                title: "Fun Fact",
                information: "Mount Cikuray, which has a height of 2,821 meters above sea level, has no active crater and is the fourth highest mountain in West Java after Mount Ciremai, Mount Pangrango, and Mount Gede. The climate in Mount Cikuray and its surroundings is categorized as a humid tropical climate. Rainfall around Mount Cikuray reaches 3500-4000mm with a calculation of 9 wet months and 3 dry months and also temperature variations from 10º C to 24º C."
            )
        ],
        essentials: MountainEssential(
            groupLogistic: [
                "Tents",
                "Flysheet",
                "Nesting (2 Aluminum Pans, 1 Frying Pan, 1 Spatula)",
                "Portable Stove",
                "Portable Gas",
                "Jerrycan",
                "Prustic rope",
                "Raffia rope",
                "Webbing Rope",
                "First Aid (Paracetamol, Betadine, Eucalyptus Oil, Plaster, Sterile Gauze, Oxygen)",
                "Matches",
                "Compass",
                "Aluminum Foil",
                "Knife",
                "Small Machete/Saw",
                "Little Hoe",
                "Garbage Plastic Bags",
                "Rice",
                "Oil"
            ],
            personalLogistic: [
                "Carrier Bag 40 50 L",
                "Mountain Jacket",
                "Hiking Boots",
                "Sleeping Bag",
                "Mattress",
                "Raincoat",
                "2 Pairs of Change of Clothes (Quick Dry Material)",
                "Gloves",
                "Mountain Flip Flops",
                "Cutlery (Plates, Spoons, Forks)",
                "Dry Tissue",
                "Personal Medicines",
                "Flashlight/Headlamp",
                "Trekking Pole",
                "Food",
                "Drinks",
                "Private Water Bottle",
                "Garbage Bag",
                "Survival Kit (Multipurpose Folding Knife, Compass, Match)"
            ]
        ),
        requirements: [
            MountainRequirement(
                title: "Minimum Cost",
                items: [
                    "Weekeday : IDR 10.000",
                    "Weekend : IDR 10.000"
                ]
            ),
            MountainRequirement(
                title: "Group Members",
                items: [
                    "Minimum : 1 Member"
                ]
            ),
            MountainRequirement(
                title: "Document",
                items: [
                    "Identity Card (KTP, Student Card, SIM, etc.)",
                    "Health Certificate"
                ]
            )
        ]
    ) // Leuser
]
