# The Tensile Fabric of Society

Working paper — *"From Gap Theory to Game Theory: A Layered Model of the Tensile
Fabric of Society"* (R. Letts, P.Eng.) — with an interactive fragility map built
on the paper's equations.

| File | What |
|---|---|
| `index.html` | **Portal** — single self-contained page: paper, fragility map, PDF, figures. No dependencies. |
| `paper.html` | The white paper on its own (live fabric hero, full text, equations, figures, references) |
| `map.html` | The interactive fragility map (press / tear / polarize / anomie slider) |
| `assets/` | Figures, equation images, and the PDF |
| `.nojekyll` | Tells GitHub Pages to serve files as-is |

No build step, no dependencies — plain HTML/CSS/JS. Works from any static host,
and `index.html` also works opened directly from disk.

## Notes

- Sections 1–7 and 9–10 synthesize published, cited results; Section 8 (the
  composite Σ_soc) is original and unvalidated.
- The map's physics: Verlet membrane, per-tie bond energy w = shadow-of-future ×
  salience (Eq. 10), crack-tip weakening on every snapped tie (Eq. 8), live
  giant-component readout S against f_c = 1 − 1/⟨k⟩ (Eq. 7).
