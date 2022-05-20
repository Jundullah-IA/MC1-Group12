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
                information: "Active"
            ),
            MountainInfo(
                title: "Weather",
                information: "Suhu malam hari 3˚C - 8˚C \n Suhu siang hari 15˚C - 20˚C "
            ),
            MountainInfo(
                title: "Mountain Fun Fact",
                information: "Gunung tertinggi di pulau jawa, \n Gunung ketiga tertinggi di indonesia \n Dijadikan latar shooting film 5cm "
                
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
                "Mountain Shoes",
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
        reqirements: [
            MountainRequirement(
                title: "Simaksi",
                items: [
                    "Weekdays : IDR 19.000",
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
        name: "Ciremai",
        location: "Kuningan, West java, Indonesia",
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
                information: "Active"
            ),
            MountainInfo(
                title: "Weather",
                information: "Suhu malam hari 6˚C - 10˚C"
            ),
            MountainInfo(
                title: "Mountain Fun Fact",
                information: "Gunung tertinggi di Jawa Barat \n Letusan Terakhir tahun 1938 \n Mempunyai kawah ganda di sisi barat dan sisi timur "
                
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
                "Mountain Shoes",
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
                    "3. Health Certificate"
                ]
            )
        ]
    ), // Ciremai
    Mountain(
        name: "Raung",
        location: "Bondowoso, East java, Indonesia",
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
                title: "Weather",
                information: "Suhu rata-rata 4˚C - 9˚C"
            ),
            MountainInfo(
                title: "Mountain Fun Fact",
                information: "Jalur paling ekstrem di pulau jawa \n Mempunyai kaldera terbesar di pulau jawa selebar 2KM \n Tidak ada sumber mata air selama pendakian"
                
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
                "Mountain Shoes",
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
                "Jumar",
                "Tali Prusik"
            
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
                    "Minimum : 1 Members + Guide"
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
        name: "Gede Pangrango",
        location: "Cianjur, West java, Indonesia",
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
                title: "Weather",
                information: "Suhu rata-rata 9˚C - 11˚C"
            ),
            MountainInfo(
                title: "Mountain Fun Fact",
                information: "Gunung yang paling banyak dikunjungi \n Gunung Gede Pangrango adalah dua gunung berbeda"
                
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
                "Mountain Shoes",
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
                    "2. Parental/Guardian Permission to climb for hiker under 17 years old",
                    "3. Health Certificate"
                ]
            )
        ]
    ), // Gede
    Mountain(
        name: "Papandayan",
        location: "Garut, West java, Indonesia",
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
                information: "Active"
            ),
            MountainInfo(
                title: "Weather",
                information: "Suhu rata-rata 11˚C - 12˚C"
            ),
            MountainInfo(
                title: "Mountain Fun Fact",
                information: "Sangat direkomendasikan untuk pendaki pemula \n Terdapat hutan mati"
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
                "Mountain Shoes",
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
                    "2. Parental/Guardian Permission to climb for hiker under 17 years old",
                    "3. Health Certificate"
                ]
            )
        ]
    ), // Papandayan
    Mountain(
        name: "Cikuray",
        location: "Garut, West java, Indonesia",
        height: 2821,
        image: "cikuray",
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
                title: "Weather",
                information: "Suhu rata-rata 14˚C - 15˚C"
            ),
            MountainInfo(
                title: "Mountain Fun Fact",
                information: "Disebut sebagai gerang kerajaan Padjajaran \n Terdapat babi ganas penghuni cikuray yang dipanggil Bagas oleh para pendaki"
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
                "Mountain Shoes",
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
                    "2. Parental/Guardian Permission to climb for hiker under 17 years old",
                    "3. Health Certificate"
                ]
            )
        ]
    ), // Cikuray---------------------------------
    Mountain(
        name: "Kerinci",
        location: "Jambi, West Sumatra, Indonesia",
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
                information: "Active"
            ),
            MountainInfo(
                title: "Weather",
                information: "Suhu rata-rata 6˚C - 9˚C"
            ),
            MountainInfo(
                title: "Mountain Fun Fact",
                information: "Gunung Tertinggi Disumatra \n Dilereng gunung kerinci masih ada harimau sumatra yang berkeliaran \n Mempunya pemandangan samudra hindia"
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
                "Mountain Shoes",
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
                    "2. Parental/Guardian Permission to climb for hiker under 17 years old",
                    "3. Health Certificate"
                ]
            )
        ]
    ), // Kerinci
    Mountain(
        name: "Jayawijaya",
        location: "Papua, Papua, Indonesia",
        height: 4884,
        image: "jaya-wijaya",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 200,
            pathways: 1
        ),
        informations: [
            MountainInfo(
                title: "Mountain Status",
                information: "Active"
            ),
            MountainInfo(
                title: "Weather",
                information: "Suhu rata-rata -4˚C - 3˚C"
            ),
            MountainInfo(
                title: "Mountain Fun Fact",
                information: "Memiliki salju abadi \n Memiliki gletser \n Mempunya nama lain Cartenz \n Masuk kedalam Seven Summits Dunia \n Gunung tertinggi di Indonesia \n Disebut sebagai pendakian dengan biaya termahal di dunia"
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
                "Sepatu es climbing",
                "Fully insulated boots",
                "Crampoon",
                "Gaiter",
                "Kapak es",
                "Carabiner",
                "Ascender",
                "Pellon",
                "Webbing",
                "Climbing Harness",
                "Carrier Bag 40 50 L",
                "Mountain Jacket",
                "Mountain Shoes",
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
        reqirements: [
            MountainRequirement(
                title: "Minimum Cost",
                items: [
                    "Domestic : IDR 40.000.000",
                    "Foreign: IDR 200.000.000"
                ]
            ),
            MountainRequirement(
                title: "Group Members",
                items: [
                    "Minimum : 3 Member + Guide + Porter"
                ]
            ),
            MountainRequirement(
                title: "Document",
                items: [
                    "Surat dari kantor Menpora",
                    "Surat dari Kapolri",
                    "Surat dari BIA-intelejen Indonesia",
                    "Surat dari Menhutbun/PKA",
                    "Federasi Panjat Tebing Indonesia (FPTI)",
                    "Surat rekomendasi dari Bakorstranasda",
                    "Surat rekomendasi dari Kapolda",
                    "Surat rekomendasi EPO",
                    "Surat dari PT Freeport Indonesia (PTFI)",
                    "Identity Card (KTP, Student Card, SIM, etc.)",
                    "Health Certificate"
                ]
            )
        ]
    ), // Jayawijaya
    Mountain(
        name: "Rinjani",
        location: "Lombok, West Nusa Tenggara, Indonesia",
        height: 3726,
        image: "rinjani",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 8700,
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
                "Mountain Shoes",
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
        image: "image",
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
                "Mountain Shoes",
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
        name: "Sindoro",
        location: "Temanggung, Central Java, Indonesia",
        height: 3136,
        image: "sindoro",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 8700,
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
                "Mountain Shoes",
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
        image: "lawu",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 8700,
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
                "Mountain Shoes",
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
        image: "merbabu",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 8700,
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
                "Mountain Shoes",
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
        image: "latimojong",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 8700,
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
                "Mountain Shoes",
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
        image: "kelud",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 8700,
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
                "Mountain Shoes",
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
        image: "arjuno",
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
                "Mountain Shoes",
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
        image: "argopuro",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 8700,
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
                "Mountain Shoes",
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
        image: "guntur",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 8700,
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
                "Mountain Shoes",
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
        image: "agung",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 8700,
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
                "Mountain Shoes",
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
        image: "unggaran",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 8700,
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
                "Mountain Shoes",
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
        image: "wilis",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 8700,
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
                "Mountain Shoes",
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
        image: "tambora",
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
                "Mountain Shoes",
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
        image: "geureudong",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 8700,
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
                "Mountain Shoes",
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
        image: "singgalang",
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
                "Mountain Shoes",
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
        image: "leuser",
        estimation: HikingEstimation(
            duration: "2D1N",
            distance: 8700,
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
                "Mountain Shoes",
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
