String trait_data = r"""{
  "traits": [
    {
      "reference": "360° Vision",
      "page": "B34",
      "cost": 25
    },
    {
      "reference": "Absolute Direction",
      "page": "B34",
      "cost": 5
    },
    {
      "reference": "Absolute Direction",
      "cost": 10,
      "page": "B34",
      "alternateNames": [
        "^3D Spatial Sense$"
      ]
    },
    {
      "reference": "Absolute Timing",
      "page": "B35",
      "cost": 2
    },
    {
      "reference": "Absolute Timing",
      "page": "B35",
      "cost": 5,
      "alternateNames": [
        "^Chronolocation$"
      ]
    },
    {
      "reference": "Acute Senses",
      "page": "B35",
      "cost": 2,
      "type": "leveled",
      "alternateNames": [
        "^Acute Hearing$",
        "^Acute Taste and Smell$",
        "^Acute Touch$",
        "^Acute Vision$"
      ]
    },
    {
      "reference": "Affliction",
      "page": "B35",
      "cost": 10,
      "type": "leveled"
    },
    {
      "reference": "Altered Time Rate",
      "page": "B38",
      "cost": 100,
      "type": "leveled"
    },
    {
      "reference": "Alternate Identity",
      "page": "B39",
      "type": "categorized",
      "alternateNames": [
        "^Alternate Identity (?<spec>.+)$"
      ],
      "categories": [
        {
          "name": "Legal",
          "cost": 5,
          "items": ["Legal"]
        },
        {
          "name": "Illegal",
          "cost": 15,
          "items": ["Illegal"]
        }
      ]
    },
    {
      "reference": "Ambidexterity",
      "page": "B39",
      "cost": 5
    },
    {
      "reference": "Animal Empathy",
      "page": "B40",
      "cost": 5
    },
    {
      "reference": "Binding",
      "page": "B40",
      "type": "leveled",
      "cost": 2
    },
    {
      "reference": "Charisma",
      "cost": 5,
      "type": "leveled"
    },
    {
      "reference": "Control",
      "type": "categorizedLeveled",
      "alternateNames": [
        "^Control (?<spec>.+)$"
      ],
      "categories": [
        {
          "name": "Common",
          "cost": 20,
          "items": [
            "Earth",
            "Fire",
            "Gravity",
            "Light",
            "Metal",
            "Sound",
            "Water",
            "Wood"
          ]
        },
        {
          "name": "Occasional",
          "cost": 15,
          "items": [
            "Ceramics",
            "Ferrous Metals",
            "Ice",
            "Infrared",
            "Steam",
            "Stone",
            "Ultrasonics"
          ]
        },
        {
          "name": "Rare",
          "cost": 10,
          "items": [
            "Iron",
            "Salt",
            "Water",
            "Air",
            "Brine",
            "Paper",
            "Rubber"
          ]
        }
      ]
    },
    {
      "reference": "Create",
      "type": "categorizedLeveled",
      "alternateNames": [
        "^Create (?<spec>.+)$"
      ],
      "categories": [
        {
          "name": "Large",
          "cost": 40,
          "items": [
            "Solid",
            "Liquid",
            "Gas",
            "Organic",
            "Inorganic",
            "Electomagnetic Waves",
            "Physical Waves"
          ]
        },
        {
          "name": "Medium",
          "cost": 20,
          "items": [
            "Acid",
            "Biochemicals",
            "Drugs",
            "Earth",
            "Metal",
            "Electricity",
            "Sound",
            "Long-Wave EM",
            "Light",
            "Short-Wave EM",
            "Radiation"
          ]
        },
        {
          "name": "Small",
          "cost": 10,
          "items": [
            "Ferrous Metals",
            "Fire",
            "Rock",
            "Soil",
            "Fossil Fuels",
            "Wood",
            "Gamma Rays",
            "Infrared",
            "Ultrasonics",
            "Visible Light"
          ]
        },
        {
          "name": "Specific Item",
          "cost": 5,
          "items": [
            "Iron",
            "Salt",
            "Water",
            "Air",
            "Brine"
          ]
        }
      ]
    },
    {
      "reference": "Dark Vision",
      "cost": 25
    },
    {
      "reference": "Detect",
      "type": "categorizedLeveled",
      "alternateNames": [
        "^Detect (?<spec>.+)$"
      ],
      "categories": [
        {
          "name": "Very Common",
          "cost": 30,
          "items": [
            "Life",
            "Supernatural Phenomena and Beings",
            "Minerals",
            "Energy"
          ]
        },
        {
          "name": "Common",
          "cost": 20,
          "items": [
            "Humans",
            "Minds",
            "Supernatural Phenomena",
            "Supernatural Beings",
            "Metals",
            "Electromagnetic Fields"
          ]
        },
        {
          "name": "Occasional",
          "cost": 10,
          "items": [
            "Spellcasters",
            "Magic",
            "Undead",
            "Precious Metals",
            "Electric Fields",
            "Magnetic Fields",
            "Radar and Radio"
          ]
        },
        {
          "name": "Rare",
          "cost": 5,
          "items": [
            "Sorceresses",
            "Fire Magic",
            "Zombies",
            "Gold",
            "Radar",
            "Radio",
            "Gate",
            "Pass"
          ]
        }
      ]
    },
    {
      "reference": "Illusion",
      "cost": 25
    },
    {
      "reference": "Immunity to Sunburn",
      "cost": 1
    },
    {
      "reference": "Innate Attack",
      "type": "innateAttack",
      "alternateNames": [
        "^Burning Attack(?: .*)?$",
        "^Corrosion Attack(?: .*)?$",
        "^Crushing Attack(?: .*)?$",
        "^Cutting Attack(?: .*)?$",
        "^Fatigue Attack(?: .*)?$",
        "^Impaling Attack(?: .*)?$",
        "^Small Piercing Attack(?: .*)?$",
        "^Piercing Attack(?: .*)?$",
        "^Large Piercing Attack(?: .*)?$",
        "^Huge Piercing Attack(?: .*)?$",
        "^Toxic Attack(?: .*)?$"
      ]
    },
    {
      "reference": "Insubstantiality",
      "cost": 80
    },
    {
      "reference": "Jumper",
      "cost": 100
    },
    {
      "reference": "Magic Resistance",
      "cost": 2,
      "type": "leveled"
    },
    {
      "reference": "Mind Control",
      "cost": 50
    },
    {
      "reference": "Neutralize",
      "cost": 50,
      "alternateNames": [
        "^Neutralize (?<note>.+)$"
      ]
    },
    {
      "reference": "Night Vision",
      "cost": 1,
      "type": "leveled"
    },
    {
      "reference": "Obscure",
      "cost": 2,
      "type": "leveled",
      "isSpecialized": true,
      "alternateNames": [
        "^Obscure (?<spec>.+)$"
      ]
    },
    {
      "reference": "Payload",
      "cost": 1,
      "type": "leveled"
    },
    {
      "reference": "Penetrating Vision",
      "cost": 10,
      "type": "leveled"
    },
    {
      "reference": "Perk",
      "cost": 1,
      "isSpecialized": true
    },
    {
      "reference": "Permeation",
      "type": "categorized",
      "categories": [
        {
          "name": "Very Common",
          "cost": 40,
          "items": [
            "Earth",
            "Metal",
            "Stone",
            "Wood"
          ]
        },
        {
          "name": "Common",
          "cost": 20,
          "items": [
            "Concrete",
            "Plastic",
            "Steel"
          ]
        },
        {
          "name": "Occasional",
          "cost": 10,
          "items": [
            "Glass",
            "Ice",
            "Sand",
            "Aluminum",
            "Copper"
          ]
        },
        {
          "name": "Rare",
          "cost": 5,
          "items": [
            "Bone",
            "Flesh",
            "Paper"
          ]
        }
      ],
      "alternateNames": [
        "^Permeation (?<note>.+)$"
      ]
    },
    {
      "reference": "Protected Sense",
      "cost": 5,
      "alternateNames": [
        "^Protected (.*)?$"
      ]
    },
    {
      "reference": "Robust Vision",
      "cost": 1
    },
    {
      "reference": "Static",
      "cost": 30
    },
    {
      "reference": "Telescopic Vision",
      "cost": 5,
      "type": "leveled"
    },
    {
      "reference": "Temperature Control",
      "cost": 5,
      "type": "leveled"
    },
    {
      "reference": "Temperature Tolerance",
      "cost": 1,
      "type": "leveled"
    },
    {
      "reference": "Terror",
      "cost": 30
    },
    {
      "reference": "Warp",
      "cost": 100
    }
  ]
}""";
