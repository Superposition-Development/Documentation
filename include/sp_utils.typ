#let cover_page(title, subtitle) = [
  #let title_spacing = 0.4em
  #page(header: "")[
    #align(center)[
      #par(spacing: title_spacing * 4)[
        #text(size: 3em, weight: "bold")[
          #title
        ]
      ]
      
      #par(spacing: title_spacing * 4)[
        #text(size: 1em)[
          #subtitle
        ]
      ]

      #v(1fr)
      Superposition Development
    ]
  ]
]