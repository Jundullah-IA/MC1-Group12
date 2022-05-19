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
        location: "Malang",
        height: 3676,
        image: "",
        estimation: HikingEstimation(
            duration: "3D2N",
            distance: 1620,
            pathways: 3
        ),
        informations: [
            MountainInfo(
                title: "Mountain Status",
                information: "Aktif"
            ),
            MountainInfo(
                title: "Weather",
                information: "Cenderung dingin"
            ),
            MountainInfo(
                title: "Weather",
                information: "Cenderung dingin"
            )
        ],
        essentials: MountainEssential(
            groupLogistic: [
                "Tenda",
                "Kompor",
                "Baju"
            ],
            personalLogistic: [
                "Sleeping Bag",
                "Matras"
            ]
        ),
        reqirements: [
            MountainRequirement(
                title: "Minimum Cost",
                items: [
                    "Local : IDR 10.000",
                    "Foreigner : IDR 20.000"
                ]
            ),
            MountainRequirement(
                title: "Document",
                items: [
                    "Local : IDR 10.000",
                    "Foreigner : IDR 20.000"
                ]
            )
        ]
    ), // Sumeru
    Mountain(
        name: "Rinjani",
        location: "Malang",
        height: 3676,
        image: "",
        estimation: HikingEstimation(
            duration: "3D2N",
            distance: 1620,
            pathways: 3
        ),
        informations: [
            MountainInfo(
                title: "Weather",
                information: "Cenderung dingin"
            ),
            MountainInfo(
                title: "Weather",
                information: "Cenderung dingin"
            )
        ],
        essentials: MountainEssential(
            groupLogistic: [
                "Tenda",
                "Kompor",
                "Baju"
            ],
            personalLogistic: [
                "Sleeping Bag",
                "Matras"
            ]
        ),
        reqirements: [
            MountainRequirement(
                title: "Minimum Cost",
                items: [
                    "Local : IDR 10.000",
                    "Foreigner : IDR 20.000"
                ]
            )
        ]
    ) // Rinjani
]
