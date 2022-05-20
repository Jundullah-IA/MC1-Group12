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
    var essentials: MountainEssential?
    var reqirements: [MountainRequirement]?
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
        name: "Sumeru",
        location: "Malang, East java, Indonesia",
        height: 3676,
        image: "",
        estimation: HikingEstimation(
            duration: "3D2N",
            distance: 15950,
            pathways: 1
        ),
        informations: [
            MountainInfo(
                title: "Mountain Status",
                information: "Active"
            ),
            MountainInfo(
                title: "Fun Fact",
                information: "The Bromo Tengger Semeru National Park area (hereinafter referred to as TNBTS) is a Nature Conservation Area that carries out the functions of protection, preservation and sustainable use, for that nature tourism activities need to be managed optimally to provide excellent service for hikers, while maintaining the function of the area. One of the objects of attraction in TNBTS is Mount Semeru which is the highest active volcano on the island of Java (3,676 mdpl). This area has a variety of complex mountain ecosystems and unique landscapes that make it one of the favorite hiking locations in Indonesia."
            )
        ],
        essentials: MountainEssential(
            groupLogistic: [
                "- Tents",
                "- Flysheet",
                "- Nesting (2 Aluminum Pans, 1 Frying Pan, 1 Spatula)",
                "- Portable Stove",
                "- Portable Gas",
                "- Jerrycan",
                "- Prustic rope",
                "- Raffia rope",
                "- Webbing Rope",
                "- First Aid (Paracetamol, Betadine, Eucalyptus Oil, Plaster, Sterile Gauze, Oxygen)",
                "- Matches",
                "- Compass",
                "- Aluminum Foil",
                "- Knife",
                "- Small Machete/Saw",
                "- Little Hoe",
                "- Garbage Plastic Bags",
                "- Rice",
                "- Oil"
            ],
            personalLogistic: [
                "- Carrier Bag 40 - 50 L",
                "- Mountain Jacket",
                "- Mountain Shoes",
                "- Sleeping Bag",
                "- Mattress",
                "- Raincoat",
                "- 2 Pairs of Change of Clothes (Quick Dry Material)",
                "- Gloves",
                "- Mountain Flip Flops",
                "- Cutlery (Plates, Spoons, Forks)",
                "- Dry Tissue",
                "- Personal Medicines",
                "- Flashlight/Headlamp",
                "- Trekking Pole",
                "- Food",
                "- Drinks",
                "- Private Water Bottle",
                "- Garbage Bag",
                "- Survival Kit (Multipurpose Folding Knife, Compass, Match)",
                "- Helmet"
            ]
        ),
        reqirements: [
            MountainRequirement(
                title: "Minimum Cost",
                items: [
                    "Weekeday : IDR 19.000",
                    "Weekend : IDR 24.000"
                ]
            ),
            MountainRequirement(
                title: "Group Members",
                items: [
                    "Minimum : 4 Members",
                    "Maximum : 7 Members"
                ]
            ),
            MountainRequirement(
                title: "Document",
                items: [
                    "1. Identity Card (KTP, Student Card, SIM, etc.)",
                    "2. Parental/Guardian Permission to climb for hiker under 17 years old",
                    "3. Health Certificate, including a certificate of being free from ISPA"
                ]
            )
        ]
    ), // Sumeru
    Mountain(
        name: "Cereme",
        location: "Kuningan, West java, Indonesia",
        height: 3078,
        image: "",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 9250,
            pathways: 4
        ),
        informations: [
            MountainInfo(
                title: "Mountain Status",
                information: "Active"
            ),
            MountainInfo(
                title: "Fun Fact",
                information: "This mountain is the highest mountain in West Java and has a double crater. At an altitude of about 2,900 m above sea level on the southern slope there is a former eruption point called Gowa Swallow. The name of this mountain comes from the word cereme (Phyllanthus acidus, a type of herbaceous plant with small fruit with a sour taste), but is often called Ciremai, a symptom of hypercorrection due to the many place names in the Pasundan area that use the prefix 'ci-' for place naming."
            )
        ],
        essentials: MountainEssential(
            groupLogistic: [
                "- Tents",
                "- Flysheet",
                "- Nesting (2 Aluminum Pans, 1 Frying Pan, 1 Spatula)",
                "- Portable Stove",
                "- Portable Gas",
                "- Jerrycan",
                "- Prustic rope",
                "- Raffia rope",
                "- Webbing Rope",
                "- First Aid (Paracetamol, Betadine, Eucalyptus Oil, Plaster, Sterile Gauze, Oxygen)",
                "- Matches",
                "- Compass",
                "- Aluminum Foil",
                "- Knife",
                "- Small Machete/Saw",
                "- Little Hoe",
                "- Garbage Plastic Bags",
                "- Rice",
                "- Oil"
            ],
            personalLogistic: [
                "- Carrier Bag 40 - 50 L",
                "- Mountain Jacket",
                "- Mountain Shoes",
                "- Sleeping Bag",
                "- Mattress",
                "- Raincoat",
                "- 2 Pairs of Change of Clothes (Quick Dry Material)",
                "- Gloves",
                "- Mountain Flip Flops",
                "- Cutlery (Plates, Spoons, Forks)",
                "- Dry Tissue",
                "- Personal Medicines",
                "- Flashlight/Headlamp",
                "- Trekking Pole",
                "- Food",
                "- Drinks",
                "- Private Water Bottle",
                "- Garbage Bag",
                "- Survival Kit (Multipurpose Folding Knife, Compass, Match)",
                "- Kernmantle Rope 30 m",
                "- Carabiners",
                "- Webbing",
                "- Harness",
                "- Ascender",
                "- Helmet",
                "- Jumar",
                "- Prusik Rope",
                "- HT (Handy Talkie)"
            ]
        ),
        reqirements: [
            MountainRequirement(
                title: "Minimum Cost",
                items: [
                    "Weekeday : IDR 5.000",
                    "Weekend : IDR 7.500"
                ]
            ),
            MountainRequirement(
                title: "Group Members",
                items: [
                    "Minimum : 4 Members",
                    "Maximum : 8 Members"
                ]
            ),
            MountainRequirement(
                title: "Document",
                items: [
                    "1. Identity Card (KTP, Student Card, SIM, etc.)",
                    "2. Parental/Guardian Permission to climb for hiker under 17 years old",
                    "3. Health Certificate, including a certificate of being free from ISPA"
                ]
            )
        ]
    ), // Ciremai
    Mountain(
        name: "Raung",
        location: "Bondowoso, East java, Indonesia",
        height: 3344,
        image: "",
        estimation: HikingEstimation(
            duration: "3D2N",
            distance: 14350,
            pathways: 2
        ),
        informations: [
            MountainInfo(
                title: "Mountain Status",
                information: "Active"
            ),
            MountainInfo(
                title: "Fun Fact",
                information: "Located in three regencies, namely Bondowoso, Banyuwangi, and Jember, Mount Raung is one of the iconic mountains with the most extreme paths on the island of Java. Its height which reaches 3,344 meters above sea level makes Mount Raung the third highest mountain in East Java."
            )
        ],
        essentials: MountainEssential(
            groupLogistic: [
                "- Tents",
                "- Flysheet",
                "- Nesting (2 Aluminum Pans, 1 Frying Pan, 1 Spatula)",
                "- Portable Stove",
                "- Portable Gas",
                "- Jerrycan",
                "- Prustic rope",
                "- Raffia rope",
                "- Webbing Rope",
                "- First Aid (Paracetamol, Betadine, Eucalyptus Oil, Plaster, Sterile Gauze, Oxygen)",
                "- Matches",
                "- Compass",
                "- Aluminum Foil",
                "- Knife",
                "- Small Machete/Saw",
                "- Little Hoe",
                "- Garbage Plastic Bags",
                "- Rice",
                "- Oil"
            ],
            personalLogistic: [
                "- Carrier Bag 40 - 50 L",
                "- Mountain Jacket",
                "- Mountain Shoes",
                "- Sleeping Bag",
                "- Mattress",
                "- Raincoat",
                "- 2 Pairs of Change of Clothes (Quick Dry Material)",
                "- Gloves",
                "- Mountain Flip Flops",
                "- Cutlery (Plates, Spoons, Forks)",
                "- Dry Tissue",
                "- Personal Medicines",
                "- Flashlight/Headlamp",
                "- Trekking Pole",
                "- Food",
                "- Drinks",
                "- Private Water Bottle",
                "- Garbage Bag",
                "- Survival Kit (Multipurpose Folding Knife, Compass, Match)"
            ]
        ),
        reqirements: [
            MountainRequirement(
                title: "Minimum Cost",
                items: [
                    "Weekeday : IDR 15.000",
                    "Weekend : IDR 15.000"
                ]
            ),
            MountainRequirement(
                title: "Group Members",
                items: [
                    "Minimum : 1 Members (+Guide is a must)"
                ]
            ),
            MountainRequirement(
                title: "Document",
                items: [
                    "1. Identity Card (KTP, Student Card, SIM, etc.)",
                    "2. Parental/Guardian Permission to climb for hiker under 17 years old",
                    "3. Health Certificate, including a certificate of being free from ISPA",
                    "4. Stamp Duty"
                ]
            )
        ]
    ), // Raung
    Mountain(
        name: "Gede",
        location: "Cianjur, West java, Indonesia",
        height: 2958,
        image: "",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 9150,
            pathways: 3
        ),
        informations: [
            MountainInfo(
                title: "Mountain Status",
                information: "Active"
            ),
            MountainInfo(
                title: "Fun Fact",
                information: "Mount Gede is within the scope of Gede Pangrango National Park, which is one of the five national parks that were first announced in Indonesia in 1980. The average temperature at the top of Mount Gede is 18 °C and at night the peak temperature is around 5 °C, with an average rainfall of 3,600 mm/year."
            )
        ],
        essentials: MountainEssential(
            groupLogistic: [
                "- Tents",
                "- Flysheet",
                "- Nesting (2 Aluminum Pans, 1 Frying Pan, 1 Spatula)",
                "- Portable Stove",
                "- Portable Gas",
                "- Jerrycan",
                "- Prustic rope",
                "- Raffia rope",
                "- Webbing Rope",
                "- First Aid (Paracetamol, Betadine, Eucalyptus Oil, Plaster, Sterile Gauze, Oxygen)",
                "- Matches",
                "- Compass",
                "- Aluminum Foil",
                "- Knife",
                "- Small Machete/Saw",
                "- Little Hoe",
                "- Garbage Plastic Bags",
                "- Rice",
                "- Oil"
            ],
            personalLogistic: [
                "- Carrier Bag 40 - 50 L",
                "- Mountain Jacket",
                "- Mountain Shoes",
                "- Sleeping Bag",
                "- Mattress",
                "- Raincoat",
                "- 2 Pairs of Change of Clothes (Quick Dry Material)",
                "- Gloves",
                "- Mountain Flip Flops",
                "- Cutlery (Plates, Spoons, Forks)",
                "- Dry Tissue",
                "- Personal Medicines",
                "- Flashlight/Headlamp",
                "- Trekking Pole",
                "- Food",
                "- Drinks",
                "- Private Water Bottle",
                "- Garbage Bag",
                "- Survival Kit (Multipurpose Folding Knife, Compass, Match)"
            ]
        ),
        reqirements: [
            MountainRequirement(
                title: "Minimum Cost",
                items: [
                    "Weekeday : IDR 34.000",
                    "Weekend : IDR 29.000"
                ]
            ),
            MountainRequirement(
                title: "Group Members",
                items: [
                    "Minimum : 3 Members",
                    "Maximum : 10 Members"
                ]
            ),
            MountainRequirement(
                title: "Document",
                items: [
                    "1. Identity Card (KTP, Student Card, SIM, etc.)",
                    "2. Health Certificate"
                ]
            )
        ]
    ), // Gede
    Mountain(
        name: "Papandayan",
        location: "Garut, West java, Indonesia",
        height: 2665,
        image: "",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 12700,
            pathways: 1
        ),
        informations: [
            MountainInfo(
                title: "Mountain Status",
                information: "Active"
            ),
            MountainInfo(
                title: "Fun Fact",
                information: "On Mount Papandayan, there are several famous craters. Among them are Kawah Mas, Kawah Baru, Kawah Nangklak, dan Kawah Manuk. The craters emit steam from the inside. The topography in the area is steep, hilly and mountainous and there are steep cliffs. According to the classification of Schmidt and Ferguson, it belongs to the B climate type, with an average rainfall of 3,000 mm/year, humidity of 70-80% and a temperature of 10 °C."
            )
        ],
        essentials: MountainEssential(
            groupLogistic: [
                "- Tents",
                "- Flysheet",
                "- Nesting (2 Aluminum Pans, 1 Frying Pan, 1 Spatula)",
                "- Portable Stove",
                "- Portable Gas",
                "- Jerrycan",
                "- Prustic rope",
                "- Raffia rope",
                "- Webbing Rope",
                "- First Aid (Paracetamol, Betadine, Eucalyptus Oil, Plaster, Sterile Gauze, Oxygen)",
                "- Matches",
                "- Compass",
                "- Aluminum Foil",
                "- Knife",
                "- Small Machete/Saw",
                "- Little Hoe",
                "- Garbage Plastic Bags",
                "- Rice",
                "- Oil"
            ],
            personalLogistic: [
                "- Carrier Bag 40 - 50 L",
                "- Mountain Jacket",
                "- Mountain Shoes",
                "- Sleeping Bag",
                "- Mattress",
                "- Raincoat",
                "- 2 Pairs of Change of Clothes (Quick Dry Material)",
                "- Gloves",
                "- Mountain Flip Flops",
                "- Cutlery (Plates, Spoons, Forks)",
                "- Dry Tissue",
                "- Personal Medicines",
                "- Flashlight/Headlamp",
                "- Trekking Pole",
                "- Food",
                "- Drinks",
                "- Private Water Bottle",
                "- Garbage Bag",
                "- Survival Kit (Multipurpose Folding Knife, Compass, Match)"
            ]
        ),
        reqirements: [
            MountainRequirement(
                title: "Minimum Cost",
                items: [
                    "Weekeday : IDR 30.000",
                    "Weekend : IDR 20.000"
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
                    "1. Identity Card (KTP, Student Card, SIM, etc.)",
                    "2. Health Certificate"
                ]
            )
        ]
    ), // Papandayan
    Mountain(
        name: "Cikuray",
        location: "Garut, West java, Indonesia",
        height: 2821,
        image: "",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 8700,
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
                "- Tents",
                "- Flysheet",
                "- Nesting (2 Aluminum Pans, 1 Frying Pan, 1 Spatula)",
                "- Portable Stove",
                "- Portable Gas",
                "- Jerrycan",
                "- Prustic rope",
                "- Raffia rope",
                "- Webbing Rope",
                "- First Aid (Paracetamol, Betadine, Eucalyptus Oil, Plaster, Sterile Gauze, Oxygen)",
                "- Matches",
                "- Compass",
                "- Aluminum Foil",
                "- Knife",
                "- Small Machete/Saw",
                "- Little Hoe",
                "- Garbage Plastic Bags",
                "- Rice",
                "- Oil"
            ],
            personalLogistic: [
                "- Carrier Bag 40 - 50 L",
                "- Mountain Jacket",
                "- Mountain Shoes",
                "- Sleeping Bag",
                "- Mattress",
                "- Raincoat",
                "- 2 Pairs of Change of Clothes (Quick Dry Material)",
                "- Gloves",
                "- Mountain Flip Flops",
                "- Cutlery (Plates, Spoons, Forks)",
                "- Dry Tissue",
                "- Personal Medicines",
                "- Flashlight/Headlamp",
                "- Trekking Pole",
                "- Food",
                "- Drinks",
                "- Private Water Bottle",
                "- Garbage Bag",
                "- Survival Kit (Multipurpose Folding Knife, Compass, Match)"
            ]
        ),
        reqirements: [
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
                    "1. Identity Card (KTP, Student Card, SIM, etc.)",
                    "2. Health Certificate"
                ]
            )
        ]
    ), // Cikuray---------------------------------
    Mountain(
        name: "Kerinci",
        location: "Jambi, West Sumatra, Indonesia",
        height: 3805,
        image: "",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 8700,
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
                "- Tents",
                "- Flysheet",
                "- Nesting (2 Aluminum Pans, 1 Frying Pan, 1 Spatula)",
                "- Portable Stove",
                "- Portable Gas",
                "- Jerrycan",
                "- Prustic rope",
                "- Raffia rope",
                "- Webbing Rope",
                "- First Aid (Paracetamol, Betadine, Eucalyptus Oil, Plaster, Sterile Gauze, Oxygen)",
                "- Matches",
                "- Compass",
                "- Aluminum Foil",
                "- Knife",
                "- Small Machete/Saw",
                "- Little Hoe",
                "- Garbage Plastic Bags",
                "- Rice",
                "- Oil"
            ],
            personalLogistic: [
                "- Carrier Bag 40 - 50 L",
                "- Mountain Jacket",
                "- Mountain Shoes",
                "- Sleeping Bag",
                "- Mattress",
                "- Raincoat",
                "- 2 Pairs of Change of Clothes (Quick Dry Material)",
                "- Gloves",
                "- Mountain Flip Flops",
                "- Cutlery (Plates, Spoons, Forks)",
                "- Dry Tissue",
                "- Personal Medicines",
                "- Flashlight/Headlamp",
                "- Trekking Pole",
                "- Food",
                "- Drinks",
                "- Private Water Bottle",
                "- Garbage Bag",
                "- Survival Kit (Multipurpose Folding Knife, Compass, Match)"
            ]
        ),
        reqirements: [
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
                    "1. Identity Card (KTP, Student Card, SIM, etc.)",
                    "2. Health Certificate"
                ]
            )
        ]
    ), // Kerinci
    Mountain(
        name: "Jayawijaya",
        location: "Papua, Papua, Indonesia",
        height: 4884,
        image: "",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 8700,
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
                "- Tents",
                "- Flysheet",
                "- Nesting (2 Aluminum Pans, 1 Frying Pan, 1 Spatula)",
                "- Portable Stove",
                "- Portable Gas",
                "- Jerrycan",
                "- Prustic rope",
                "- Raffia rope",
                "- Webbing Rope",
                "- First Aid (Paracetamol, Betadine, Eucalyptus Oil, Plaster, Sterile Gauze, Oxygen)",
                "- Matches",
                "- Compass",
                "- Aluminum Foil",
                "- Knife",
                "- Small Machete/Saw",
                "- Little Hoe",
                "- Garbage Plastic Bags",
                "- Rice",
                "- Oil"
            ],
            personalLogistic: [
                "- Carrier Bag 40 - 50 L",
                "- Mountain Jacket",
                "- Mountain Shoes",
                "- Sleeping Bag",
                "- Mattress",
                "- Raincoat",
                "- 2 Pairs of Change of Clothes (Quick Dry Material)",
                "- Gloves",
                "- Mountain Flip Flops",
                "- Cutlery (Plates, Spoons, Forks)",
                "- Dry Tissue",
                "- Personal Medicines",
                "- Flashlight/Headlamp",
                "- Trekking Pole",
                "- Food",
                "- Drinks",
                "- Private Water Bottle",
                "- Garbage Bag",
                "- Survival Kit (Multipurpose Folding Knife, Compass, Match)"
            ]
        ),
        reqirements: [
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
                    "1. Identity Card (KTP, Student Card, SIM, etc.)",
                    "2. Health Certificate"
                ]
            )
        ]
    ), // Jayawijaya
    Mountain(
        name: "Rinjani",
        location: "Lombok, West Nusa Tenggara, Indonesia",
        height: 3726,
        image: "",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 8700,
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
                "- Tents",
                "- Flysheet",
                "- Nesting (2 Aluminum Pans, 1 Frying Pan, 1 Spatula)",
                "- Portable Stove",
                "- Portable Gas",
                "- Jerrycan",
                "- Prustic rope",
                "- Raffia rope",
                "- Webbing Rope",
                "- First Aid (Paracetamol, Betadine, Eucalyptus Oil, Plaster, Sterile Gauze, Oxygen)",
                "- Matches",
                "- Compass",
                "- Aluminum Foil",
                "- Knife",
                "- Small Machete/Saw",
                "- Little Hoe",
                "- Garbage Plastic Bags",
                "- Rice",
                "- Oil"
            ],
            personalLogistic: [
                "- Carrier Bag 40 - 50 L",
                "- Mountain Jacket",
                "- Mountain Shoes",
                "- Sleeping Bag",
                "- Mattress",
                "- Raincoat",
                "- 2 Pairs of Change of Clothes (Quick Dry Material)",
                "- Gloves",
                "- Mountain Flip Flops",
                "- Cutlery (Plates, Spoons, Forks)",
                "- Dry Tissue",
                "- Personal Medicines",
                "- Flashlight/Headlamp",
                "- Trekking Pole",
                "- Food",
                "- Drinks",
                "- Private Water Bottle",
                "- Garbage Bag",
                "- Survival Kit (Multipurpose Folding Knife, Compass, Match)"
            ]
        ),
        reqirements: [
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
                    "1. Identity Card (KTP, Student Card, SIM, etc.)",
                    "2. Health Certificate"
                ]
            )
        ]
    ), // Rinjani
    Mountain(
        name: "Sumbing",
        location: "Magelang, Central Java, Indonesia",
        height: 3371,
        image: "",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 8700,
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
                "- Tents",
                "- Flysheet",
                "- Nesting (2 Aluminum Pans, 1 Frying Pan, 1 Spatula)",
                "- Portable Stove",
                "- Portable Gas",
                "- Jerrycan",
                "- Prustic rope",
                "- Raffia rope",
                "- Webbing Rope",
                "- First Aid (Paracetamol, Betadine, Eucalyptus Oil, Plaster, Sterile Gauze, Oxygen)",
                "- Matches",
                "- Compass",
                "- Aluminum Foil",
                "- Knife",
                "- Small Machete/Saw",
                "- Little Hoe",
                "- Garbage Plastic Bags",
                "- Rice",
                "- Oil"
            ],
            personalLogistic: [
                "- Carrier Bag 40 - 50 L",
                "- Mountain Jacket",
                "- Mountain Shoes",
                "- Sleeping Bag",
                "- Mattress",
                "- Raincoat",
                "- 2 Pairs of Change of Clothes (Quick Dry Material)",
                "- Gloves",
                "- Mountain Flip Flops",
                "- Cutlery (Plates, Spoons, Forks)",
                "- Dry Tissue",
                "- Personal Medicines",
                "- Flashlight/Headlamp",
                "- Trekking Pole",
                "- Food",
                "- Drinks",
                "- Private Water Bottle",
                "- Garbage Bag",
                "- Survival Kit (Multipurpose Folding Knife, Compass, Match)"
            ]
        ),
        reqirements: [
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
                    "1. Identity Card (KTP, Student Card, SIM, etc.)",
                    "2. Health Certificate"
                ]
            )
        ]
    ), // Sumbing
    Mountain(
        name: "Sundoro",
        location: "Temanggung, Central Java, Indonesia",
        height: 3136,
        image: "",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 8700,
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
                "- Tents",
                "- Flysheet",
                "- Nesting (2 Aluminum Pans, 1 Frying Pan, 1 Spatula)",
                "- Portable Stove",
                "- Portable Gas",
                "- Jerrycan",
                "- Prustic rope",
                "- Raffia rope",
                "- Webbing Rope",
                "- First Aid (Paracetamol, Betadine, Eucalyptus Oil, Plaster, Sterile Gauze, Oxygen)",
                "- Matches",
                "- Compass",
                "- Aluminum Foil",
                "- Knife",
                "- Small Machete/Saw",
                "- Little Hoe",
                "- Garbage Plastic Bags",
                "- Rice",
                "- Oil"
            ],
            personalLogistic: [
                "- Carrier Bag 40 - 50 L",
                "- Mountain Jacket",
                "- Mountain Shoes",
                "- Sleeping Bag",
                "- Mattress",
                "- Raincoat",
                "- 2 Pairs of Change of Clothes (Quick Dry Material)",
                "- Gloves",
                "- Mountain Flip Flops",
                "- Cutlery (Plates, Spoons, Forks)",
                "- Dry Tissue",
                "- Personal Medicines",
                "- Flashlight/Headlamp",
                "- Trekking Pole",
                "- Food",
                "- Drinks",
                "- Private Water Bottle",
                "- Garbage Bag",
                "- Survival Kit (Multipurpose Folding Knife, Compass, Match)"
            ]
        ),
        reqirements: [
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
                    "1. Identity Card (KTP, Student Card, SIM, etc.)",
                    "2. Health Certificate"
                ]
            )
        ]
    ), // Sundoro
    Mountain(
        name: "Lawu",
        location: "Karanganyar, Central Java, Indonesia",
        height: 3265,
        image: "",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 8700,
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
                "- Tents",
                "- Flysheet",
                "- Nesting (2 Aluminum Pans, 1 Frying Pan, 1 Spatula)",
                "- Portable Stove",
                "- Portable Gas",
                "- Jerrycan",
                "- Prustic rope",
                "- Raffia rope",
                "- Webbing Rope",
                "- First Aid (Paracetamol, Betadine, Eucalyptus Oil, Plaster, Sterile Gauze, Oxygen)",
                "- Matches",
                "- Compass",
                "- Aluminum Foil",
                "- Knife",
                "- Small Machete/Saw",
                "- Little Hoe",
                "- Garbage Plastic Bags",
                "- Rice",
                "- Oil"
            ],
            personalLogistic: [
                "- Carrier Bag 40 - 50 L",
                "- Mountain Jacket",
                "- Mountain Shoes",
                "- Sleeping Bag",
                "- Mattress",
                "- Raincoat",
                "- 2 Pairs of Change of Clothes (Quick Dry Material)",
                "- Gloves",
                "- Mountain Flip Flops",
                "- Cutlery (Plates, Spoons, Forks)",
                "- Dry Tissue",
                "- Personal Medicines",
                "- Flashlight/Headlamp",
                "- Trekking Pole",
                "- Food",
                "- Drinks",
                "- Private Water Bottle",
                "- Garbage Bag",
                "- Survival Kit (Multipurpose Folding Knife, Compass, Match)"
            ]
        ),
        reqirements: [
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
                    "1. Identity Card (KTP, Student Card, SIM, etc.)",
                    "2. Health Certificate"
                ]
            )
        ]
    ), // Lawu
    Mountain(
        name: "Merbabu",
        location: "Boyolali, Central Java, Indonesia",
        height: 3145,
        image: "",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 8700,
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
                "- Tents",
                "- Flysheet",
                "- Nesting (2 Aluminum Pans, 1 Frying Pan, 1 Spatula)",
                "- Portable Stove",
                "- Portable Gas",
                "- Jerrycan",
                "- Prustic rope",
                "- Raffia rope",
                "- Webbing Rope",
                "- First Aid (Paracetamol, Betadine, Eucalyptus Oil, Plaster, Sterile Gauze, Oxygen)",
                "- Matches",
                "- Compass",
                "- Aluminum Foil",
                "- Knife",
                "- Small Machete/Saw",
                "- Little Hoe",
                "- Garbage Plastic Bags",
                "- Rice",
                "- Oil"
            ],
            personalLogistic: [
                "- Carrier Bag 40 - 50 L",
                "- Mountain Jacket",
                "- Mountain Shoes",
                "- Sleeping Bag",
                "- Mattress",
                "- Raincoat",
                "- 2 Pairs of Change of Clothes (Quick Dry Material)",
                "- Gloves",
                "- Mountain Flip Flops",
                "- Cutlery (Plates, Spoons, Forks)",
                "- Dry Tissue",
                "- Personal Medicines",
                "- Flashlight/Headlamp",
                "- Trekking Pole",
                "- Food",
                "- Drinks",
                "- Private Water Bottle",
                "- Garbage Bag",
                "- Survival Kit (Multipurpose Folding Knife, Compass, Match)"
            ]
        ),
        reqirements: [
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
                    "1. Identity Card (KTP, Student Card, SIM, etc.)",
                    "2. Health Certificate"
                ]
            )
        ]
    ), // Merbabu
    Mountain(
        name: "Latimojong",
        location: "Enrekan, South Sulawesi, Indonesia",
        height: 3478,
        image: "",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 8700,
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
                "- Tents",
                "- Flysheet",
                "- Nesting (2 Aluminum Pans, 1 Frying Pan, 1 Spatula)",
                "- Portable Stove",
                "- Portable Gas",
                "- Jerrycan",
                "- Prustic rope",
                "- Raffia rope",
                "- Webbing Rope",
                "- First Aid (Paracetamol, Betadine, Eucalyptus Oil, Plaster, Sterile Gauze, Oxygen)",
                "- Matches",
                "- Compass",
                "- Aluminum Foil",
                "- Knife",
                "- Small Machete/Saw",
                "- Little Hoe",
                "- Garbage Plastic Bags",
                "- Rice",
                "- Oil"
            ],
            personalLogistic: [
                "- Carrier Bag 40 - 50 L",
                "- Mountain Jacket",
                "- Mountain Shoes",
                "- Sleeping Bag",
                "- Mattress",
                "- Raincoat",
                "- 2 Pairs of Change of Clothes (Quick Dry Material)",
                "- Gloves",
                "- Mountain Flip Flops",
                "- Cutlery (Plates, Spoons, Forks)",
                "- Dry Tissue",
                "- Personal Medicines",
                "- Flashlight/Headlamp",
                "- Trekking Pole",
                "- Food",
                "- Drinks",
                "- Private Water Bottle",
                "- Garbage Bag",
                "- Survival Kit (Multipurpose Folding Knife, Compass, Match)"
            ]
        ),
        reqirements: [
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
                    "1. Identity Card (KTP, Student Card, SIM, etc.)",
                    "2. Health Certificate"
                ]
            )
        ]
    ), // Latimojong
    Mountain(
        name: "Kelud",
        location: "Kediri, East Java, Indonesia",
        height: 1731,
        image: "",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 8700,
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
                "- Tents",
                "- Flysheet",
                "- Nesting (2 Aluminum Pans, 1 Frying Pan, 1 Spatula)",
                "- Portable Stove",
                "- Portable Gas",
                "- Jerrycan",
                "- Prustic rope",
                "- Raffia rope",
                "- Webbing Rope",
                "- First Aid (Paracetamol, Betadine, Eucalyptus Oil, Plaster, Sterile Gauze, Oxygen)",
                "- Matches",
                "- Compass",
                "- Aluminum Foil",
                "- Knife",
                "- Small Machete/Saw",
                "- Little Hoe",
                "- Garbage Plastic Bags",
                "- Rice",
                "- Oil"
            ],
            personalLogistic: [
                "- Carrier Bag 40 - 50 L",
                "- Mountain Jacket",
                "- Mountain Shoes",
                "- Sleeping Bag",
                "- Mattress",
                "- Raincoat",
                "- 2 Pairs of Change of Clothes (Quick Dry Material)",
                "- Gloves",
                "- Mountain Flip Flops",
                "- Cutlery (Plates, Spoons, Forks)",
                "- Dry Tissue",
                "- Personal Medicines",
                "- Flashlight/Headlamp",
                "- Trekking Pole",
                "- Food",
                "- Drinks",
                "- Private Water Bottle",
                "- Garbage Bag",
                "- Survival Kit (Multipurpose Folding Knife, Compass, Match)"
            ]
        ),
        reqirements: [
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
                    "1. Identity Card (KTP, Student Card, SIM, etc.)",
                    "2. Health Certificate"
                ]
            )
        ]
    ), // Kelud
    Mountain(
        name: "Arjuno-Welirang",
        location: "Malang, East Java, Indonesia",
        height: 3339,
        image: "",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 8700,
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
                "- Tents",
                "- Flysheet",
                "- Nesting (2 Aluminum Pans, 1 Frying Pan, 1 Spatula)",
                "- Portable Stove",
                "- Portable Gas",
                "- Jerrycan",
                "- Prustic rope",
                "- Raffia rope",
                "- Webbing Rope",
                "- First Aid (Paracetamol, Betadine, Eucalyptus Oil, Plaster, Sterile Gauze, Oxygen)",
                "- Matches",
                "- Compass",
                "- Aluminum Foil",
                "- Knife",
                "- Small Machete/Saw",
                "- Little Hoe",
                "- Garbage Plastic Bags",
                "- Rice",
                "- Oil"
            ],
            personalLogistic: [
                "- Carrier Bag 40 - 50 L",
                "- Mountain Jacket",
                "- Mountain Shoes",
                "- Sleeping Bag",
                "- Mattress",
                "- Raincoat",
                "- 2 Pairs of Change of Clothes (Quick Dry Material)",
                "- Gloves",
                "- Mountain Flip Flops",
                "- Cutlery (Plates, Spoons, Forks)",
                "- Dry Tissue",
                "- Personal Medicines",
                "- Flashlight/Headlamp",
                "- Trekking Pole",
                "- Food",
                "- Drinks",
                "- Private Water Bottle",
                "- Garbage Bag",
                "- Survival Kit (Multipurpose Folding Knife, Compass, Match)"
            ]
        ),
        reqirements: [
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
                    "1. Identity Card (KTP, Student Card, SIM, etc.)",
                    "2. Health Certificate"
                ]
            )
        ]
    ), // Arjuno-Welirang
    Mountain(
        name: "Argopuro",
        location: "Probolinggo, East Java, Indonesia",
        height: 3088,
        image: "",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 8700,
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
                "- Tents",
                "- Flysheet",
                "- Nesting (2 Aluminum Pans, 1 Frying Pan, 1 Spatula)",
                "- Portable Stove",
                "- Portable Gas",
                "- Jerrycan",
                "- Prustic rope",
                "- Raffia rope",
                "- Webbing Rope",
                "- First Aid (Paracetamol, Betadine, Eucalyptus Oil, Plaster, Sterile Gauze, Oxygen)",
                "- Matches",
                "- Compass",
                "- Aluminum Foil",
                "- Knife",
                "- Small Machete/Saw",
                "- Little Hoe",
                "- Garbage Plastic Bags",
                "- Rice",
                "- Oil"
            ],
            personalLogistic: [
                "- Carrier Bag 40 - 50 L",
                "- Mountain Jacket",
                "- Mountain Shoes",
                "- Sleeping Bag",
                "- Mattress",
                "- Raincoat",
                "- 2 Pairs of Change of Clothes (Quick Dry Material)",
                "- Gloves",
                "- Mountain Flip Flops",
                "- Cutlery (Plates, Spoons, Forks)",
                "- Dry Tissue",
                "- Personal Medicines",
                "- Flashlight/Headlamp",
                "- Trekking Pole",
                "- Food",
                "- Drinks",
                "- Private Water Bottle",
                "- Garbage Bag",
                "- Survival Kit (Multipurpose Folding Knife, Compass, Match)"
            ]
        ),
        reqirements: [
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
                    "1. Identity Card (KTP, Student Card, SIM, etc.)",
                    "2. Health Certificate"
                ]
            )
        ]
    ), // Argopuro
    Mountain(
        name: "Guntur",
        location: "Garut, West Java, Indonesia",
        height: 2249,
        image: "",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 8700,
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
                "- Tents",
                "- Flysheet",
                "- Nesting (2 Aluminum Pans, 1 Frying Pan, 1 Spatula)",
                "- Portable Stove",
                "- Portable Gas",
                "- Jerrycan",
                "- Prustic rope",
                "- Raffia rope",
                "- Webbing Rope",
                "- First Aid (Paracetamol, Betadine, Eucalyptus Oil, Plaster, Sterile Gauze, Oxygen)",
                "- Matches",
                "- Compass",
                "- Aluminum Foil",
                "- Knife",
                "- Small Machete/Saw",
                "- Little Hoe",
                "- Garbage Plastic Bags",
                "- Rice",
                "- Oil"
            ],
            personalLogistic: [
                "- Carrier Bag 40 - 50 L",
                "- Mountain Jacket",
                "- Mountain Shoes",
                "- Sleeping Bag",
                "- Mattress",
                "- Raincoat",
                "- 2 Pairs of Change of Clothes (Quick Dry Material)",
                "- Gloves",
                "- Mountain Flip Flops",
                "- Cutlery (Plates, Spoons, Forks)",
                "- Dry Tissue",
                "- Personal Medicines",
                "- Flashlight/Headlamp",
                "- Trekking Pole",
                "- Food",
                "- Drinks",
                "- Private Water Bottle",
                "- Garbage Bag",
                "- Survival Kit (Multipurpose Folding Knife, Compass, Match)"
            ]
        ),
        reqirements: [
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
                    "1. Identity Card (KTP, Student Card, SIM, etc.)",
                    "2. Health Certificate"
                ]
            )
        ]
    ), // Guntur
    Mountain(
        name: "Agung",
        location: "Bali, Bali, Indonesia",
        height: 3142,
        image: "",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 8700,
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
                "- Tents",
                "- Flysheet",
                "- Nesting (2 Aluminum Pans, 1 Frying Pan, 1 Spatula)",
                "- Portable Stove",
                "- Portable Gas",
                "- Jerrycan",
                "- Prustic rope",
                "- Raffia rope",
                "- Webbing Rope",
                "- First Aid (Paracetamol, Betadine, Eucalyptus Oil, Plaster, Sterile Gauze, Oxygen)",
                "- Matches",
                "- Compass",
                "- Aluminum Foil",
                "- Knife",
                "- Small Machete/Saw",
                "- Little Hoe",
                "- Garbage Plastic Bags",
                "- Rice",
                "- Oil"
            ],
            personalLogistic: [
                "- Carrier Bag 40 - 50 L",
                "- Mountain Jacket",
                "- Mountain Shoes",
                "- Sleeping Bag",
                "- Mattress",
                "- Raincoat",
                "- 2 Pairs of Change of Clothes (Quick Dry Material)",
                "- Gloves",
                "- Mountain Flip Flops",
                "- Cutlery (Plates, Spoons, Forks)",
                "- Dry Tissue",
                "- Personal Medicines",
                "- Flashlight/Headlamp",
                "- Trekking Pole",
                "- Food",
                "- Drinks",
                "- Private Water Bottle",
                "- Garbage Bag",
                "- Survival Kit (Multipurpose Folding Knife, Compass, Match)"
            ]
        ),
        reqirements: [
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
                    "1. Identity Card (KTP, Student Card, SIM, etc.)",
                    "2. Health Certificate"
                ]
            )
        ]
    ), // Agung
    Mountain(
        name: "Ungaran",
        location: "Semarang, Central Java, Indonesia",
        height: 2050,
        image: "",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 8700,
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
                "- Tents",
                "- Flysheet",
                "- Nesting (2 Aluminum Pans, 1 Frying Pan, 1 Spatula)",
                "- Portable Stove",
                "- Portable Gas",
                "- Jerrycan",
                "- Prustic rope",
                "- Raffia rope",
                "- Webbing Rope",
                "- First Aid (Paracetamol, Betadine, Eucalyptus Oil, Plaster, Sterile Gauze, Oxygen)",
                "- Matches",
                "- Compass",
                "- Aluminum Foil",
                "- Knife",
                "- Small Machete/Saw",
                "- Little Hoe",
                "- Garbage Plastic Bags",
                "- Rice",
                "- Oil"
            ],
            personalLogistic: [
                "- Carrier Bag 40 - 50 L",
                "- Mountain Jacket",
                "- Mountain Shoes",
                "- Sleeping Bag",
                "- Mattress",
                "- Raincoat",
                "- 2 Pairs of Change of Clothes (Quick Dry Material)",
                "- Gloves",
                "- Mountain Flip Flops",
                "- Cutlery (Plates, Spoons, Forks)",
                "- Dry Tissue",
                "- Personal Medicines",
                "- Flashlight/Headlamp",
                "- Trekking Pole",
                "- Food",
                "- Drinks",
                "- Private Water Bottle",
                "- Garbage Bag",
                "- Survival Kit (Multipurpose Folding Knife, Compass, Match)"
            ]
        ),
        reqirements: [
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
                    "1. Identity Card (KTP, Student Card, SIM, etc.)",
                    "2. Health Certificate"
                ]
            )
        ]
    ), // Ungaran
    Mountain(
        name: "Wilis",
        location: "Kediri, East Java, Indonesia",
        height: 2563,
        image: "",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 8700,
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
                "- Tents",
                "- Flysheet",
                "- Nesting (2 Aluminum Pans, 1 Frying Pan, 1 Spatula)",
                "- Portable Stove",
                "- Portable Gas",
                "- Jerrycan",
                "- Prustic rope",
                "- Raffia rope",
                "- Webbing Rope",
                "- First Aid (Paracetamol, Betadine, Eucalyptus Oil, Plaster, Sterile Gauze, Oxygen)",
                "- Matches",
                "- Compass",
                "- Aluminum Foil",
                "- Knife",
                "- Small Machete/Saw",
                "- Little Hoe",
                "- Garbage Plastic Bags",
                "- Rice",
                "- Oil"
            ],
            personalLogistic: [
                "- Carrier Bag 40 - 50 L",
                "- Mountain Jacket",
                "- Mountain Shoes",
                "- Sleeping Bag",
                "- Mattress",
                "- Raincoat",
                "- 2 Pairs of Change of Clothes (Quick Dry Material)",
                "- Gloves",
                "- Mountain Flip Flops",
                "- Cutlery (Plates, Spoons, Forks)",
                "- Dry Tissue",
                "- Personal Medicines",
                "- Flashlight/Headlamp",
                "- Trekking Pole",
                "- Food",
                "- Drinks",
                "- Private Water Bottle",
                "- Garbage Bag",
                "- Survival Kit (Multipurpose Folding Knife, Compass, Match)"
            ]
        ),
        reqirements: [
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
                    "1. Identity Card (KTP, Student Card, SIM, etc.)",
                    "2. Health Certificate"
                ]
            )
        ]
    ), // Wilis
    Mountain(
        name: "Tambora",
        location: "Sumbawa, West Nusa Tenggara, Indonesia",
        height: 2850,
        image: "",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 8700,
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
                "- Tents",
                "- Flysheet",
                "- Nesting (2 Aluminum Pans, 1 Frying Pan, 1 Spatula)",
                "- Portable Stove",
                "- Portable Gas",
                "- Jerrycan",
                "- Prustic rope",
                "- Raffia rope",
                "- Webbing Rope",
                "- First Aid (Paracetamol, Betadine, Eucalyptus Oil, Plaster, Sterile Gauze, Oxygen)",
                "- Matches",
                "- Compass",
                "- Aluminum Foil",
                "- Knife",
                "- Small Machete/Saw",
                "- Little Hoe",
                "- Garbage Plastic Bags",
                "- Rice",
                "- Oil"
            ],
            personalLogistic: [
                "- Carrier Bag 40 - 50 L",
                "- Mountain Jacket",
                "- Mountain Shoes",
                "- Sleeping Bag",
                "- Mattress",
                "- Raincoat",
                "- 2 Pairs of Change of Clothes (Quick Dry Material)",
                "- Gloves",
                "- Mountain Flip Flops",
                "- Cutlery (Plates, Spoons, Forks)",
                "- Dry Tissue",
                "- Personal Medicines",
                "- Flashlight/Headlamp",
                "- Trekking Pole",
                "- Food",
                "- Drinks",
                "- Private Water Bottle",
                "- Garbage Bag",
                "- Survival Kit (Multipurpose Folding Knife, Compass, Match)"
            ]
        ),
        reqirements: [
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
                    "1. Identity Card (KTP, Student Card, SIM, etc.)",
                    "2. Health Certificate"
                ]
            )
        ]
    ), // Tambora
    Mountain(
        name: "Geureudong",
        location: "Aceh, Aceh, Indonesia",
        height: 2885,
        image: "",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 8700,
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
                "- Tents",
                "- Flysheet",
                "- Nesting (2 Aluminum Pans, 1 Frying Pan, 1 Spatula)",
                "- Portable Stove",
                "- Portable Gas",
                "- Jerrycan",
                "- Prustic rope",
                "- Raffia rope",
                "- Webbing Rope",
                "- First Aid (Paracetamol, Betadine, Eucalyptus Oil, Plaster, Sterile Gauze, Oxygen)",
                "- Matches",
                "- Compass",
                "- Aluminum Foil",
                "- Knife",
                "- Small Machete/Saw",
                "- Little Hoe",
                "- Garbage Plastic Bags",
                "- Rice",
                "- Oil"
            ],
            personalLogistic: [
                "- Carrier Bag 40 - 50 L",
                "- Mountain Jacket",
                "- Mountain Shoes",
                "- Sleeping Bag",
                "- Mattress",
                "- Raincoat",
                "- 2 Pairs of Change of Clothes (Quick Dry Material)",
                "- Gloves",
                "- Mountain Flip Flops",
                "- Cutlery (Plates, Spoons, Forks)",
                "- Dry Tissue",
                "- Personal Medicines",
                "- Flashlight/Headlamp",
                "- Trekking Pole",
                "- Food",
                "- Drinks",
                "- Private Water Bottle",
                "- Garbage Bag",
                "- Survival Kit (Multipurpose Folding Knife, Compass, Match)"
            ]
        ),
        reqirements: [
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
                    "1. Identity Card (KTP, Student Card, SIM, etc.)",
                    "2. Health Certificate"
                ]
            )
        ]
    ), // Geureudong
    Mountain(
        name: "Singgalang",
        location: "Agam, West Sumatra, Indonesia",
        height: 2877,
        image: "",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 8700,
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
                "- Tents",
                "- Flysheet",
                "- Nesting (2 Aluminum Pans, 1 Frying Pan, 1 Spatula)",
                "- Portable Stove",
                "- Portable Gas",
                "- Jerrycan",
                "- Prustic rope",
                "- Raffia rope",
                "- Webbing Rope",
                "- First Aid (Paracetamol, Betadine, Eucalyptus Oil, Plaster, Sterile Gauze, Oxygen)",
                "- Matches",
                "- Compass",
                "- Aluminum Foil",
                "- Knife",
                "- Small Machete/Saw",
                "- Little Hoe",
                "- Garbage Plastic Bags",
                "- Rice",
                "- Oil"
            ],
            personalLogistic: [
                "- Carrier Bag 40 - 50 L",
                "- Mountain Jacket",
                "- Mountain Shoes",
                "- Sleeping Bag",
                "- Mattress",
                "- Raincoat",
                "- 2 Pairs of Change of Clothes (Quick Dry Material)",
                "- Gloves",
                "- Mountain Flip Flops",
                "- Cutlery (Plates, Spoons, Forks)",
                "- Dry Tissue",
                "- Personal Medicines",
                "- Flashlight/Headlamp",
                "- Trekking Pole",
                "- Food",
                "- Drinks",
                "- Private Water Bottle",
                "- Garbage Bag",
                "- Survival Kit (Multipurpose Folding Knife, Compass, Match)"
            ]
        ),
        reqirements: [
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
                    "1. Identity Card (KTP, Student Card, SIM, etc.)",
                    "2. Health Certificate"
                ]
            )
        ]
    ), // Singgalang
    Mountain(
        name: "Leuser",
        location: "Aceh, Aceh, Indonesia",
        height: 3404,
        image: "",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 8700,
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
                "- Tents",
                "- Flysheet",
                "- Nesting (2 Aluminum Pans, 1 Frying Pan, 1 Spatula)",
                "- Portable Stove",
                "- Portable Gas",
                "- Jerrycan",
                "- Prustic rope",
                "- Raffia rope",
                "- Webbing Rope",
                "- First Aid (Paracetamol, Betadine, Eucalyptus Oil, Plaster, Sterile Gauze, Oxygen)",
                "- Matches",
                "- Compass",
                "- Aluminum Foil",
                "- Knife",
                "- Small Machete/Saw",
                "- Little Hoe",
                "- Garbage Plastic Bags",
                "- Rice",
                "- Oil"
            ],
            personalLogistic: [
                "- Carrier Bag 40 - 50 L",
                "- Mountain Jacket",
                "- Mountain Shoes",
                "- Sleeping Bag",
                "- Mattress",
                "- Raincoat",
                "- 2 Pairs of Change of Clothes (Quick Dry Material)",
                "- Gloves",
                "- Mountain Flip Flops",
                "- Cutlery (Plates, Spoons, Forks)",
                "- Dry Tissue",
                "- Personal Medicines",
                "- Flashlight/Headlamp",
                "- Trekking Pole",
                "- Food",
                "- Drinks",
                "- Private Water Bottle",
                "- Garbage Bag",
                "- Survival Kit (Multipurpose Folding Knife, Compass, Match)"
            ]
        ),
        reqirements: [
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
                    "1. Identity Card (KTP, Student Card, SIM, etc.)",
                    "2. Health Certificate"
                ]
            )
        ]
    ) // Leuser
]
