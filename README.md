# ktulatex

`ktulatex` yra *neoficialus*, minimalistinis, reikalavimus atitinkantis KTU
informatikos bakalauro baigiamojo darbo rašto šablonas. 

Iš esmės tai yra įvairių egzistuojančių LaTeX šablonų
([KTU-LaTeX](https://github.com/Dominyk4s/KTU-LaTeX),
[ktu-latex-template](https://github.com/jakutis/ktu-latex-template),
[bachelor_thesis_template_vu_mif_se](https://github.com/LIKS/bachelor_thesis_template_vu_mif_se)) mišinys,
kuriame yra palikta tik tai, ko reikia.

[Sugeneruoto PDF pavyzdys](main.pdf)

## Kodėl?

- KTU dar vis (2024-06-02) neturi oficialaus LaTeX šablono
- Egzistuojantys LaTeX šablonai (pvz., [Dominyk4s](https://github.com/Dominyk4s/KTU-LaTeX),
  [jakutis](https://github.com/jakutis/ktu-latex-template)) neatitinka reikalavimų, yra
  pernelyg sudėtingi
- Techninio pobūdžio rašto darbus rengti Word redaktoriumi yra nepraktiška

## Naudojimosi instrukcija

Jei yra poreikis sugeneruot PDF su atnaujintu literatūros sąrašu:
```bash
biber main
pdflatex main
pdflatex main
```

Priešingu atveju PDF generuojamas vykdant `pdflatex main`.

## Svarbu

- Šablonas parengtas pagal dirbtinio intelekto programos reikalavimus, todėl skyriai, poskyriai 
gali nebūtinai tikti kitai studijų programai
- Bakalauro baigiamojo projekto užduoties kopiją reikia išsaugoti `problem_stm.pdf` pavadinimu.
Word užduoties šablonas paprastai pateikiamas Moodle platformos skiltyje
